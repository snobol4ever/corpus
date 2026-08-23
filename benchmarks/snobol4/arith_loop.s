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
.Lgvan5:                .string          "A"
.Lgvan6:                .string          "ZI"
.Lgvan7:                .string          "fixed_n"
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
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_lit_integer_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_keyword_assign_snobol4_α
.Lx240_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 3
                        mov              rdi, qword ptr [rip + .Lx241_0]
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
                        cmp              al, 104;                             jne   .Lx241_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx241_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_statement_end_α
.Lx241_0:               .quad            1
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
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_keyword_assign_snobol4_α
.Lx246_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lx247_0]
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
                        cmp              al, 104;                             jne   .Lx247_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lx247_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lx247_0:               .quad            0
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
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_unop_α
.Lx252_0:               .quad            1
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
                        mov              rdi, qword ptr [rip + .Lx254_0]
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
                        cmp              al, 104;                             jne   .Lx254_240
                        add              rsp, 16;                             jmp   n10_unop_β
.Lx254_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n12_statement_end_α
.Lx254_0:               .quad            10
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
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Lx259_0:               .quad            1000
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
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx265_0:               .quad            500
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
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_assign_α
.Lx271_0:               .quad            20
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
n25_statement_begin_β:  mov              r11, 26;                             jmp   n57_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_define_α:           mov              r11, 27
                        mov              rdi, qword ptr [rip + .Lx278_0]
                        mov              rsi, qword ptr [rip + .Lx278_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n28_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx278_0]
                        lea              rsi, [rip + ZBODY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_statement_end_α
n26_define_β:           mov              r11, 27;                             jmp   n25_statement_begin_β
.Lx278_0:               .quad            .Lx278_0_s
.Lx278_0_s:             .string          "ZBODY"
.Lx278_1:               .quad            .Lx278_1_s
.Lx278_1_s:             .string          "ZKN"
                                                                              jmp   .Lx279_245
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
                        cmp              rdx, 0;                              jbe   .Lx279_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # ZKN
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx279_41
.Lx279_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx279_41:              lea              rcx, [rip + ZBODY_γ]
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
                        cmp              rdx, 0;                              jbe   .Lx279_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx279_110
.Lx279_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx279_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx279_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx279_180
.Lx279_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx279_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx279_245:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    mov              r11, 28
                        mov              r10, 7;                              jmp   n57_statement_begin_α
#=======================================================================================================================
# ZBODY   A = 0
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:  mov              r11, 29
                        mov              r10, 8;                              jmp   n29_lit_integer_α
n28_statement_begin_β:  mov              r11, 29;                             jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      sub              rsp, 16
                        mov              r11, 30
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_assign_α
.Lx284_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              r11, 31
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # A
                        mov              qword ptr [r9 + 88], rdx;            jmp   n31_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:    mov              r11, 32
                        mov              r10, 8
                        add              rsp, 16;                             jmp   n32_statement_begin_α
#=======================================================================================================================
#         ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:  mov              r11, 33
                        mov              r10, 9;                              jmp   n33_lit_integer_α
n32_statement_begin_β:  mov              r11, 33;                             jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_assign_α
.Lx290_0:               .quad            1
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
# ZBL     A = A + 1
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:  mov              r11, 37
                        mov              r10, 10;                             jmp   n37_var_α
n36_statement_begin_β:  mov              r11, 37;                             jmp   n42_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              sub              rsp, 16
                        mov              r11, 38
                        mov              rax, qword ptr [r9 + 80]             # A
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n38_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      sub              rsp, 16
                        mov              r11, 39
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_binop_α
n38_lit_integer_β:      mov              r11, 39
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n36_statement_begin_β
.Lx297_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n39_binop_α:            sub              rsp, 16
                        mov              r11, 40
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx298_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx298_7
.Lx298_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx298_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx298_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx298_4
.Lx298_3:               movq             xmm0, rsi
.Lx298_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx298_7:                                                                     jmp   n40_assign_α
.Lx298_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx298_240
                        add              rsp, 16;                             jmp   n38_lit_integer_β
.Lx298_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n40_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:           mov              r11, 41
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # A
                        mov              qword ptr [r9 + 88], rdx;            jmp   n41_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_end_α:    mov              r11, 42
                        mov              r10, 10
                        add              rsp, 48;                             jmp   n42_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:  mov              r11, 43
                        mov              r10, 11;                             jmp   n43_var_α
n42_statement_begin_β:  mov              r11, 43;                             jmp   n53_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              sub              rsp, 16
                        mov              r11, 44
                        mov              rax, qword ptr [r9 + 96]             # ZI
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:              sub              rsp, 16
                        mov              r11, 45
                        mov              rax, qword ptr [r9 + 16]             # ZKN
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_coerce_numeric_α
n44_var_β:              mov              r11, 45
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n42_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n45_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 46
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx307_1
                        cmp              al, 3;                               jne   .Lx307_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx307_0
.Lx307_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_coerce_numeric_α
.Lx307_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n46_coerce_numeric_α
n45_coerce_numeric_β:   mov              r11, 46
                        add              rsp, 16;                             jmp   n44_var_β
#-----------------------------------------------------------------------------------------------------------------------
n46_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 47
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx309_1
                        cmp              al, 3;                               jne   .Lx309_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx309_0
.Lx309_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_cmp_test_α
.Lx309_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n47_cmp_test_α
n46_coerce_numeric_β:   mov              r11, 47
                        add              rsp, 16;                             jmp   n45_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n47_cmp_test_α:         sub              rsp, 16
                        mov              r11, 48
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx311_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx311_239
                        add              rsp, 16;                             jmp   n46_coerce_numeric_β
.Lx311_239:                                                                   jmp   n48_var_α
.Lx311_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx311_240
                        add              rsp, 16;                             jmp   n46_coerce_numeric_β
.Lx311_240:                                                                   jmp   n48_var_α
n47_cmp_test_β:         mov              r11, 48
                        add              rsp, 16;                             jmp   n46_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:              sub              rsp, 16
                        mov              r11, 49
                        mov              rax, qword ptr [r9 + 96]             # ZI
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n49_lit_integer_α
n48_var_β:              mov              r11, 49
                        add              rsp, 16;                             jmp   n47_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:      sub              rsp, 16
                        mov              r11, 50
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_binop_α
n49_lit_integer_β:      mov              r11, 50
                        add              rsp, 16;                             jmp   n48_var_β
.Lx313_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n50_binop_α:            sub              rsp, 16
                        mov              r11, 51
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx314_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx314_7
.Lx314_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx314_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx314_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx314_4
.Lx314_3:               movq             xmm0, rsi
.Lx314_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx314_7:                                                                     jmp   n51_assign_α
.Lx314_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx314_240
                        add              rsp, 16;                             jmp   n49_lit_integer_β
.Lx314_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n51_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              r11, 52
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZI
                        mov              qword ptr [r9 + 104], rdx;           jmp   n52_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    mov              r11, 53
                        mov              r10, 11
                        add              rsp, 128;                            jmp   n36_statement_begin_α
#=======================================================================================================================
#         ZBODY = A                                       :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:  mov              r11, 54
                        mov              r10, 12;                             jmp   n54_var_α
n53_statement_begin_β:  mov              r11, 54;                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              sub              rsp, 16
                        mov              r11, 55
                        mov              rax, qword ptr [r9 + 80]             # A
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:           mov              r11, 56
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ZBODY
                        mov              qword ptr [r9 + 8], rdx;             jmp   n56_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    mov              r11, 57
                        mov              r10, 12
                        add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 13, line 16: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:  mov              r11, 58
                        mov              r10, 13;                             jmp   n58_statement_end_α
n57_statement_begin_β:  mov              r11, 58;                             jmp   n59_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:    mov              r11, 59
                        mov              r10, 13;                             jmp   n59_statement_begin_α
#=======================================================================================================================
#         <stmt 14, line 64: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_begin_α:  mov              r11, 60
                        mov              r10, 14;                             jmp   n60_lit_string_α
n59_statement_begin_β:  mov              r11, 60;                             jmp   n66_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       sub              rsp, 16
                        mov              r11, 61
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n61_var_α
.Lx330_0:               .quad            .Lx330_0_s
.Lx330_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              sub              rsp, 16
                        mov              r11, 62
                        mov              rax, qword ptr [r9 + 32]             # ZCHK
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n62_call_α
n61_var_β:              mov              r11, 62
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n59_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n62_call_α:             sub              rsp, 16
                        mov              r11, 63
                        lea              rcx, [rip + .Lsig333z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig333z:              .quad            1
                        .quad            .Lx333_2
                        .quad            .Lx333_2
                        .quad            16
.Lx333_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx333_29
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
.Lx333_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx333_240
                        add              rsp, 16;                             jmp   n61_var_β
.Lx333_240:                                                                   jmp   n63_binop_α
n62_call_β:             mov              r11, 63;                             jmp   n61_var_β
.Lx333_0:               .quad            .Lx333_0_s
.Lx333_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n63_binop_α:            sub              rsp, 16
                        mov              r11, 64
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n64_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:           mov              r11, 65
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n65_statement_end_α
.Lx335_0:               .quad            .Lx335_0_s
.Lx335_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_end_α:    mov              r11, 66
                        mov              r10, 14
                        add              rsp, 64;                             jmp   n66_statement_begin_α
#=======================================================================================================================
#         <stmt 15, line 65: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_begin_α:  mov              r11, 67
                        mov              r10, 15;                             jmp   n67_var_α
n66_statement_begin_β:  mov              r11, 67;                             jmp   n70_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              sub              rsp, 16
                        mov              r11, 68
                        mov              rdi, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx340_240
                        add              rsp, 16;                             jmp   n66_statement_begin_β
.Lx340_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_assign_α
.Lx340_0:               .quad            .Lx340_0_s
.Lx340_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:           mov              r11, 69
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # fixed_n
                        mov              qword ptr [r9 + 120], rdx;           jmp   n69_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_end_α:    mov              r11, 70
                        mov              r10, 15
                        add              rsp, 16;                             jmp   n173_statement_begin_α
#=======================================================================================================================
#         <stmt 16, line 66: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_begin_α:  mov              r11, 71
                        mov              r10, 16;                             jmp   n71_var_α
n70_statement_begin_β:  mov              r11, 71;                             jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              sub              rsp, 16
                        mov              r11, 72
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      sub              rsp, 16
                        mov              r11, 73
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx347_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_binop_α
n72_lit_integer_β:      mov              r11, 73
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n70_statement_begin_β
.Lx347_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n73_binop_α:            sub              rsp, 16
                        mov              r11, 74
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx348_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx348_7
.Lx348_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx348_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx348_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx348_4
.Lx348_3:               movq             xmm0, rsi
.Lx348_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx348_7:                                                                     jmp   n74_assign_α
.Lx348_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx348_240
                        add              rsp, 16;                             jmp   n72_lit_integer_β
.Lx348_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n74_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              r11, 75
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n75_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    mov              r11, 76
                        mov              r10, 16
                        add              rsp, 48;                             jmp   n76_statement_begin_α
#=======================================================================================================================
#         <stmt 17, line 67: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:  mov              r11, 77
                        mov              r10, 17;                             jmp   n77_var_α
n76_statement_begin_β:  mov              r11, 77;                             jmp   n82_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              sub              rsp, 16
                        mov              r11, 78
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n78_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:      sub              rsp, 16
                        mov              r11, 79
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx355_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_binop_α
n78_lit_integer_β:      mov              r11, 79
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n76_statement_begin_β
.Lx355_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n79_binop_α:            sub              rsp, 16
                        mov              r11, 80
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx356_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx356_7
.Lx356_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx356_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx356_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx356_4
.Lx356_3:               movq             xmm0, rsi
.Lx356_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx356_7:                                                                     jmp   n80_assign_α
.Lx356_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx356_240
                        add              rsp, 16;                             jmp   n78_lit_integer_β
.Lx356_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n80_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:           mov              r11, 81
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBUD
                        mov              qword ptr [r9 + 56], rdx;            jmp   n81_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_end_α:    mov              r11, 82
                        mov              r10, 17
                        add              rsp, 48;                             jmp   n82_statement_begin_α
#=======================================================================================================================
#         <stmt 18, line 68: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_begin_α:  mov              r11, 83
                        mov              r10, 18;                             jmp   n83_var_α
n82_statement_begin_β:  mov              r11, 83;                             jmp   n87_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              sub              rsp, 16
                        mov              r11, 84
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n84_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       sub              rsp, 16
                        mov              r11, 85
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_differ_α
n84_lit_string_β:       mov              r11, 85
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n82_statement_begin_β
.Lx363_0:               .quad            .Lx363_0_s
.Lx363_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n85_differ_α:           sub              rsp, 16
                        mov              r11, 86
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
                        test             eax, eax;                            je    .Lx365_240
                        add              rsp, 16;                             jmp   n84_lit_string_β
.Lx365_240:                                                                   jmp   n86_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:    mov              r11, 87
                        mov              r10, 18
                        add              rsp, 48;                             jmp   n116_statement_begin_α
#=======================================================================================================================
#         <stmt 19, line 69: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:  mov              r11, 88
                        mov              r10, 19;                             jmp   n88_lit_integer_α
n87_statement_begin_β:  mov              r11, 88;                             jmp   n91_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:      sub              rsp, 16
                        mov              r11, 89
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n89_assign_α
.Lx370_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:           mov              r11, 90
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZK
                        mov              qword ptr [r9 + 136], rdx;           jmp   n90_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_end_α:    mov              r11, 91
                        mov              r10, 19
                        add              rsp, 16;                             jmp   n91_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 20, line 70: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_begin_α:  mov              r11, 92
                        mov              r10, 20;                             jmp   n92_call_α
n91_statement_begin_β:  mov              r11, 92;                             jmp   n95_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n92_call_α:             sub              rsp, 16
                        mov              r11, 93
                        .section         .rodata
.Lrkfnzd377:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd377]
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
                        cmp              al, 104;                             jne   .Lx376_240
                        add              rsp, 16;                             jmp   n91_statement_begin_β
.Lx376_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n93_assign_α
n92_call_β:             mov              r11, 93
                        add              rsp, 16;                             jmp   n91_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_α:           mov              r11, 94
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZT
                        mov              qword ptr [r9 + 152], rdx;           jmp   n94_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_end_α:    mov              r11, 95
                        mov              r10, 20
                        add              rsp, 16;                             jmp   n95_statement_begin_α
#=======================================================================================================================
#         <stmt 21, line 71: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_begin_α:  mov              r11, 96
                        mov              r10, 21;                             jmp   n96_var_α
n95_statement_begin_β:  mov              r11, 96;                             jmp   n99_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              sub              rsp, 16
                        mov              r11, 97
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_call_α
#-----------------------------------------------------------------------------------------------------------------------
n97_call_α:             sub              rsp, 16
                        mov              r11, 98
                        lea              rcx, [rip + .Lsig385z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig385z:              .quad            1
                        .quad            .Lx385_2
                        .quad            .Lx385_2
                        .quad            16
.Lx385_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx385_29
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
.Lx385_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx385_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n95_statement_begin_β
.Lx385_240:                                                                   jmp   n98_statement_end_α
n97_call_β:             mov              r11, 98;                             jmp   n95_statement_begin_β
.Lx385_0:               .quad            .Lx385_0_s
.Lx385_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:    mov              r11, 99
                        mov              r10, 21
                        add              rsp, 32;                             jmp   n99_statement_begin_α
#=======================================================================================================================
#         <stmt 22, line 72: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_begin_α:  mov              r11, 100
                        mov              r10, 22;                             jmp   n100_call_α
n99_statement_begin_β:  mov              r11, 100;                            jmp   n105_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n100_call_α:            sub              rsp, 16
                        mov              r11, 101
                        .section         .rodata
.Lrkfnzd391:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd391]
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
                        cmp              al, 104;                             jne   .Lx390_240
                        add              rsp, 16;                             jmp   n99_statement_begin_β
.Lx390_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_var_α
n100_call_β:            mov              r11, 101
                        add              rsp, 16;                             jmp   n99_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             sub              rsp, 16
                        mov              r11, 102
                        mov              rax, qword ptr [r9 + 144]            # ZT
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_binop_α
n101_var_β:             mov              r11, 102
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n99_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n102_binop_α:           sub              rsp, 16
                        mov              r11, 103
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx393_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx393_7
.Lx393_2:               and              edx, 1;                              jz    .Lx393_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx393_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx393_4
.Lx393_3:               movq             xmm0, rsi
.Lx393_4:               cmp              cl, 5;                               je    .Lx393_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx393_6
.Lx393_5:               movq             xmm1, rdi
.Lx393_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx393_7:                                                                     jmp   n103_assign_α
.Lx393_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx393_240
                        add              rsp, 16;                             jmp   n101_var_β
.Lx393_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n103_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:          mov              r11, 104
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZE
                        mov              qword ptr [r9 + 168], rdx;           jmp   n104_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_end_α:   mov              r11, 105
                        mov              r10, 22
                        add              rsp, 48;                             jmp   n105_statement_begin_α
#=======================================================================================================================
#         <stmt 23, line 73: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_begin_α: mov              r11, 106
                        mov              r10, 23;                             jmp   n106_var_α
n105_statement_begin_β: mov              r11, 106;                            jmp   n116_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             sub              rsp, 16
                        mov              r11, 107
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_var_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:             sub              rsp, 16
                        mov              r11, 108
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n108_coerce_numeric_α
n107_var_β:             mov              r11, 108
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n105_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n108_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 109
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx402_1
                        cmp              al, 3;                               jne   .Lx402_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx402_0
.Lx402_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n109_coerce_numeric_α
.Lx402_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n109_coerce_numeric_α
n108_coerce_numeric_β:  mov              r11, 109
                        add              rsp, 16;                             jmp   n107_var_β
#-----------------------------------------------------------------------------------------------------------------------
n109_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 110
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx404_1
                        cmp              al, 3;                               jne   .Lx404_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx404_0
.Lx404_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n110_cmp_test_α
.Lx404_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n110_cmp_test_α
n109_coerce_numeric_β:  mov              r11, 110
                        add              rsp, 16;                             jmp   n108_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n110_cmp_test_α:        sub              rsp, 16
                        mov              r11, 111
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx406_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx406_239
                        add              rsp, 16;                             jmp   n109_coerce_numeric_β
.Lx406_239:                                                                   jmp   n111_var_α
.Lx406_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx406_240
                        add              rsp, 16;                             jmp   n109_coerce_numeric_β
.Lx406_240:                                                                   jmp   n111_var_α
n110_cmp_test_β:        mov              r11, 111
                        add              rsp, 16;                             jmp   n109_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             sub              rsp, 16
                        mov              r11, 112
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_lit_integer_α
n111_var_β:             mov              r11, 112
                        add              rsp, 16;                             jmp   n110_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:     sub              rsp, 16
                        mov              r11, 113
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx408_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n113_binop_α
n112_lit_integer_β:     mov              r11, 113
                        add              rsp, 16;                             jmp   n111_var_β
.Lx408_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n113_binop_α:           sub              rsp, 16
                        mov              r11, 114
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx409_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx409_7
.Lx409_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx409_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lx409_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx409_4
.Lx409_3:               movq             xmm0, rsi
.Lx409_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx409_7:                                                                     jmp   n114_assign_α
.Lx409_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx409_240
                        add              rsp, 16;                             jmp   n112_lit_integer_β
.Lx409_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n114_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n114_assign_α:          mov              r11, 115
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZK
                        mov              qword ptr [r9 + 136], rdx;           jmp   n115_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_end_α:   mov              r11, 116
                        mov              r10, 23
                        add              rsp, 128;                            jmp   n91_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 24, line 74: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_begin_α: mov              r11, 117
                        mov              r10, 24;                             jmp   n117_call_α
n116_statement_begin_β: mov              r11, 117;                            jmp   n120_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n117_call_α:            sub              rsp, 16
                        mov              r11, 118
                        .section         .rodata
.Lrkfnzd416:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd416]
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
                        cmp              al, 104;                             jne   .Lx415_240
                        add              rsp, 16;                             jmp   n116_statement_begin_β
.Lx415_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_assign_α
n117_call_β:            mov              r11, 118
                        add              rsp, 16;                             jmp   n116_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n118_assign_α:          mov              r11, 119
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZT
                        mov              qword ptr [r9 + 152], rdx;           jmp   n119_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n119_statement_end_α:   mov              r11, 120
                        mov              r10, 24
                        add              rsp, 16;                             jmp   n120_statement_begin_α
#=======================================================================================================================
#         <stmt 25, line 75: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_begin_α: mov              r11, 121
                        mov              r10, 25;                             jmp   n121_var_α
n120_statement_begin_β: mov              r11, 121;                            jmp   n126_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:             sub              rsp, 16
                        mov              r11, 122
                        mov              rax, qword ptr [r9 + 144]            # ZT
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:             sub              rsp, 16
                        mov              r11, 123
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n123_binop_α
n122_var_β:             mov              r11, 123
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n120_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n123_binop_α:           sub              rsp, 16
                        mov              r11, 124
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx424_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx424_7
.Lx424_2:               and              edx, 1;                              jz    .Lx424_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx424_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx424_4
.Lx424_3:               movq             xmm0, rsi
.Lx424_4:               cmp              cl, 5;                               je    .Lx424_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx424_6
.Lx424_5:               movq             xmm1, rdi
.Lx424_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx424_7:                                                                     jmp   n124_assign_α
.Lx424_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx424_240
                        add              rsp, 16;                             jmp   n122_var_β
.Lx424_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n124_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:          mov              r11, 125
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZD
                        mov              qword ptr [r9 + 184], rdx;           jmp   n125_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_end_α:   mov              r11, 126
                        mov              r10, 25
                        add              rsp, 48;                             jmp   n126_statement_begin_α
#=======================================================================================================================
#         <stmt 26, line 76: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_begin_α: mov              r11, 127
                        mov              r10, 26;                             jmp   n127_lit_integer_α
n126_statement_begin_β: mov              r11, 127;                            jmp   n130_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:     sub              rsp, 16
                        mov              r11, 128
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n128_assign_α
.Lx430_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n128_assign_α:          mov              r11, 129
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZN
                        mov              qword ptr [r9 + 200], rdx;           jmp   n129_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_end_α:   mov              r11, 130
                        mov              r10, 26
                        add              rsp, 16;                             jmp   n130_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 27, line 77: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_begin_α: mov              r11, 131
                        mov              r10, 27;                             jmp   n131_var_α
n130_statement_begin_β: mov              r11, 131;                            jmp   n134_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:             sub              rsp, 16
                        mov              r11, 132
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n132_call_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_α:            sub              rsp, 16
                        mov              r11, 133
                        lea              rcx, [rip + .Lsig438z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig438z:              .quad            1
                        .quad            .Lx438_2
                        .quad            .Lx438_2
                        .quad            16
.Lx438_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx438_29
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
.Lx438_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx438_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n130_statement_begin_β
.Lx438_240:                                                                   jmp   n133_statement_end_α
n132_call_β:            mov              r11, 133;                            jmp   n130_statement_begin_β
.Lx438_0:               .quad            .Lx438_0_s
.Lx438_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n133_statement_end_α:   mov              r11, 134
                        mov              r10, 27
                        add              rsp, 32;                             jmp   n134_statement_begin_α
#=======================================================================================================================
#         <stmt 28, line 78: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_begin_α: mov              r11, 135
                        mov              r10, 28;                             jmp   n135_var_α
n134_statement_begin_β: mov              r11, 135;                            jmp   n140_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:             sub              rsp, 16
                        mov              r11, 136
                        mov              rax, qword ptr [r9 + 192]            # ZN
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n136_var_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:             sub              rsp, 16
                        mov              r11, 137
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n137_binop_α
n136_var_β:             mov              r11, 137
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n134_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n137_binop_α:           sub              rsp, 16
                        mov              r11, 138
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx445_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx445_7
.Lx445_2:               and              edx, 1;                              jz    .Lx445_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx445_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx445_4
.Lx445_3:               movq             xmm0, rsi
.Lx445_4:               cmp              cl, 5;                               je    .Lx445_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx445_6
.Lx445_5:               movq             xmm1, rdi
.Lx445_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx445_7:                                                                     jmp   n138_assign_α
.Lx445_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx445_240
                        add              rsp, 16;                             jmp   n136_var_β
.Lx445_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n138_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n138_assign_α:          mov              r11, 139
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZN
                        mov              qword ptr [r9 + 200], rdx;           jmp   n139_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_end_α:   mov              r11, 140
                        mov              r10, 28
                        add              rsp, 48;                             jmp   n140_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 79: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_begin_α: mov              r11, 141
                        mov              r10, 29;                             jmp   n141_call_α
n140_statement_begin_β: mov              r11, 141;                            jmp   n147_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_α:            sub              rsp, 16
                        mov              r11, 142
                        .section         .rodata
.Lrkfnzd452:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd452]
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
                        cmp              al, 104;                             jne   .Lx451_240
                        add              rsp, 16;                             jmp   n140_statement_begin_β
.Lx451_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_var_α
n141_call_β:            mov              r11, 142
                        add              rsp, 16;                             jmp   n140_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             sub              rsp, 16
                        mov              r11, 143
                        mov              rax, qword ptr [r9 + 176]            # ZD
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_coerce_numeric_α
n142_var_β:             mov              r11, 143
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n140_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n143_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 144
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              al, 5;                               je    .Lx455_1
                        cmp              al, 3;                               jne   .Lx455_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lx455_0
.Lx455_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n144_coerce_numeric_α
.Lx455_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n144_coerce_numeric_α
n143_coerce_numeric_β:  mov              r11, 144
                        add              rsp, 16;                             jmp   n142_var_β
#-----------------------------------------------------------------------------------------------------------------------
n144_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 145
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx457_1
                        cmp              al, 3;                               jne   .Lx457_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              al, 3;                               jne   .Lx457_0
.Lx457_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n145_cmp_test_α
.Lx457_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n145_cmp_test_α
n144_coerce_numeric_β:  mov              r11, 145
                        add              rsp, 16;                             jmp   n143_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n145_cmp_test_α:        sub              rsp, 16
                        mov              r11, 146
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx459_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx459_239
                        add              rsp, 16;                             jmp   n144_coerce_numeric_β
.Lx459_239:                                                                   jmp   n146_statement_end_α
.Lx459_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx459_240
                        add              rsp, 16;                             jmp   n144_coerce_numeric_β
.Lx459_240:                                                                   jmp   n146_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_end_α:   mov              r11, 147
                        mov              r10, 29
                        add              rsp, 80;                             jmp   n130_statement_begin_α
#=======================================================================================================================
#         <stmt 30, line 80: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_begin_α: mov              r11, 148
                        mov              r10, 30;                             jmp   n148_call_α
n147_statement_begin_β: mov              r11, 148;                            jmp   n153_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_α:            sub              rsp, 16
                        mov              r11, 149
                        .section         .rodata
.Lrkfnzd465:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd465]
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
                        cmp              al, 104;                             jne   .Lx464_240
                        add              rsp, 16;                             jmp   n147_statement_begin_β
.Lx464_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_var_α
n148_call_β:            mov              r11, 149
                        add              rsp, 16;                             jmp   n147_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:             sub              rsp, 16
                        mov              r11, 150
                        mov              rax, qword ptr [r9 + 144]            # ZT
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n150_binop_α
n149_var_β:             mov              r11, 150
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n147_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n150_binop_α:           sub              rsp, 16
                        mov              r11, 151
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx467_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx467_7
.Lx467_2:               and              edx, 1;                              jz    .Lx467_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx467_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx467_4
.Lx467_3:               movq             xmm0, rsi
.Lx467_4:               cmp              cl, 5;                               je    .Lx467_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx467_6
.Lx467_5:               movq             xmm1, rdi
.Lx467_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx467_7:                                                                     jmp   n151_assign_α
.Lx467_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx467_240
                        add              rsp, 16;                             jmp   n149_var_β
.Lx467_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n151_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n151_assign_α:          mov              r11, 152
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZE
                        mov              qword ptr [r9 + 168], rdx;           jmp   n152_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_end_α:   mov              r11, 153
                        mov              r10, 30
                        add              rsp, 48;                             jmp   n153_statement_begin_α
#=======================================================================================================================
#         <stmt 31, line 81: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_begin_α: mov              r11, 154
                        mov              r10, 31;                             jmp   n154_lit_string_α
n153_statement_begin_β: mov              r11, 154;                            jmp   n159_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:      sub              rsp, 16
                        mov              r11, 155
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n155_var_α
.Lx473_0:               .quad            .Lx473_0_s
.Lx473_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n155_var_α:             sub              rsp, 16
                        mov              r11, 156
                        mov              rax, qword ptr [r9 + 192]            # ZN
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n156_binop_α
n155_var_β:             mov              r11, 156
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n153_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n156_binop_α:           sub              rsp, 16
                        mov              r11, 157
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n157_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n157_assign_α:          mov              r11, 158
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n158_statement_end_α
.Lx476_0:               .quad            .Lx476_0_s
.Lx476_0_s:             .string          "OUTPUT"
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
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx481_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n161_var_α
.Lx481_0:               .quad            .Lx481_0_s
.Lx481_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:             sub              rsp, 16
                        mov              r11, 162
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n163_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n163_assign_α:          mov              r11, 164
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n164_statement_end_α
.Lx484_0:               .quad            .Lx484_0_s
.Lx484_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_end_α:   mov              r11, 165
                        mov              r10, 32
                        add              rsp, 48;                             jmp   n165_statement_begin_α
#=======================================================================================================================
#         <stmt 33, line 83: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_begin_α: mov              r11, 166
                        mov              r10, 33;                             jmp   n166_lit_string_α
n165_statement_begin_β: mov              r11, 166;                            jmp   n233_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:      sub              rsp, 16
                        mov              r11, 167
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx489_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_var_α
.Lx489_0:               .quad            .Lx489_0_s
.Lx489_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:             sub              rsp, 16
                        mov              r11, 168
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n168_lit_integer_α
n167_var_β:             mov              r11, 168
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n165_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_integer_α:     sub              rsp, 16
                        mov              r11, 169
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n169_binop_α
n168_lit_integer_β:     mov              r11, 169
                        add              rsp, 16;                             jmp   n167_var_β
.Lx491_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n169_binop_α:           sub              rsp, 16
                        mov              r11, 170
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx492_240
                        add              rsp, 16;                             jmp   n168_lit_integer_β
.Lx492_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n170_binop_α
n169_binop_β:           mov              r11, 170
                        add              rsp, 16;                             jmp   n168_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n170_binop_α:           sub              rsp, 16
                        mov              r11, 171
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n171_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n171_assign_α:          mov              r11, 172
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n172_statement_end_α
.Lx494_0:               .quad            .Lx494_0_s
.Lx494_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_end_α:   mov              r11, 173
                        mov              r10, 33
                        add              rsp, 80;                             jmp   n233_statement_begin_α
#=======================================================================================================================
# ZFIXRUN  <stmt 34, line 84: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_begin_α: mov              r11, 174
                        mov              r10, 34;                             jmp   n174_var_α
n173_statement_begin_β: mov              r11, 174;                            jmp   n178_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n174_var_α:             sub              rsp, 16
                        mov              r11, 175
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n175_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:      sub              rsp, 16
                        mov              r11, 176
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n176_differ_α
n175_lit_string_β:      mov              r11, 176
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n173_statement_begin_β
.Lx500_0:               .quad            .Lx500_0_s
.Lx500_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n176_differ_α:          sub              rsp, 16
                        mov              r11, 177
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
                        test             eax, eax;                            je    .Lx502_240
                        add              rsp, 16;                             jmp   n175_lit_string_β
.Lx502_240:                                                                   jmp   n177_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_end_α:   mov              r11, 178
                        mov              r10, 34
                        add              rsp, 48;                             jmp   n182_statement_begin_α
#=======================================================================================================================
#         <stmt 35, line 85: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_begin_α: mov              r11, 179
                        mov              r10, 35;                             jmp   n179_var_α
n178_statement_begin_β: mov              r11, 179;                            jmp   n182_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n179_var_α:             sub              rsp, 16
                        mov              r11, 180
                        mov              rax, qword ptr [r9 + 112]            # fixed_n
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n180_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n180_assign_α:          mov              r11, 181
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZK
                        mov              qword ptr [r9 + 136], rdx;           jmp   n181_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_end_α:   mov              r11, 182
                        mov              r10, 35
                        add              rsp, 16;                             jmp   n182_statement_begin_α
#=======================================================================================================================
# ZFB  <stmt 36, line 86: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_begin_α: mov              r11, 183
                        mov              r10, 36;                             jmp   n183_call_α
n182_statement_begin_β: mov              r11, 183;                            jmp   n186_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n183_call_α:            sub              rsp, 16
                        mov              r11, 184
                        .section         .rodata
.Lrkfnzd514:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd514]
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
                        cmp              al, 104;                             jne   .Lx513_240
                        add              rsp, 16;                             jmp   n182_statement_begin_β
.Lx513_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n184_assign_α
n183_call_β:            mov              r11, 184
                        add              rsp, 16;                             jmp   n182_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n184_assign_α:          mov              r11, 185
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZT
                        mov              qword ptr [r9 + 152], rdx;           jmp   n185_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n185_statement_end_α:   mov              r11, 186
                        mov              r10, 36
                        add              rsp, 16;                             jmp   n186_statement_begin_α
#=======================================================================================================================
#         <stmt 37, line 87: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_begin_α: mov              r11, 187
                        mov              r10, 37;                             jmp   n187_lit_integer_α
n186_statement_begin_β: mov              r11, 187;                            jmp   n190_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_integer_α:     sub              rsp, 16
                        mov              r11, 188
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n188_assign_α
.Lx520_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n188_assign_α:          mov              r11, 189
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZN
                        mov              qword ptr [r9 + 200], rdx;           jmp   n189_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_end_α:   mov              r11, 190
                        mov              r10, 37
                        add              rsp, 16;                             jmp   n190_statement_begin_α
#=======================================================================================================================
# ZFL  <stmt 38, line 88: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_begin_α: mov              r11, 191
                        mov              r10, 38;                             jmp   n191_var_α
n190_statement_begin_β: mov              r11, 191;                            jmp   n194_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:             sub              rsp, 16
                        mov              r11, 192
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n192_call_α
#-----------------------------------------------------------------------------------------------------------------------
n192_call_α:            sub              rsp, 16
                        mov              r11, 193
                        lea              rcx, [rip + .Lsig528z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig528z:              .quad            1
                        .quad            .Lx528_2
                        .quad            .Lx528_2
                        .quad            16
.Lx528_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx528_29
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
.Lx528_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx528_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n190_statement_begin_β
.Lx528_240:                                                                   jmp   n193_statement_end_α
n192_call_β:            mov              r11, 193;                            jmp   n190_statement_begin_β
.Lx528_0:               .quad            .Lx528_0_s
.Lx528_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n193_statement_end_α:   mov              r11, 194
                        mov              r10, 38
                        add              rsp, 32;                             jmp   n194_statement_begin_α
#=======================================================================================================================
#         <stmt 39, line 89: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_begin_α: mov              r11, 195
                        mov              r10, 39;                             jmp   n195_var_α
n194_statement_begin_β: mov              r11, 195;                            jmp   n200_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:             sub              rsp, 16
                        mov              r11, 196
                        mov              rax, qword ptr [r9 + 192]            # ZN
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n196_var_α
#-----------------------------------------------------------------------------------------------------------------------
n196_var_α:             sub              rsp, 16
                        mov              r11, 197
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n197_binop_α
n196_var_β:             mov              r11, 197
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n194_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n197_binop_α:           sub              rsp, 16
                        mov              r11, 198
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx535_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx535_7
.Lx535_2:               and              edx, 1;                              jz    .Lx535_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx535_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx535_4
.Lx535_3:               movq             xmm0, rsi
.Lx535_4:               cmp              cl, 5;                               je    .Lx535_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx535_6
.Lx535_5:               movq             xmm1, rdi
.Lx535_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx535_7:                                                                     jmp   n198_assign_α
.Lx535_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx535_240
                        add              rsp, 16;                             jmp   n196_var_β
.Lx535_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n198_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n198_assign_α:          mov              r11, 199
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZN
                        mov              qword ptr [r9 + 200], rdx;           jmp   n199_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_end_α:   mov              r11, 200
                        mov              r10, 39
                        add              rsp, 48;                             jmp   n200_statement_begin_α
#=======================================================================================================================
#         <stmt 40, line 90: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_begin_α: mov              r11, 201
                        mov              r10, 40;                             jmp   n201_var_α
n200_statement_begin_β: mov              r11, 201;                            jmp   n207_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:             sub              rsp, 16
                        mov              r11, 202
                        mov              rax, qword ptr [r9 + 192]            # ZN
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_var_α
#-----------------------------------------------------------------------------------------------------------------------
n202_var_α:             sub              rsp, 16
                        mov              r11, 203
                        mov              rax, qword ptr [r9 + 112]            # fixed_n
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n203_coerce_numeric_α
n202_var_β:             mov              r11, 203
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n200_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n203_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 204
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx544_1
                        cmp              al, 3;                               jne   .Lx544_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx544_0
.Lx544_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n204_coerce_numeric_α
.Lx544_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n204_coerce_numeric_α
n203_coerce_numeric_β:  mov              r11, 204
                        add              rsp, 16;                             jmp   n202_var_β
#-----------------------------------------------------------------------------------------------------------------------
n204_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 205
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx546_1
                        cmp              al, 3;                               jne   .Lx546_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx546_0
.Lx546_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n205_cmp_test_α
.Lx546_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n205_cmp_test_α
n204_coerce_numeric_β:  mov              r11, 205
                        add              rsp, 16;                             jmp   n203_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n205_cmp_test_α:        sub              rsp, 16
                        mov              r11, 206
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx548_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx548_239
                        add              rsp, 16;                             jmp   n204_coerce_numeric_β
.Lx548_239:                                                                   jmp   n206_statement_end_α
.Lx548_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx548_240
                        add              rsp, 16;                             jmp   n204_coerce_numeric_β
.Lx548_240:                                                                   jmp   n206_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_end_α:   mov              r11, 207
                        mov              r10, 40
                        add              rsp, 80;                             jmp   n190_statement_begin_α
#=======================================================================================================================
#         <stmt 41, line 91: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n207_statement_begin_α: mov              r11, 208
                        mov              r10, 41;                             jmp   n208_call_α
n207_statement_begin_β: mov              r11, 208;                            jmp   n213_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n208_call_α:            sub              rsp, 16
                        mov              r11, 209
                        .section         .rodata
.Lrkfnzd554:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd554]
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
                        cmp              al, 104;                             jne   .Lx553_240
                        add              rsp, 16;                             jmp   n207_statement_begin_β
.Lx553_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n209_var_α
n208_call_β:            mov              r11, 209
                        add              rsp, 16;                             jmp   n207_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n209_var_α:             sub              rsp, 16
                        mov              r11, 210
                        mov              rax, qword ptr [r9 + 144]            # ZT
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n210_binop_α
n209_var_β:             mov              r11, 210
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n207_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n210_binop_α:           sub              rsp, 16
                        mov              r11, 211
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx556_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx556_7
.Lx556_2:               and              edx, 1;                              jz    .Lx556_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx556_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx556_4
.Lx556_3:               movq             xmm0, rsi
.Lx556_4:               cmp              cl, 5;                               je    .Lx556_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx556_6
.Lx556_5:               movq             xmm1, rdi
.Lx556_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx556_7:                                                                     jmp   n211_assign_α
.Lx556_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx556_240
                        add              rsp, 16;                             jmp   n209_var_β
.Lx556_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n211_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n211_assign_α:          mov              r11, 212
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZE
                        mov              qword ptr [r9 + 168], rdx;           jmp   n212_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n212_statement_end_α:   mov              r11, 213
                        mov              r10, 41
                        add              rsp, 48;                             jmp   n213_statement_begin_α
#=======================================================================================================================
#         <stmt 42, line 92: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n213_statement_begin_α: mov              r11, 214
                        mov              r10, 42;                             jmp   n214_lit_string_α
n213_statement_begin_β: mov              r11, 214;                            jmp   n219_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:      sub              rsp, 16
                        mov              r11, 215
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx562_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n215_var_α
.Lx562_0:               .quad            .Lx562_0_s
.Lx562_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n215_var_α:             sub              rsp, 16
                        mov              r11, 216
                        mov              rax, qword ptr [r9 + 192]            # ZN
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n216_binop_α
n215_var_β:             mov              r11, 216
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n213_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n216_binop_α:           sub              rsp, 16
                        mov              r11, 217
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n217_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n217_assign_α:          mov              r11, 218
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n218_statement_end_α
.Lx565_0:               .quad            .Lx565_0_s
.Lx565_0_s:             .string          "OUTPUT"
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
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx570_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n221_var_α
.Lx570_0:               .quad            .Lx570_0_s
.Lx570_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:             sub              rsp, 16
                        mov              r11, 222
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n223_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n223_assign_α:          mov              r11, 224
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n224_statement_end_α
.Lx573_0:               .quad            .Lx573_0_s
.Lx573_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n224_statement_end_α:   mov              r11, 225
                        mov              r10, 43
                        add              rsp, 48;                             jmp   n225_statement_begin_α
#=======================================================================================================================
#         <stmt 44, line 94: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n225_statement_begin_α: mov              r11, 226
                        mov              r10, 44;                             jmp   n226_lit_string_α
n225_statement_begin_β: mov              r11, 226;                            jmp   n233_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_string_α:      sub              rsp, 16
                        mov              r11, 227
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n227_var_α
.Lx578_0:               .quad            .Lx578_0_s
.Lx578_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n227_var_α:             sub              rsp, 16
                        mov              r11, 228
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n228_lit_integer_α
n227_var_β:             mov              r11, 228
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n225_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_integer_α:     sub              rsp, 16
                        mov              r11, 229
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx580_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n229_binop_α
n228_lit_integer_β:     mov              r11, 229
                        add              rsp, 16;                             jmp   n227_var_β
.Lx580_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n229_binop_α:           sub              rsp, 16
                        mov              r11, 230
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx581_240
                        add              rsp, 16;                             jmp   n228_lit_integer_β
.Lx581_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n230_binop_α
n229_binop_β:           mov              r11, 230
                        add              rsp, 16;                             jmp   n228_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n230_binop_α:           sub              rsp, 16
                        mov              r11, 231
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n231_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n231_assign_α:          mov              r11, 232
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx583_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n232_statement_end_α
.Lx583_0:               .quad            .Lx583_0_s
.Lx583_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n232_statement_end_α:   mov              r11, 233
                        mov              r10, 44
                        add              rsp, 80;                             jmp   n233_statement_begin_α
#=======================================================================================================================
# ZEXIT  <stmt 45, line 95: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n233_statement_begin_α: mov              r11, 234
                        mov              r10, 45;                             jmp   n234_var_α
n233_statement_begin_β: mov              r11, 234;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n234_var_α:             sub              rsp, 16
                        mov              r11, 235
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n235_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n235_assign_α:          mov              r11, 236
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZE
                        mov              qword ptr [r9 + 168], rdx;           jmp   n236_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n236_statement_end_α:   mov              r11, 237
                        mov              r10, 45
                        add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 238
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
