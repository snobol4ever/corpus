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
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_keyword_assign_snobol4_α
.Lx245_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 3
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
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx246_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_statement_end_α
.Lx246_0:               .quad            1
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
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_keyword_assign_snobol4_α
.Lx251_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lx252_0]
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
                        cmp              al, 104;                             jne   .Lx252_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lx252_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lx252_0:               .quad            0
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
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_unop_α
.Lx257_0:               .quad            1
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
                        mov              rdi, qword ptr [rip + .Lx259_0]
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
                        cmp              al, 104;                             jne   .Lx259_240
                        add              rsp, 16;                             jmp   n10_unop_β
.Lx259_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n12_statement_end_α
.Lx259_0:               .quad            10
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
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Lx264_0:               .quad            1000
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
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx270_0:               .quad            500
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
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_assign_α
.Lx276_0:               .quad            20
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
n25_statement_begin_β:  mov              r11, 26;                             jmp   n62_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_define_α:           mov              r11, 27
                        mov              rdi, qword ptr [rip + .Lx283_0]
                        mov              rsi, qword ptr [rip + .Lx283_1]
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
                        mov              rdi, qword ptr [rip + .Lx283_0]
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
n27_statement_end_α:    mov              r11, 28
                        mov              r10, 7;                              jmp   n62_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_assign_α
.Lx289_0:               .quad            0
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
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_assign_α
.Lx295_0:               .quad            1
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
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_binop_α
n38_lit_integer_β:      mov              r11, 39
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n36_statement_begin_β
.Lx302_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n39_binop_α:            sub              rsp, 16
                        mov              r11, 40
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx303_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx303_7
.Lx303_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx303_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx303_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx303_4
.Lx303_3:               movq             xmm0, rsi
.Lx303_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx303_7:                                                                     jmp   n40_assign_α
.Lx303_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx303_240
                        add              rsp, 16;                             jmp   n38_lit_integer_β
.Lx303_240:             mov              qword ptr [rsp + 0], rax             # result
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
#         IDENT(A, A)
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:  mov              r11, 43
                        mov              r10, 11;                             jmp   n43_var_α
n42_statement_begin_β:  mov              r11, 43;                             jmp   n47_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              sub              rsp, 16
                        mov              r11, 44
                        mov              rax, qword ptr [r9 + 80]             # A
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:              sub              rsp, 16
                        mov              r11, 45
                        mov              rax, qword ptr [r9 + 80]             # A
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_ident_α
n44_var_β:              mov              r11, 45
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n42_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n45_ident_α:            sub              rsp, 16
                        mov              r11, 46
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jne   .Lx312_240
                        add              rsp, 16;                             jmp   n44_var_β
.Lx312_240:                                                                   jmp   n46_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:    mov              r11, 47
                        mov              r10, 11
                        add              rsp, 48;                             jmp   n47_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                          :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_begin_α:  mov              r11, 48
                        mov              r10, 12;                             jmp   n48_var_α
n47_statement_begin_β:  mov              r11, 48;                             jmp   n58_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:              sub              rsp, 16
                        mov              r11, 49
                        mov              rax, qword ptr [r9 + 96]             # ZI
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:              sub              rsp, 16
                        mov              r11, 50
                        mov              rax, qword ptr [r9 + 16]             # ZKN
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n50_coerce_numeric_α
n49_var_β:              mov              r11, 50
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n47_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n50_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 51
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx320_1
                        cmp              al, 3;                               jne   .Lx320_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx320_0
.Lx320_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_coerce_numeric_α
.Lx320_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n51_coerce_numeric_α
n50_coerce_numeric_β:   mov              r11, 51
                        add              rsp, 16;                             jmp   n49_var_β
#-----------------------------------------------------------------------------------------------------------------------
n51_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 52
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx322_1
                        cmp              al, 3;                               jne   .Lx322_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx322_0
.Lx322_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_cmp_test_α
.Lx322_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n52_cmp_test_α
n51_coerce_numeric_β:   mov              r11, 52
                        add              rsp, 16;                             jmp   n50_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n52_cmp_test_α:         sub              rsp, 16
                        mov              r11, 53
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx324_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx324_239
                        add              rsp, 16;                             jmp   n51_coerce_numeric_β
.Lx324_239:                                                                   jmp   n53_var_α
.Lx324_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx324_240
                        add              rsp, 16;                             jmp   n51_coerce_numeric_β
.Lx324_240:                                                                   jmp   n53_var_α
n52_cmp_test_β:         mov              r11, 53
                        add              rsp, 16;                             jmp   n51_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              sub              rsp, 16
                        mov              r11, 54
                        mov              rax, qword ptr [r9 + 96]             # ZI
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n54_lit_integer_α
n53_var_β:              mov              r11, 54
                        add              rsp, 16;                             jmp   n52_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:      sub              rsp, 16
                        mov              r11, 55
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_binop_α
n54_lit_integer_β:      mov              r11, 55
                        add              rsp, 16;                             jmp   n53_var_β
.Lx326_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n55_binop_α:            sub              rsp, 16
                        mov              r11, 56
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx327_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx327_7
.Lx327_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx327_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx327_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx327_4
.Lx327_3:               movq             xmm0, rsi
.Lx327_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx327_7:                                                                     jmp   n56_assign_α
.Lx327_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx327_240
                        add              rsp, 16;                             jmp   n54_lit_integer_β
.Lx327_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n56_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_α:           mov              r11, 57
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZI
                        mov              qword ptr [r9 + 104], rdx;           jmp   n57_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_end_α:    mov              r11, 58
                        mov              r10, 12
                        add              rsp, 128;                            jmp   n36_statement_begin_α
#=======================================================================================================================
#         ZBODY = A                                        :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_begin_α:  mov              r11, 59
                        mov              r10, 13;                             jmp   n59_var_α
n58_statement_begin_β:  mov              r11, 59;                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:              sub              rsp, 16
                        mov              r11, 60
                        mov              rax, qword ptr [r9 + 80]             # A
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n60_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:           mov              r11, 61
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ZBODY
                        mov              qword ptr [r9 + 8], rdx;             jmp   n61_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:    mov              r11, 62
                        mov              r10, 13
                        add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 14, line 17: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_begin_α:  mov              r11, 63
                        mov              r10, 14;                             jmp   n63_statement_end_α
n62_statement_begin_β:  mov              r11, 63;                             jmp   n64_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_end_α:    mov              r11, 64
                        mov              r10, 14;                             jmp   n64_statement_begin_α
#=======================================================================================================================
#         <stmt 15, line 65: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_begin_α:  mov              r11, 65
                        mov              r10, 15;                             jmp   n65_lit_string_α
n64_statement_begin_β:  mov              r11, 65;                             jmp   n71_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       sub              rsp, 16
                        mov              r11, 66
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n66_var_α
.Lx343_0:               .quad            .Lx343_0_s
.Lx343_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              sub              rsp, 16
                        mov              r11, 67
                        mov              rax, qword ptr [r9 + 32]             # ZCHK
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_call_α
n66_var_β:              mov              r11, 67
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n64_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n67_call_α:             sub              rsp, 16
                        mov              r11, 68
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
.Lx346_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx346_240
                        add              rsp, 16;                             jmp   n66_var_β
.Lx346_240:                                                                   jmp   n68_binop_α
n67_call_β:             mov              r11, 68;                             jmp   n66_var_β
.Lx346_0:               .quad            .Lx346_0_s
.Lx346_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n68_binop_α:            sub              rsp, 16
                        mov              r11, 69
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n69_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:           mov              r11, 70
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n70_statement_end_α
.Lx348_0:               .quad            .Lx348_0_s
.Lx348_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_end_α:    mov              r11, 71
                        mov              r10, 15
                        add              rsp, 64;                             jmp   n71_statement_begin_α
#=======================================================================================================================
#         <stmt 16, line 66: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_begin_α:  mov              r11, 72
                        mov              r10, 16;                             jmp   n72_var_α
n71_statement_begin_β:  mov              r11, 72;                             jmp   n75_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:              sub              rsp, 16
                        mov              r11, 73
                        mov              rdi, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx353_240
                        add              rsp, 16;                             jmp   n71_statement_begin_β
.Lx353_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n73_assign_α
.Lx353_0:               .quad            .Lx353_0_s
.Lx353_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:           mov              r11, 74
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # fixed_n
                        mov              qword ptr [r9 + 120], rdx;           jmp   n74_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_end_α:    mov              r11, 75
                        mov              r10, 16
                        add              rsp, 16;                             jmp   n178_statement_begin_α
#=======================================================================================================================
#         <stmt 17, line 67: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_begin_α:  mov              r11, 76
                        mov              r10, 17;                             jmp   n76_var_α
n75_statement_begin_β:  mov              r11, 76;                             jmp   n81_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              sub              rsp, 16
                        mov              r11, 77
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n77_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:      sub              rsp, 16
                        mov              r11, 78
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_binop_α
n77_lit_integer_β:      mov              r11, 78
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n75_statement_begin_β
.Lx360_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_α:            sub              rsp, 16
                        mov              r11, 79
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx361_240
                        add              rsp, 16;                             jmp   n77_lit_integer_β
.Lx361_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n79_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              r11, 80
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n80_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    mov              r11, 81
                        mov              r10, 17
                        add              rsp, 48;                             jmp   n81_statement_begin_α
#=======================================================================================================================
#         <stmt 18, line 68: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:  mov              r11, 82
                        mov              r10, 18;                             jmp   n82_var_α
n81_statement_begin_β:  mov              r11, 82;                             jmp   n87_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              sub              rsp, 16
                        mov              r11, 83
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n83_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:      sub              rsp, 16
                        mov              r11, 84
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n84_binop_α
n83_lit_integer_β:      mov              r11, 84
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n81_statement_begin_β
.Lx368_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n84_binop_α:            sub              rsp, 16
                        mov              r11, 85
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx369_240
                        add              rsp, 16;                             jmp   n83_lit_integer_β
.Lx369_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n85_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:           mov              r11, 86
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBUD
                        mov              qword ptr [r9 + 56], rdx;            jmp   n86_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:    mov              r11, 87
                        mov              r10, 18
                        add              rsp, 48;                             jmp   n87_statement_begin_α
#=======================================================================================================================
#         <stmt 19, line 69: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:  mov              r11, 88
                        mov              r10, 19;                             jmp   n88_var_α
n87_statement_begin_β:  mov              r11, 88;                             jmp   n92_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              sub              rsp, 16
                        mov              r11, 89
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:       sub              rsp, 16
                        mov              r11, 90
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_differ_α
n89_lit_string_β:       mov              r11, 90
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n87_statement_begin_β
.Lx376_0:               .quad            .Lx376_0_s
.Lx376_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n90_differ_α:           sub              rsp, 16
                        mov              r11, 91
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
                        test             eax, eax;                            je    .Lx378_240
                        add              rsp, 16;                             jmp   n89_lit_string_β
.Lx378_240:                                                                   jmp   n91_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_end_α:    mov              r11, 92
                        mov              r10, 19
                        add              rsp, 48;                             jmp   n121_statement_begin_α
#=======================================================================================================================
#         <stmt 20, line 70: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_begin_α:  mov              r11, 93
                        mov              r10, 20;                             jmp   n93_lit_integer_α
n92_statement_begin_β:  mov              r11, 93;                             jmp   n96_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:      sub              rsp, 16
                        mov              r11, 94
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n94_assign_α
.Lx383_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:           mov              r11, 95
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZK
                        mov              qword ptr [r9 + 136], rdx;           jmp   n95_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:    mov              r11, 96
                        mov              r10, 20
                        add              rsp, 16;                             jmp   n96_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 21, line 71: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_begin_α:  mov              r11, 97
                        mov              r10, 21;                             jmp   n97_call_α
n96_statement_begin_β:  mov              r11, 97;                             jmp   n100_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n97_call_α:             sub              rsp, 16
                        mov              r11, 98
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
                        add              rsp, 16;                             jmp   n96_statement_begin_β
.Lx389_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_assign_α
n97_call_β:             mov              r11, 98
                        add              rsp, 16;                             jmp   n96_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:           mov              r11, 99
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZT
                        mov              qword ptr [r9 + 152], rdx;           jmp   n99_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_end_α:    mov              r11, 100
                        mov              r10, 21
                        add              rsp, 16;                             jmp   n100_statement_begin_α
#=======================================================================================================================
#         <stmt 22, line 72: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_begin_α: mov              r11, 101
                        mov              r10, 22;                             jmp   n101_var_α
n100_statement_begin_β: mov              r11, 101;                            jmp   n104_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             sub              rsp, 16
                        mov              r11, 102
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_call_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_α:            sub              rsp, 16
                        mov              r11, 103
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
.Lx398_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx398_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n100_statement_begin_β
.Lx398_240:                                                                   jmp   n103_statement_end_α
n102_call_β:            mov              r11, 103;                            jmp   n100_statement_begin_β
.Lx398_0:               .quad            .Lx398_0_s
.Lx398_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_end_α:   mov              r11, 104
                        mov              r10, 22
                        add              rsp, 32;                             jmp   n104_statement_begin_α
#=======================================================================================================================
#         <stmt 23, line 73: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_begin_α: mov              r11, 105
                        mov              r10, 23;                             jmp   n105_call_α
n104_statement_begin_β: mov              r11, 105;                            jmp   n110_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n105_call_α:            sub              rsp, 16
                        mov              r11, 106
                        .section         .rodata
.Lrkfnzd404:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd404]
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
                        cmp              al, 104;                             jne   .Lx403_240
                        add              rsp, 16;                             jmp   n104_statement_begin_β
.Lx403_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n106_var_α
n105_call_β:            mov              r11, 106
                        add              rsp, 16;                             jmp   n104_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             sub              rsp, 16
                        mov              r11, 107
                        mov              rax, qword ptr [r9 + 144]            # ZT
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_binop_α
n106_var_β:             mov              r11, 107
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n104_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n107_binop_α:           sub              rsp, 16
                        mov              r11, 108
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx406_240
                        add              rsp, 16;                             jmp   n106_var_β
.Lx406_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n108_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n108_assign_α:          mov              r11, 109
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZE
                        mov              qword ptr [r9 + 168], rdx;           jmp   n109_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_end_α:   mov              r11, 110
                        mov              r10, 23
                        add              rsp, 48;                             jmp   n110_statement_begin_α
#=======================================================================================================================
#         <stmt 24, line 74: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_begin_α: mov              r11, 111
                        mov              r10, 24;                             jmp   n111_var_α
n110_statement_begin_β: mov              r11, 111;                            jmp   n121_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             sub              rsp, 16
                        mov              r11, 112
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_var_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:             sub              rsp, 16
                        mov              r11, 113
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_coerce_numeric_α
n112_var_β:             mov              r11, 113
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n110_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n113_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 114
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n114_coerce_numeric_α
n113_coerce_numeric_β:  mov              r11, 114
                        add              rsp, 16;                             jmp   n112_var_β
#-----------------------------------------------------------------------------------------------------------------------
n114_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 115
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n115_cmp_test_α
n114_coerce_numeric_β:  mov              r11, 115
                        add              rsp, 16;                             jmp   n113_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n115_cmp_test_α:        sub              rsp, 16
                        mov              r11, 116
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx419_240
                        add              rsp, 16;                             jmp   n114_coerce_numeric_β
.Lx419_240:                                                                   jmp   n116_var_α
n115_cmp_test_β:        mov              r11, 116
                        add              rsp, 16;                             jmp   n114_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:             sub              rsp, 16
                        mov              r11, 117
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n117_lit_integer_α
n116_var_β:             mov              r11, 117
                        add              rsp, 16;                             jmp   n115_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:     sub              rsp, 16
                        mov              r11, 118
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n118_binop_α
n117_lit_integer_β:     mov              r11, 118
                        add              rsp, 16;                             jmp   n116_var_β
.Lx421_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n118_binop_α:           sub              rsp, 16
                        mov              r11, 119
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx422_240
                        add              rsp, 16;                             jmp   n117_lit_integer_β
.Lx422_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n119_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:          mov              r11, 120
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZK
                        mov              qword ptr [r9 + 136], rdx;           jmp   n120_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_end_α:   mov              r11, 121
                        mov              r10, 24
                        add              rsp, 128;                            jmp   n96_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 25, line 75: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_begin_α: mov              r11, 122
                        mov              r10, 25;                             jmp   n122_call_α
n121_statement_begin_β: mov              r11, 122;                            jmp   n125_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_α:            sub              rsp, 16
                        mov              r11, 123
                        .section         .rodata
.Lrkfnzd429:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd429]
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
                        cmp              al, 104;                             jne   .Lx428_240
                        add              rsp, 16;                             jmp   n121_statement_begin_β
.Lx428_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n123_assign_α
n122_call_β:            mov              r11, 123
                        add              rsp, 16;                             jmp   n121_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_α:          mov              r11, 124
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZT
                        mov              qword ptr [r9 + 152], rdx;           jmp   n124_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_end_α:   mov              r11, 125
                        mov              r10, 25
                        add              rsp, 16;                             jmp   n125_statement_begin_α
#=======================================================================================================================
#         <stmt 26, line 76: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_begin_α: mov              r11, 126
                        mov              r10, 26;                             jmp   n126_var_α
n125_statement_begin_β: mov              r11, 126;                            jmp   n131_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:             sub              rsp, 16
                        mov              r11, 127
                        mov              rax, qword ptr [r9 + 144]            # ZT
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n127_var_α
#-----------------------------------------------------------------------------------------------------------------------
n127_var_α:             sub              rsp, 16
                        mov              r11, 128
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n128_binop_α
n127_var_β:             mov              r11, 128
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n125_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n128_binop_α:           sub              rsp, 16
                        mov              r11, 129
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx437_240
                        add              rsp, 16;                             jmp   n127_var_β
.Lx437_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n129_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n129_assign_α:          mov              r11, 130
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZD
                        mov              qword ptr [r9 + 184], rdx;           jmp   n130_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_end_α:   mov              r11, 131
                        mov              r10, 26
                        add              rsp, 48;                             jmp   n131_statement_begin_α
#=======================================================================================================================
#         <stmt 27, line 77: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_begin_α: mov              r11, 132
                        mov              r10, 27;                             jmp   n132_lit_integer_α
n131_statement_begin_β: mov              r11, 132;                            jmp   n135_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_integer_α:     sub              rsp, 16
                        mov              r11, 133
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_assign_α
.Lx443_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_α:          mov              r11, 134
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZN
                        mov              qword ptr [r9 + 200], rdx;           jmp   n134_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_end_α:   mov              r11, 135
                        mov              r10, 27
                        add              rsp, 16;                             jmp   n135_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 28, line 78: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_begin_α: mov              r11, 136
                        mov              r10, 28;                             jmp   n136_var_α
n135_statement_begin_β: mov              r11, 136;                            jmp   n139_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:             sub              rsp, 16
                        mov              r11, 137
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n137_call_α
#-----------------------------------------------------------------------------------------------------------------------
n137_call_α:            sub              rsp, 16
                        mov              r11, 138
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
.Lx451_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx451_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n135_statement_begin_β
.Lx451_240:                                                                   jmp   n138_statement_end_α
n137_call_β:            mov              r11, 138;                            jmp   n135_statement_begin_β
.Lx451_0:               .quad            .Lx451_0_s
.Lx451_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_end_α:   mov              r11, 139
                        mov              r10, 28
                        add              rsp, 32;                             jmp   n139_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 79: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_begin_α: mov              r11, 140
                        mov              r10, 29;                             jmp   n140_var_α
n139_statement_begin_β: mov              r11, 140;                            jmp   n145_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             sub              rsp, 16
                        mov              r11, 141
                        mov              rax, qword ptr [r9 + 192]            # ZN
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_var_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             sub              rsp, 16
                        mov              r11, 142
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_binop_α
n141_var_β:             mov              r11, 142
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n139_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n142_binop_α:           sub              rsp, 16
                        mov              r11, 143
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx458_240
                        add              rsp, 16;                             jmp   n141_var_β
.Lx458_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n143_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n143_assign_α:          mov              r11, 144
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZN
                        mov              qword ptr [r9 + 200], rdx;           jmp   n144_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_end_α:   mov              r11, 145
                        mov              r10, 29
                        add              rsp, 48;                             jmp   n145_statement_begin_α
#=======================================================================================================================
#         <stmt 30, line 80: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_begin_α: mov              r11, 146
                        mov              r10, 30;                             jmp   n146_call_α
n145_statement_begin_β: mov              r11, 146;                            jmp   n152_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n146_call_α:            sub              rsp, 16
                        mov              r11, 147
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
                        add              rsp, 16;                             jmp   n145_statement_begin_β
.Lx464_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n147_var_α
n146_call_β:            mov              r11, 147
                        add              rsp, 16;                             jmp   n145_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:             sub              rsp, 16
                        mov              r11, 148
                        mov              rax, qword ptr [r9 + 176]            # ZD
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_coerce_numeric_α
n147_var_β:             mov              r11, 148
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n145_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n148_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 149
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n149_coerce_numeric_α
n148_coerce_numeric_β:  mov              r11, 149
                        add              rsp, 16;                             jmp   n147_var_β
#-----------------------------------------------------------------------------------------------------------------------
n149_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 150
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n150_cmp_test_α
n149_coerce_numeric_β:  mov              r11, 150
                        add              rsp, 16;                             jmp   n148_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n150_cmp_test_α:        sub              rsp, 16
                        mov              r11, 151
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx472_240
                        add              rsp, 16;                             jmp   n149_coerce_numeric_β
.Lx472_240:                                                                   jmp   n151_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:   mov              r11, 152
                        mov              r10, 30
                        add              rsp, 80;                             jmp   n135_statement_begin_α
#=======================================================================================================================
#         <stmt 31, line 81: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_begin_α: mov              r11, 153
                        mov              r10, 31;                             jmp   n153_call_α
n152_statement_begin_β: mov              r11, 153;                            jmp   n158_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n153_call_α:            sub              rsp, 16
                        mov              r11, 154
                        .section         .rodata
.Lrkfnzd478:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd478]
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
                        cmp              al, 104;                             jne   .Lx477_240
                        add              rsp, 16;                             jmp   n152_statement_begin_β
.Lx477_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_var_α
n153_call_β:            mov              r11, 154
                        add              rsp, 16;                             jmp   n152_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:             sub              rsp, 16
                        mov              r11, 155
                        mov              rax, qword ptr [r9 + 144]            # ZT
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_binop_α
n154_var_β:             mov              r11, 155
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n152_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n155_binop_α:           sub              rsp, 16
                        mov              r11, 156
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx480_240
                        add              rsp, 16;                             jmp   n154_var_β
.Lx480_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n156_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n156_assign_α:          mov              r11, 157
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZE
                        mov              qword ptr [r9 + 168], rdx;           jmp   n157_statement_end_α
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
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n160_var_α
.Lx486_0:               .quad            .Lx486_0_s
.Lx486_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n160_var_α:             sub              rsp, 16
                        mov              r11, 161
                        mov              rax, qword ptr [r9 + 192]            # ZN
                        mov              rdx, qword ptr [r9 + 200]
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
                        mov              rdi, qword ptr [rip + .Lx489_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n163_statement_end_α
.Lx489_0:               .quad            .Lx489_0_s
.Lx489_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_end_α:   mov              r11, 164
                        mov              r10, 32
                        add              rsp, 48;                             jmp   n164_statement_begin_α
#=======================================================================================================================
#         <stmt 33, line 83: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_begin_α: mov              r11, 165
                        mov              r10, 33;                             jmp   n165_lit_string_α
n164_statement_begin_β: mov              r11, 165;                            jmp   n170_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:      sub              rsp, 16
                        mov              r11, 166
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n166_var_α
.Lx494_0:               .quad            .Lx494_0_s
.Lx494_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n166_var_α:             sub              rsp, 16
                        mov              r11, 167
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n167_binop_α
n166_var_β:             mov              r11, 167
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n164_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n167_binop_α:           sub              rsp, 16
                        mov              r11, 168
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n168_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n168_assign_α:          mov              r11, 169
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx497_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n169_statement_end_α
.Lx497_0:               .quad            .Lx497_0_s
.Lx497_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n169_statement_end_α:   mov              r11, 170
                        mov              r10, 33
                        add              rsp, 48;                             jmp   n170_statement_begin_α
#=======================================================================================================================
#         <stmt 34, line 84: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_begin_α: mov              r11, 171
                        mov              r10, 34;                             jmp   n171_lit_string_α
n170_statement_begin_β: mov              r11, 171;                            jmp   n238_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:      sub              rsp, 16
                        mov              r11, 172
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx502_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n172_var_α
.Lx502_0:               .quad            .Lx502_0_s
.Lx502_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:             sub              rsp, 16
                        mov              r11, 173
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n173_lit_integer_α
n172_var_β:             mov              r11, 173
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n170_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     sub              rsp, 16
                        mov              r11, 174
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n174_binop_α
n173_lit_integer_β:     mov              r11, 174
                        add              rsp, 16;                             jmp   n172_var_β
.Lx504_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n174_binop_α:           sub              rsp, 16
                        mov              r11, 175
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx505_240
                        add              rsp, 16;                             jmp   n173_lit_integer_β
.Lx505_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n175_binop_α
n174_binop_β:           mov              r11, 175
                        add              rsp, 16;                             jmp   n173_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n175_binop_α:           sub              rsp, 16
                        mov              r11, 176
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n176_assign_α:          mov              r11, 177
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n177_statement_end_α
.Lx507_0:               .quad            .Lx507_0_s
.Lx507_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_end_α:   mov              r11, 178
                        mov              r10, 34
                        add              rsp, 80;                             jmp   n238_statement_begin_α
#=======================================================================================================================
# ZFIXRUN  <stmt 35, line 85: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_begin_α: mov              r11, 179
                        mov              r10, 35;                             jmp   n179_var_α
n178_statement_begin_β: mov              r11, 179;                            jmp   n183_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n179_var_α:             sub              rsp, 16
                        mov              r11, 180
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n180_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:      sub              rsp, 16
                        mov              r11, 181
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n181_differ_α
n180_lit_string_β:      mov              r11, 181
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n178_statement_begin_β
.Lx513_0:               .quad            .Lx513_0_s
.Lx513_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n181_differ_α:          sub              rsp, 16
                        mov              r11, 182
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
                        test             eax, eax;                            je    .Lx515_240
                        add              rsp, 16;                             jmp   n180_lit_string_β
.Lx515_240:                                                                   jmp   n182_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_end_α:   mov              r11, 183
                        mov              r10, 35
                        add              rsp, 48;                             jmp   n187_statement_begin_α
#=======================================================================================================================
#         <stmt 36, line 86: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_begin_α: mov              r11, 184
                        mov              r10, 36;                             jmp   n184_var_α
n183_statement_begin_β: mov              r11, 184;                            jmp   n187_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             sub              rsp, 16
                        mov              r11, 185
                        mov              rax, qword ptr [r9 + 112]            # fixed_n
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n185_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n185_assign_α:          mov              r11, 186
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZK
                        mov              qword ptr [r9 + 136], rdx;           jmp   n186_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_end_α:   mov              r11, 187
                        mov              r10, 36
                        add              rsp, 16;                             jmp   n187_statement_begin_α
#=======================================================================================================================
# ZFB  <stmt 37, line 87: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_begin_α: mov              r11, 188
                        mov              r10, 37;                             jmp   n188_call_α
n187_statement_begin_β: mov              r11, 188;                            jmp   n191_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n188_call_α:            sub              rsp, 16
                        mov              r11, 189
                        .section         .rodata
.Lrkfnzd527:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd527]
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
                        cmp              al, 104;                             jne   .Lx526_240
                        add              rsp, 16;                             jmp   n187_statement_begin_β
.Lx526_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n189_assign_α
n188_call_β:            mov              r11, 189
                        add              rsp, 16;                             jmp   n187_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n189_assign_α:          mov              r11, 190
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZT
                        mov              qword ptr [r9 + 152], rdx;           jmp   n190_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_end_α:   mov              r11, 191
                        mov              r10, 37
                        add              rsp, 16;                             jmp   n191_statement_begin_α
#=======================================================================================================================
#         <stmt 38, line 88: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_begin_α: mov              r11, 192
                        mov              r10, 38;                             jmp   n192_lit_integer_α
n191_statement_begin_β: mov              r11, 192;                            jmp   n195_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_integer_α:     sub              rsp, 16
                        mov              r11, 193
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n193_assign_α
.Lx533_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n193_assign_α:          mov              r11, 194
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZN
                        mov              qword ptr [r9 + 200], rdx;           jmp   n194_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_end_α:   mov              r11, 195
                        mov              r10, 38
                        add              rsp, 16;                             jmp   n195_statement_begin_α
#=======================================================================================================================
# ZFL  <stmt 39, line 89: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_begin_α: mov              r11, 196
                        mov              r10, 39;                             jmp   n196_var_α
n195_statement_begin_β: mov              r11, 196;                            jmp   n199_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n196_var_α:             sub              rsp, 16
                        mov              r11, 197
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n197_call_α
#-----------------------------------------------------------------------------------------------------------------------
n197_call_α:            sub              rsp, 16
                        mov              r11, 198
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
.Lx541_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx541_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n195_statement_begin_β
.Lx541_240:                                                                   jmp   n198_statement_end_α
n197_call_β:            mov              r11, 198;                            jmp   n195_statement_begin_β
.Lx541_0:               .quad            .Lx541_0_s
.Lx541_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_end_α:   mov              r11, 199
                        mov              r10, 39
                        add              rsp, 32;                             jmp   n199_statement_begin_α
#=======================================================================================================================
#         <stmt 40, line 90: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_begin_α: mov              r11, 200
                        mov              r10, 40;                             jmp   n200_var_α
n199_statement_begin_β: mov              r11, 200;                            jmp   n205_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n200_var_α:             sub              rsp, 16
                        mov              r11, 201
                        mov              rax, qword ptr [r9 + 192]            # ZN
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n201_var_α
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:             sub              rsp, 16
                        mov              r11, 202
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_binop_α
n201_var_β:             mov              r11, 202
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n199_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n202_binop_α:           sub              rsp, 16
                        mov              r11, 203
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx548_240
                        add              rsp, 16;                             jmp   n201_var_β
.Lx548_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n203_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n203_assign_α:          mov              r11, 204
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZN
                        mov              qword ptr [r9 + 200], rdx;           jmp   n204_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n204_statement_end_α:   mov              r11, 205
                        mov              r10, 40
                        add              rsp, 48;                             jmp   n205_statement_begin_α
#=======================================================================================================================
#         <stmt 41, line 91: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_begin_α: mov              r11, 206
                        mov              r10, 41;                             jmp   n206_var_α
n205_statement_begin_β: mov              r11, 206;                            jmp   n212_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_α:             sub              rsp, 16
                        mov              r11, 207
                        mov              rax, qword ptr [r9 + 192]            # ZN
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n207_var_α
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:             sub              rsp, 16
                        mov              r11, 208
                        mov              rax, qword ptr [r9 + 112]            # fixed_n
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n208_coerce_numeric_α
n207_var_β:             mov              r11, 208
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n205_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n208_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 209
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n209_coerce_numeric_α
n208_coerce_numeric_β:  mov              r11, 209
                        add              rsp, 16;                             jmp   n207_var_β
#-----------------------------------------------------------------------------------------------------------------------
n209_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 210
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n210_cmp_test_α
n209_coerce_numeric_β:  mov              r11, 210
                        add              rsp, 16;                             jmp   n208_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n210_cmp_test_α:        sub              rsp, 16
                        mov              r11, 211
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx561_240
                        add              rsp, 16;                             jmp   n209_coerce_numeric_β
.Lx561_240:                                                                   jmp   n211_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n211_statement_end_α:   mov              r11, 212
                        mov              r10, 41
                        add              rsp, 80;                             jmp   n195_statement_begin_α
#=======================================================================================================================
#         <stmt 42, line 92: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n212_statement_begin_α: mov              r11, 213
                        mov              r10, 42;                             jmp   n213_call_α
n212_statement_begin_β: mov              r11, 213;                            jmp   n218_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n213_call_α:            sub              rsp, 16
                        mov              r11, 214
                        .section         .rodata
.Lrkfnzd567:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd567]
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
                        cmp              al, 104;                             jne   .Lx566_240
                        add              rsp, 16;                             jmp   n212_statement_begin_β
.Lx566_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n214_var_α
n213_call_β:            mov              r11, 214
                        add              rsp, 16;                             jmp   n212_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:             sub              rsp, 16
                        mov              r11, 215
                        mov              rax, qword ptr [r9 + 144]            # ZT
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n215_binop_α
n214_var_β:             mov              r11, 215
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n212_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n215_binop_α:           sub              rsp, 16
                        mov              r11, 216
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx569_240
                        add              rsp, 16;                             jmp   n214_var_β
.Lx569_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n216_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n216_assign_α:          mov              r11, 217
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZE
                        mov              qword ptr [r9 + 168], rdx;           jmp   n217_statement_end_α
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
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx575_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n220_var_α
.Lx575_0:               .quad            .Lx575_0_s
.Lx575_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n220_var_α:             sub              rsp, 16
                        mov              r11, 221
                        mov              rax, qword ptr [r9 + 192]            # ZN
                        mov              rdx, qword ptr [r9 + 200]
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
                        mov              rdi, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n223_statement_end_α
.Lx578_0:               .quad            .Lx578_0_s
.Lx578_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_end_α:   mov              r11, 224
                        mov              r10, 43
                        add              rsp, 48;                             jmp   n224_statement_begin_α
#=======================================================================================================================
#         <stmt 44, line 94: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n224_statement_begin_α: mov              r11, 225
                        mov              r10, 44;                             jmp   n225_lit_string_α
n224_statement_begin_β: mov              r11, 225;                            jmp   n230_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:      sub              rsp, 16
                        mov              r11, 226
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx583_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n226_var_α
.Lx583_0:               .quad            .Lx583_0_s
.Lx583_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:             sub              rsp, 16
                        mov              r11, 227
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_binop_α
n226_var_β:             mov              r11, 227
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n224_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n227_binop_α:           sub              rsp, 16
                        mov              r11, 228
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n228_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n228_assign_α:          mov              r11, 229
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n229_statement_end_α
.Lx586_0:               .quad            .Lx586_0_s
.Lx586_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n229_statement_end_α:   mov              r11, 230
                        mov              r10, 44
                        add              rsp, 48;                             jmp   n230_statement_begin_α
#=======================================================================================================================
#         <stmt 45, line 95: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n230_statement_begin_α: mov              r11, 231
                        mov              r10, 45;                             jmp   n231_lit_string_α
n230_statement_begin_β: mov              r11, 231;                            jmp   n238_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:      sub              rsp, 16
                        mov              r11, 232
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx591_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n232_var_α
.Lx591_0:               .quad            .Lx591_0_s
.Lx591_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n232_var_α:             sub              rsp, 16
                        mov              r11, 233
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n233_lit_integer_α
n232_var_β:             mov              r11, 233
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n230_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_integer_α:     sub              rsp, 16
                        mov              r11, 234
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx593_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n234_binop_α
n233_lit_integer_β:     mov              r11, 234
                        add              rsp, 16;                             jmp   n232_var_β
.Lx593_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n234_binop_α:           sub              rsp, 16
                        mov              r11, 235
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx594_240
                        add              rsp, 16;                             jmp   n233_lit_integer_β
.Lx594_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n235_binop_α
n234_binop_β:           mov              r11, 235
                        add              rsp, 16;                             jmp   n233_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n235_binop_α:           sub              rsp, 16
                        mov              r11, 236
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n236_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n236_assign_α:          mov              r11, 237
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx596_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n237_statement_end_α
.Lx596_0:               .quad            .Lx596_0_s
.Lx596_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n237_statement_end_α:   mov              r11, 238
                        mov              r10, 45
                        add              rsp, 80;                             jmp   n238_statement_begin_α
#=======================================================================================================================
# ZEXIT  <stmt 46, line 96: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_begin_α: mov              r11, 239
                        mov              r10, 46;                             jmp   n239_var_α
n238_statement_begin_β: mov              r11, 239;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n239_var_α:             sub              rsp, 16
                        mov              r11, 240
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n240_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n240_assign_α:          mov              r11, 241
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZE
                        mov              qword ptr [r9 + 168], rdx;           jmp   n241_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n241_statement_end_α:   mov              r11, 242
                        mov              r10, 46
                        add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 243
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
