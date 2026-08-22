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
.Lgvan5:                .string          "N"
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
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_keyword_assign_snobol4_α
.Lx263_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 3
                        mov              rdi, qword ptr [rip + .Lx264_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx264_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx264_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_statement_end_α
.Lx264_0:               .quad            1
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
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_keyword_assign_snobol4_α
.Lx269_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lx270_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx270_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lx270_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lx270_0:               .quad            0
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
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_unop_α
.Lx275_0:               .quad            1
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
                        mov              rdi, qword ptr [rip + .Lx277_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx277_240
                        add              rsp, 16;                             jmp   n10_unop_β
.Lx277_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n12_statement_end_α
.Lx277_0:               .quad            10
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
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Lx282_0:               .quad            1000
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
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx288_0:               .quad            500
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
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_assign_α
.Lx294_0:               .quad            20
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
n25_statement_begin_β:  mov              r11, 26;                             jmp   n80_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_define_α:           mov              r11, 27
                        mov              rdi, qword ptr [rip + .Lx301_0]
                        mov              rsi, qword ptr [rip + .Lx301_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n28_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx301_0]
                        lea              rsi, [rip + ZBODY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_statement_end_α
n26_define_β:           mov              r11, 27;                             jmp   n25_statement_begin_β
.Lx301_0:               .quad            .Lx301_0_s
.Lx301_0_s:             .string          "ZBODY"
.Lx301_1:               .quad            .Lx301_1_s
.Lx301_1_s:             .string          "ZKN"
                                                                              jmp   .Lx302_245
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
                        cmp              rdx, 0;                              jbe   .Lx302_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # ZKN
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx302_41
.Lx302_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx302_41:              lea              rcx, [rip + ZBODY_γ]
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
                        cmp              rdx, 0;                              jbe   .Lx302_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx302_110
.Lx302_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx302_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx302_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx302_180
.Lx302_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx302_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx302_245:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    mov              r11, 28
                        mov              r10, 7;                              jmp   n80_statement_begin_α
#=======================================================================================================================
# ZBODY   N = 1
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:  mov              r11, 29
                        mov              r10, 8;                              jmp   n29_lit_integer_α
n28_statement_begin_β:  mov              r11, 29;                             jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      sub              rsp, 16
                        mov              r11, 30
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_assign_α
.Lx307_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              r11, 31
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # N
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
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_assign_α
.Lx313_0:               .quad            1
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
# ZBL     N = N + 3
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:  mov              r11, 37
                        mov              r10, 10;                             jmp   n37_var_α
n36_statement_begin_β:  mov              r11, 37;                             jmp   n42_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              sub              rsp, 16
                        mov              r11, 38
                        mov              rax, qword ptr [r9 + 80]             # N
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n38_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      sub              rsp, 16
                        mov              r11, 39
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_binop_α
n38_lit_integer_β:      mov              r11, 39
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n36_statement_begin_β
.Lx320_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n39_binop_α:            sub              rsp, 16
                        mov              r11, 40
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx321_2
                        add              rax, 3
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx321_7
.Lx321_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx321_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 3
                        cmp              al, 5;                               je    .Lx321_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx321_4
.Lx321_3:               movq             xmm0, rsi
.Lx321_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx321_7:                                                                     jmp   n40_assign_α
.Lx321_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx321_240
                        add              rsp, 16;                             jmp   n38_lit_integer_β
.Lx321_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n40_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:           mov              r11, 41
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # N
                        mov              qword ptr [r9 + 88], rdx;            jmp   n41_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_end_α:    mov              r11, 42
                        mov              r10, 10
                        add              rsp, 48;                             jmp   n42_statement_begin_α
#=======================================================================================================================
#         N = N - 1
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:  mov              r11, 43
                        mov              r10, 11;                             jmp   n43_var_α
n42_statement_begin_β:  mov              r11, 43;                             jmp   n48_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              sub              rsp, 16
                        mov              r11, 44
                        mov              rax, qword ptr [r9 + 80]             # N
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      sub              rsp, 16
                        mov              r11, 45
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_binop_α
n44_lit_integer_β:      mov              r11, 45
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n42_statement_begin_β
.Lx328_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n45_binop_α:            sub              rsp, 16
                        mov              r11, 46
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx329_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx329_7
.Lx329_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx329_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx329_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx329_4
.Lx329_3:               movq             xmm0, rsi
.Lx329_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx329_7:                                                                     jmp   n46_assign_α
.Lx329_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx329_240
                        add              rsp, 16;                             jmp   n44_lit_integer_β
.Lx329_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n46_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:           mov              r11, 47
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # N
                        mov              qword ptr [r9 + 88], rdx;            jmp   n47_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:    mov              r11, 48
                        mov              r10, 11
                        add              rsp, 48;                             jmp   n48_statement_begin_α
#=======================================================================================================================
#         N = N * 2
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_begin_α:  mov              r11, 49
                        mov              r10, 12;                             jmp   n49_var_α
n48_statement_begin_β:  mov              r11, 49;                             jmp   n54_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:              sub              rsp, 16
                        mov              r11, 50
                        mov              rax, qword ptr [r9 + 80]             # N
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n50_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:      sub              rsp, 16
                        mov              r11, 51
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_binop_α
n50_lit_integer_β:      mov              r11, 51
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n48_statement_begin_β
.Lx336_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n51_binop_α:            sub              rsp, 16
                        mov              r11, 52
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx337_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx337_7
.Lx337_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx337_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lx337_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx337_4
.Lx337_3:               movq             xmm0, rsi
.Lx337_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx337_7:                                                                     jmp   n52_assign_α
.Lx337_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx337_240
                        add              rsp, 16;                             jmp   n50_lit_integer_β
.Lx337_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n52_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:           mov              r11, 53
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # N
                        mov              qword ptr [r9 + 88], rdx;            jmp   n53_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_end_α:    mov              r11, 54
                        mov              r10, 12
                        add              rsp, 48;                             jmp   n54_statement_begin_α
#=======================================================================================================================
#         N = GE(N, 1000000) N / 1000
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_begin_α:  mov              r11, 55
                        mov              r10, 13;                             jmp   n55_var_α
n54_statement_begin_β:  mov              r11, 55;                             jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              sub              rsp, 16
                        mov              r11, 56
                        mov              rax, qword ptr [r9 + 80]             # N
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n56_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:      sub              rsp, 16
                        mov              r11, 57
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n57_coerce_numeric_α
n56_lit_integer_β:      mov              r11, 57
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n54_statement_begin_β
.Lx344_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n57_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 58
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx346_1
                        cmp              al, 3;                               jne   .Lx346_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx346_0
.Lx346_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_coerce_numeric_α
.Lx346_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 109
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n58_coerce_numeric_α
n57_coerce_numeric_β:   mov              r11, 58
                        add              rsp, 16;                             jmp   n56_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n58_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 59
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx348_1
                        cmp              al, 3;                               jne   .Lx348_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx348_0
.Lx348_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_cmp_test_α
.Lx348_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 110
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n59_cmp_test_α
n58_coerce_numeric_β:   mov              r11, 59
                        add              rsp, 16;                             jmp   n57_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n59_cmp_test_α:         sub              rsp, 16
                        mov              r11, 60
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx350_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jge   .Lx350_239
                        add              rsp, 16;                             jmp   n58_coerce_numeric_β
.Lx350_239:                                                                   jmp   n60_var_α
.Lx350_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jns   .Lx350_240
                        add              rsp, 16;                             jmp   n58_coerce_numeric_β
.Lx350_240:                                                                   jmp   n60_var_α
n59_cmp_test_β:         mov              r11, 60
                        add              rsp, 16;                             jmp   n58_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              sub              rsp, 16
                        mov              r11, 61
                        mov              rax, qword ptr [r9 + 80]             # N
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n61_lit_integer_α
n60_var_β:              mov              r11, 61
                        add              rsp, 16;                             jmp   n59_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:      sub              rsp, 16
                        mov              r11, 62
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n62_binop_α
n61_lit_integer_β:      mov              r11, 62
                        add              rsp, 16;                             jmp   n60_var_β
.Lx352_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n62_binop_α:            sub              rsp, 16
                        mov              r11, 63
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx353_240
                        add              rsp, 16;                             jmp   n61_lit_integer_β
.Lx353_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n63_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:           mov              r11, 64
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # N
                        mov              qword ptr [r9 + 88], rdx;            jmp   n64_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    mov              r11, 65
                        mov              r10, 13
                        add              rsp, 128;                            jmp   n65_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:  mov              r11, 66
                        mov              r10, 14;                             jmp   n66_var_α
n65_statement_begin_β:  mov              r11, 66;                             jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              sub              rsp, 16
                        mov              r11, 67
                        mov              rax, qword ptr [r9 + 96]             # ZI
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_var_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              sub              rsp, 16
                        mov              r11, 68
                        mov              rax, qword ptr [r9 + 16]             # ZKN
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_coerce_numeric_α
n67_var_β:              mov              r11, 68
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n65_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n68_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 69
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx362_1
                        cmp              al, 3;                               jne   .Lx362_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx362_0
.Lx362_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_coerce_numeric_α
.Lx362_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n69_coerce_numeric_α
n68_coerce_numeric_β:   mov              r11, 69
                        add              rsp, 16;                             jmp   n67_var_β
#-----------------------------------------------------------------------------------------------------------------------
n69_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 70
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx364_1
                        cmp              al, 3;                               jne   .Lx364_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx364_0
.Lx364_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n70_cmp_test_α
.Lx364_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n70_cmp_test_α
n69_coerce_numeric_β:   mov              r11, 70
                        add              rsp, 16;                             jmp   n68_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n70_cmp_test_α:         sub              rsp, 16
                        mov              r11, 71
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx366_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx366_239
                        add              rsp, 16;                             jmp   n69_coerce_numeric_β
.Lx366_239:                                                                   jmp   n71_var_α
.Lx366_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx366_240
                        add              rsp, 16;                             jmp   n69_coerce_numeric_β
.Lx366_240:                                                                   jmp   n71_var_α
n70_cmp_test_β:         mov              r11, 71
                        add              rsp, 16;                             jmp   n69_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              sub              rsp, 16
                        mov              r11, 72
                        mov              rax, qword ptr [r9 + 96]             # ZI
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_lit_integer_α
n71_var_β:              mov              r11, 72
                        add              rsp, 16;                             jmp   n70_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      sub              rsp, 16
                        mov              r11, 73
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_binop_α
n72_lit_integer_β:      mov              r11, 73
                        add              rsp, 16;                             jmp   n71_var_β
.Lx368_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n73_binop_α:            sub              rsp, 16
                        mov              r11, 74
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx369_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx369_7
.Lx369_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx369_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx369_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx369_4
.Lx369_3:               movq             xmm0, rsi
.Lx369_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx369_7:                                                                     jmp   n74_assign_α
.Lx369_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx369_240
                        add              rsp, 16;                             jmp   n72_lit_integer_β
.Lx369_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n74_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              r11, 75
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZI
                        mov              qword ptr [r9 + 104], rdx;           jmp   n75_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    mov              r11, 76
                        mov              r10, 14
                        add              rsp, 128;                            jmp   n36_statement_begin_α
#=======================================================================================================================
#         ZBODY = N                                       :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:  mov              r11, 77
                        mov              r10, 15;                             jmp   n77_var_α
n76_statement_begin_β:  mov              r11, 77;                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              sub              rsp, 16
                        mov              r11, 78
                        mov              rax, qword ptr [r9 + 80]             # N
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n78_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:           mov              r11, 79
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ZBODY
                        mov              qword ptr [r9 + 8], rdx;             jmp   n79_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_end_α:    mov              r11, 80
                        mov              r10, 15
                        add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 16, line 19: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_begin_α:  mov              r11, 81
                        mov              r10, 16;                             jmp   n81_statement_end_α
n80_statement_begin_β:  mov              r11, 81;                             jmp   n82_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_end_α:    mov              r11, 82
                        mov              r10, 16;                             jmp   n82_statement_begin_α
#=======================================================================================================================
#         <stmt 17, line 67: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_begin_α:  mov              r11, 83
                        mov              r10, 17;                             jmp   n83_lit_string_α
n82_statement_begin_β:  mov              r11, 83;                             jmp   n89_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:       sub              rsp, 16
                        mov              r11, 84
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n84_var_α
.Lx385_0:               .quad            .Lx385_0_s
.Lx385_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              sub              rsp, 16
                        mov              r11, 85
                        mov              rax, qword ptr [r9 + 32]             # ZCHK
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n85_call_α
n84_var_β:              mov              r11, 85
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n82_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n85_call_α:             sub              rsp, 16
                        mov              r11, 86
                        lea              rcx, [rip + .Lsig388z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig388z:              .quad            1
                        .quad            .Lx388_2
                        .quad            .Lx388_2
                        .quad            16
.Lx388_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx388_29
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
.Lx388_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx388_240
                        add              rsp, 16;                             jmp   n84_var_β
.Lx388_240:                                                                   jmp   n86_binop_α
n85_call_β:             mov              r11, 86;                             jmp   n84_var_β
.Lx388_0:               .quad            .Lx388_0_s
.Lx388_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:            sub              rsp, 16
                        mov              r11, 87
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n87_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:           mov              r11, 88
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n88_statement_end_α
.Lx390_0:               .quad            .Lx390_0_s
.Lx390_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_end_α:    mov              r11, 89
                        mov              r10, 17
                        add              rsp, 64;                             jmp   n89_statement_begin_α
#=======================================================================================================================
#         <stmt 18, line 68: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_begin_α:  mov              r11, 90
                        mov              r10, 18;                             jmp   n90_var_α
n89_statement_begin_β:  mov              r11, 90;                             jmp   n93_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              sub              rsp, 16
                        mov              r11, 91
                        mov              rdi, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx395_240
                        add              rsp, 16;                             jmp   n89_statement_begin_β
.Lx395_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n91_assign_α
.Lx395_0:               .quad            .Lx395_0_s
.Lx395_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:           mov              r11, 92
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # fixed_n
                        mov              qword ptr [r9 + 120], rdx;           jmp   n92_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_end_α:    mov              r11, 93
                        mov              r10, 18
                        add              rsp, 16;                             jmp   n196_statement_begin_α
#=======================================================================================================================
#         <stmt 19, line 69: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_begin_α:  mov              r11, 94
                        mov              r10, 19;                             jmp   n94_var_α
n93_statement_begin_β:  mov              r11, 94;                             jmp   n99_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:              sub              rsp, 16
                        mov              r11, 95
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n95_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:      sub              rsp, 16
                        mov              r11, 96
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n96_binop_α
n95_lit_integer_β:      mov              r11, 96
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n93_statement_begin_β
.Lx402_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n96_binop_α:            sub              rsp, 16
                        mov              r11, 97
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx403_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx403_7
.Lx403_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx403_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx403_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx403_4
.Lx403_3:               movq             xmm0, rsi
.Lx403_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx403_7:                                                                     jmp   n97_assign_α
.Lx403_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx403_240
                        add              rsp, 16;                             jmp   n95_lit_integer_β
.Lx403_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n97_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:           mov              r11, 98
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n98_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:    mov              r11, 99
                        mov              r10, 19
                        add              rsp, 48;                             jmp   n99_statement_begin_α
#=======================================================================================================================
#         <stmt 20, line 70: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_begin_α:  mov              r11, 100
                        mov              r10, 20;                             jmp   n100_var_α
n99_statement_begin_β:  mov              r11, 100;                            jmp   n105_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:             sub              rsp, 16
                        mov              r11, 101
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:     sub              rsp, 16
                        mov              r11, 102
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx410_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n102_binop_α
n101_lit_integer_β:     mov              r11, 102
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n99_statement_begin_β
.Lx410_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n102_binop_α:           sub              rsp, 16
                        mov              r11, 103
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx411_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx411_7
.Lx411_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx411_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx411_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx411_4
.Lx411_3:               movq             xmm0, rsi
.Lx411_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx411_7:                                                                     jmp   n103_assign_α
.Lx411_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx411_240
                        add              rsp, 16;                             jmp   n101_lit_integer_β
.Lx411_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n103_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:          mov              r11, 104
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBUD
                        mov              qword ptr [r9 + 56], rdx;            jmp   n104_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_end_α:   mov              r11, 105
                        mov              r10, 20
                        add              rsp, 48;                             jmp   n105_statement_begin_α
#=======================================================================================================================
#         <stmt 21, line 71: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_begin_α: mov              r11, 106
                        mov              r10, 21;                             jmp   n106_var_α
n105_statement_begin_β: mov              r11, 106;                            jmp   n110_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             sub              rsp, 16
                        mov              r11, 107
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      sub              rsp, 16
                        mov              r11, 108
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_differ_α
n107_lit_string_β:      mov              r11, 108
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n105_statement_begin_β
.Lx418_0:               .quad            .Lx418_0_s
.Lx418_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n108_differ_α:          sub              rsp, 16
                        mov              r11, 109
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx420_240
                        add              rsp, 16;                             jmp   n107_lit_string_β
.Lx420_240:                                                                   jmp   n109_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_end_α:   mov              r11, 110
                        mov              r10, 21
                        add              rsp, 48;                             jmp   n139_statement_begin_α
#=======================================================================================================================
#         <stmt 22, line 72: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_begin_α: mov              r11, 111
                        mov              r10, 22;                             jmp   n111_lit_integer_α
n110_statement_begin_β: mov              r11, 111;                            jmp   n114_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_integer_α:     sub              rsp, 16
                        mov              r11, 112
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n112_assign_α
.Lx425_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_α:          mov              r11, 113
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZK
                        mov              qword ptr [r9 + 136], rdx;           jmp   n113_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:   mov              r11, 114
                        mov              r10, 22
                        add              rsp, 16;                             jmp   n114_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 23, line 73: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_begin_α: mov              r11, 115
                        mov              r10, 23;                             jmp   n115_call_α
n114_statement_begin_β: mov              r11, 115;                            jmp   n118_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n115_call_α:            sub              rsp, 16
                        mov              r11, 116
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
                        add              rsp, 16;                             jmp   n114_statement_begin_β
.Lx431_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n116_assign_α
n115_call_β:            mov              r11, 116
                        add              rsp, 16;                             jmp   n114_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n116_assign_α:          mov              r11, 117
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZT
                        mov              qword ptr [r9 + 152], rdx;           jmp   n117_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_end_α:   mov              r11, 118
                        mov              r10, 23
                        add              rsp, 16;                             jmp   n118_statement_begin_α
#=======================================================================================================================
#         <stmt 24, line 74: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n118_statement_begin_α: mov              r11, 119
                        mov              r10, 24;                             jmp   n119_var_α
n118_statement_begin_β: mov              r11, 119;                            jmp   n122_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:             sub              rsp, 16
                        mov              r11, 120
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n120_call_α
#-----------------------------------------------------------------------------------------------------------------------
n120_call_α:            sub              rsp, 16
                        mov              r11, 121
                        lea              rcx, [rip + .Lsig440z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig440z:              .quad            1
                        .quad            .Lx440_2
                        .quad            .Lx440_2
                        .quad            16
.Lx440_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx440_29
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
.Lx440_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx440_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n118_statement_begin_β
.Lx440_240:                                                                   jmp   n121_statement_end_α
n120_call_β:            mov              r11, 121;                            jmp   n118_statement_begin_β
.Lx440_0:               .quad            .Lx440_0_s
.Lx440_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_end_α:   mov              r11, 122
                        mov              r10, 24
                        add              rsp, 32;                             jmp   n122_statement_begin_α
#=======================================================================================================================
#         <stmt 25, line 75: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_begin_α: mov              r11, 123
                        mov              r10, 25;                             jmp   n123_call_α
n122_statement_begin_β: mov              r11, 123;                            jmp   n128_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n123_call_α:            sub              rsp, 16
                        mov              r11, 124
                        .section         .rodata
.Lrkfnzd446:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd446]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx445_240
                        add              rsp, 16;                             jmp   n122_statement_begin_β
.Lx445_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_var_α
n123_call_β:            mov              r11, 124
                        add              rsp, 16;                             jmp   n122_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             sub              rsp, 16
                        mov              r11, 125
                        mov              rax, qword ptr [r9 + 144]            # ZT
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_binop_α
n124_var_β:             mov              r11, 125
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n122_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n125_binop_α:           sub              rsp, 16
                        mov              r11, 126
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx448_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx448_7
.Lx448_2:               and              edx, 1;                              jz    .Lx448_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx448_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx448_4
.Lx448_3:               movq             xmm0, rsi
.Lx448_4:               cmp              cl, 5;                               je    .Lx448_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx448_6
.Lx448_5:               movq             xmm1, rdi
.Lx448_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx448_7:                                                                     jmp   n126_assign_α
.Lx448_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx448_240
                        add              rsp, 16;                             jmp   n124_var_β
.Lx448_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n126_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n126_assign_α:          mov              r11, 127
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZE
                        mov              qword ptr [r9 + 168], rdx;           jmp   n127_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_end_α:   mov              r11, 128
                        mov              r10, 25
                        add              rsp, 48;                             jmp   n128_statement_begin_α
#=======================================================================================================================
#         <stmt 26, line 76: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_begin_α: mov              r11, 129
                        mov              r10, 26;                             jmp   n129_var_α
n128_statement_begin_β: mov              r11, 129;                            jmp   n139_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_α:             sub              rsp, 16
                        mov              r11, 130
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n130_var_α
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:             sub              rsp, 16
                        mov              r11, 131
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n131_coerce_numeric_α
n130_var_β:             mov              r11, 131
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n128_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n131_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 132
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx457_1
                        cmp              al, 3;                               jne   .Lx457_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx457_0
.Lx457_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n132_coerce_numeric_α
.Lx457_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n132_coerce_numeric_α
n131_coerce_numeric_β:  mov              r11, 132
                        add              rsp, 16;                             jmp   n130_var_β
#-----------------------------------------------------------------------------------------------------------------------
n132_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 133
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx459_1
                        cmp              al, 3;                               jne   .Lx459_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx459_0
.Lx459_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_cmp_test_α
.Lx459_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n133_cmp_test_α
n132_coerce_numeric_β:  mov              r11, 133
                        add              rsp, 16;                             jmp   n131_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n133_cmp_test_α:        sub              rsp, 16
                        mov              r11, 134
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx461_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx461_239
                        add              rsp, 16;                             jmp   n132_coerce_numeric_β
.Lx461_239:                                                                   jmp   n134_var_α
.Lx461_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx461_240
                        add              rsp, 16;                             jmp   n132_coerce_numeric_β
.Lx461_240:                                                                   jmp   n134_var_α
n133_cmp_test_β:        mov              r11, 134
                        add              rsp, 16;                             jmp   n132_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:             sub              rsp, 16
                        mov              r11, 135
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_lit_integer_α
n134_var_β:             mov              r11, 135
                        add              rsp, 16;                             jmp   n133_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:     sub              rsp, 16
                        mov              r11, 136
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n136_binop_α
n135_lit_integer_β:     mov              r11, 136
                        add              rsp, 16;                             jmp   n134_var_β
.Lx463_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n136_binop_α:           sub              rsp, 16
                        mov              r11, 137
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx464_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx464_7
.Lx464_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx464_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lx464_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx464_4
.Lx464_3:               movq             xmm0, rsi
.Lx464_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx464_7:                                                                     jmp   n137_assign_α
.Lx464_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx464_240
                        add              rsp, 16;                             jmp   n135_lit_integer_β
.Lx464_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n137_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n137_assign_α:          mov              r11, 138
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZK
                        mov              qword ptr [r9 + 136], rdx;           jmp   n138_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_end_α:   mov              r11, 139
                        mov              r10, 26
                        add              rsp, 128;                            jmp   n114_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 27, line 77: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_begin_α: mov              r11, 140
                        mov              r10, 27;                             jmp   n140_call_α
n139_statement_begin_β: mov              r11, 140;                            jmp   n143_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n140_call_α:            sub              rsp, 16
                        mov              r11, 141
                        .section         .rodata
.Lrkfnzd471:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd471]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx470_240
                        add              rsp, 16;                             jmp   n139_statement_begin_β
.Lx470_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_assign_α
n140_call_β:            mov              r11, 141
                        add              rsp, 16;                             jmp   n139_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n141_assign_α:          mov              r11, 142
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZT
                        mov              qword ptr [r9 + 152], rdx;           jmp   n142_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_end_α:   mov              r11, 143
                        mov              r10, 27
                        add              rsp, 16;                             jmp   n143_statement_begin_α
#=======================================================================================================================
#         <stmt 28, line 78: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n143_statement_begin_α: mov              r11, 144
                        mov              r10, 28;                             jmp   n144_var_α
n143_statement_begin_β: mov              r11, 144;                            jmp   n149_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:             sub              rsp, 16
                        mov              r11, 145
                        mov              rax, qword ptr [r9 + 144]            # ZT
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n145_var_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:             sub              rsp, 16
                        mov              r11, 146
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n146_binop_α
n145_var_β:             mov              r11, 146
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n143_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n146_binop_α:           sub              rsp, 16
                        mov              r11, 147
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx479_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx479_7
.Lx479_2:               and              edx, 1;                              jz    .Lx479_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx479_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx479_4
.Lx479_3:               movq             xmm0, rsi
.Lx479_4:               cmp              cl, 5;                               je    .Lx479_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx479_6
.Lx479_5:               movq             xmm1, rdi
.Lx479_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx479_7:                                                                     jmp   n147_assign_α
.Lx479_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx479_240
                        add              rsp, 16;                             jmp   n145_var_β
.Lx479_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n147_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n147_assign_α:          mov              r11, 148
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZD
                        mov              qword ptr [r9 + 184], rdx;           jmp   n148_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_end_α:   mov              r11, 149
                        mov              r10, 28
                        add              rsp, 48;                             jmp   n149_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 79: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_begin_α: mov              r11, 150
                        mov              r10, 29;                             jmp   n150_lit_integer_α
n149_statement_begin_β: mov              r11, 150;                            jmp   n153_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:     sub              rsp, 16
                        mov              r11, 151
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n151_assign_α
.Lx485_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n151_assign_α:          mov              r11, 152
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZN
                        mov              qword ptr [r9 + 200], rdx;           jmp   n152_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_end_α:   mov              r11, 153
                        mov              r10, 29
                        add              rsp, 16;                             jmp   n153_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 30, line 80: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_begin_α: mov              r11, 154
                        mov              r10, 30;                             jmp   n154_var_α
n153_statement_begin_β: mov              r11, 154;                            jmp   n157_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:             sub              rsp, 16
                        mov              r11, 155
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_call_α
#-----------------------------------------------------------------------------------------------------------------------
n155_call_α:            sub              rsp, 16
                        mov              r11, 156
                        lea              rcx, [rip + .Lsig493z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig493z:              .quad            1
                        .quad            .Lx493_2
                        .quad            .Lx493_2
                        .quad            16
.Lx493_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx493_29
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
.Lx493_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx493_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n153_statement_begin_β
.Lx493_240:                                                                   jmp   n156_statement_end_α
n155_call_β:            mov              r11, 156;                            jmp   n153_statement_begin_β
.Lx493_0:               .quad            .Lx493_0_s
.Lx493_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_end_α:   mov              r11, 157
                        mov              r10, 30
                        add              rsp, 32;                             jmp   n157_statement_begin_α
#=======================================================================================================================
#         <stmt 31, line 81: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_begin_α: mov              r11, 158
                        mov              r10, 31;                             jmp   n158_var_α
n157_statement_begin_β: mov              r11, 158;                            jmp   n163_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:             sub              rsp, 16
                        mov              r11, 159
                        mov              rax, qword ptr [r9 + 192]            # ZN
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_var_α
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:             sub              rsp, 16
                        mov              r11, 160
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_binop_α
n159_var_β:             mov              r11, 160
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n157_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n160_binop_α:           sub              rsp, 16
                        mov              r11, 161
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx500_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx500_7
.Lx500_2:               and              edx, 1;                              jz    .Lx500_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx500_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx500_4
.Lx500_3:               movq             xmm0, rsi
.Lx500_4:               cmp              cl, 5;                               je    .Lx500_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx500_6
.Lx500_5:               movq             xmm1, rdi
.Lx500_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx500_7:                                                                     jmp   n161_assign_α
.Lx500_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx500_240
                        add              rsp, 16;                             jmp   n159_var_β
.Lx500_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n161_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n161_assign_α:          mov              r11, 162
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZN
                        mov              qword ptr [r9 + 200], rdx;           jmp   n162_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_end_α:   mov              r11, 163
                        mov              r10, 31
                        add              rsp, 48;                             jmp   n163_statement_begin_α
#=======================================================================================================================
#         <stmt 32, line 82: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_begin_α: mov              r11, 164
                        mov              r10, 32;                             jmp   n164_call_α
n163_statement_begin_β: mov              r11, 164;                            jmp   n170_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n164_call_α:            sub              rsp, 16
                        mov              r11, 165
                        .section         .rodata
.Lrkfnzd507:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd507]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx506_240
                        add              rsp, 16;                             jmp   n163_statement_begin_β
.Lx506_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n165_var_α
n164_call_β:            mov              r11, 165
                        add              rsp, 16;                             jmp   n163_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:             sub              rsp, 16
                        mov              r11, 166
                        mov              rax, qword ptr [r9 + 176]            # ZD
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n166_coerce_numeric_α
n165_var_β:             mov              r11, 166
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n163_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n166_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 167
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              al, 5;                               je    .Lx510_1
                        cmp              al, 3;                               jne   .Lx510_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lx510_0
.Lx510_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_coerce_numeric_α
.Lx510_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n167_coerce_numeric_α
n166_coerce_numeric_β:  mov              r11, 167
                        add              rsp, 16;                             jmp   n165_var_β
#-----------------------------------------------------------------------------------------------------------------------
n167_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 168
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx512_1
                        cmp              al, 3;                               jne   .Lx512_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              al, 3;                               jne   .Lx512_0
.Lx512_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n168_cmp_test_α
.Lx512_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n168_cmp_test_α
n167_coerce_numeric_β:  mov              r11, 168
                        add              rsp, 16;                             jmp   n166_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n168_cmp_test_α:        sub              rsp, 16
                        mov              r11, 169
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx514_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx514_239
                        add              rsp, 16;                             jmp   n167_coerce_numeric_β
.Lx514_239:                                                                   jmp   n169_statement_end_α
.Lx514_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx514_240
                        add              rsp, 16;                             jmp   n167_coerce_numeric_β
.Lx514_240:                                                                   jmp   n169_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n169_statement_end_α:   mov              r11, 170
                        mov              r10, 32
                        add              rsp, 80;                             jmp   n153_statement_begin_α
#=======================================================================================================================
#         <stmt 33, line 83: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_begin_α: mov              r11, 171
                        mov              r10, 33;                             jmp   n171_call_α
n170_statement_begin_β: mov              r11, 171;                            jmp   n176_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n171_call_α:            sub              rsp, 16
                        mov              r11, 172
                        .section         .rodata
.Lrkfnzd520:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd520]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx519_240
                        add              rsp, 16;                             jmp   n170_statement_begin_β
.Lx519_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n172_var_α
n171_call_β:            mov              r11, 172
                        add              rsp, 16;                             jmp   n170_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:             sub              rsp, 16
                        mov              r11, 173
                        mov              rax, qword ptr [r9 + 144]            # ZT
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n173_binop_α
n172_var_β:             mov              r11, 173
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n170_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n173_binop_α:           sub              rsp, 16
                        mov              r11, 174
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx522_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx522_7
.Lx522_2:               and              edx, 1;                              jz    .Lx522_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx522_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx522_4
.Lx522_3:               movq             xmm0, rsi
.Lx522_4:               cmp              cl, 5;                               je    .Lx522_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx522_6
.Lx522_5:               movq             xmm1, rdi
.Lx522_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx522_7:                                                                     jmp   n174_assign_α
.Lx522_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx522_240
                        add              rsp, 16;                             jmp   n172_var_β
.Lx522_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n174_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n174_assign_α:          mov              r11, 175
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZE
                        mov              qword ptr [r9 + 168], rdx;           jmp   n175_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_end_α:   mov              r11, 176
                        mov              r10, 33
                        add              rsp, 48;                             jmp   n176_statement_begin_α
#=======================================================================================================================
#         <stmt 34, line 84: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_begin_α: mov              r11, 177
                        mov              r10, 34;                             jmp   n177_lit_string_α
n176_statement_begin_β: mov              r11, 177;                            jmp   n182_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:      sub              rsp, 16
                        mov              r11, 178
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n178_var_α
.Lx528_0:               .quad            .Lx528_0_s
.Lx528_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:             sub              rsp, 16
                        mov              r11, 179
                        mov              rax, qword ptr [r9 + 192]            # ZN
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_binop_α
n178_var_β:             mov              r11, 179
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n176_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n179_binop_α:           sub              rsp, 16
                        mov              r11, 180
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n180_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n180_assign_α:          mov              r11, 181
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n181_statement_end_α
.Lx531_0:               .quad            .Lx531_0_s
.Lx531_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_end_α:   mov              r11, 182
                        mov              r10, 34
                        add              rsp, 48;                             jmp   n182_statement_begin_α
#=======================================================================================================================
#         <stmt 35, line 85: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_begin_α: mov              r11, 183
                        mov              r10, 35;                             jmp   n183_lit_string_α
n182_statement_begin_β: mov              r11, 183;                            jmp   n188_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:      sub              rsp, 16
                        mov              r11, 184
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx536_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n184_var_α
.Lx536_0:               .quad            .Lx536_0_s
.Lx536_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             sub              rsp, 16
                        mov              r11, 185
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n185_binop_α
n184_var_β:             mov              r11, 185
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n182_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n185_binop_α:           sub              rsp, 16
                        mov              r11, 186
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n186_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n186_assign_α:          mov              r11, 187
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx539_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n187_statement_end_α
.Lx539_0:               .quad            .Lx539_0_s
.Lx539_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_end_α:   mov              r11, 188
                        mov              r10, 35
                        add              rsp, 48;                             jmp   n188_statement_begin_α
#=======================================================================================================================
#         <stmt 36, line 86: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_begin_α: mov              r11, 189
                        mov              r10, 36;                             jmp   n189_lit_string_α
n188_statement_begin_β: mov              r11, 189;                            jmp   n256_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:      sub              rsp, 16
                        mov              r11, 190
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx544_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n190_var_α
.Lx544_0:               .quad            .Lx544_0_s
.Lx544_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:             sub              rsp, 16
                        mov              r11, 191
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n191_lit_integer_α
n190_var_β:             mov              r11, 191
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n188_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_integer_α:     sub              rsp, 16
                        mov              r11, 192
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx546_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n192_binop_α
n191_lit_integer_β:     mov              r11, 192
                        add              rsp, 16;                             jmp   n190_var_β
.Lx546_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n192_binop_α:           sub              rsp, 16
                        mov              r11, 193
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx547_240
                        add              rsp, 16;                             jmp   n191_lit_integer_β
.Lx547_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n193_binop_α
n192_binop_β:           mov              r11, 193
                        add              rsp, 16;                             jmp   n191_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n193_binop_α:           sub              rsp, 16
                        mov              r11, 194
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n194_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n194_assign_α:          mov              r11, 195
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx549_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n195_statement_end_α
.Lx549_0:               .quad            .Lx549_0_s
.Lx549_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_end_α:   mov              r11, 196
                        mov              r10, 36
                        add              rsp, 80;                             jmp   n256_statement_begin_α
#=======================================================================================================================
# ZFIXRUN  <stmt 37, line 87: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n196_statement_begin_α: mov              r11, 197
                        mov              r10, 37;                             jmp   n197_var_α
n196_statement_begin_β: mov              r11, 197;                            jmp   n201_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:             sub              rsp, 16
                        mov              r11, 198
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n198_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:      sub              rsp, 16
                        mov              r11, 199
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n199_differ_α
n198_lit_string_β:      mov              r11, 199
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n196_statement_begin_β
.Lx555_0:               .quad            .Lx555_0_s
.Lx555_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n199_differ_α:          sub              rsp, 16
                        mov              r11, 200
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx557_240
                        add              rsp, 16;                             jmp   n198_lit_string_β
.Lx557_240:                                                                   jmp   n200_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_end_α:   mov              r11, 201
                        mov              r10, 37
                        add              rsp, 48;                             jmp   n205_statement_begin_α
#=======================================================================================================================
#         <stmt 38, line 88: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_begin_α: mov              r11, 202
                        mov              r10, 38;                             jmp   n202_var_α
n201_statement_begin_β: mov              r11, 202;                            jmp   n205_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n202_var_α:             sub              rsp, 16
                        mov              r11, 203
                        mov              rax, qword ptr [r9 + 112]            # fixed_n
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n203_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n203_assign_α:          mov              r11, 204
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZK
                        mov              qword ptr [r9 + 136], rdx;           jmp   n204_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n204_statement_end_α:   mov              r11, 205
                        mov              r10, 38
                        add              rsp, 16;                             jmp   n205_statement_begin_α
#=======================================================================================================================
# ZFB  <stmt 39, line 89: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_begin_α: mov              r11, 206
                        mov              r10, 39;                             jmp   n206_call_α
n205_statement_begin_β: mov              r11, 206;                            jmp   n209_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n206_call_α:            sub              rsp, 16
                        mov              r11, 207
                        .section         .rodata
.Lrkfnzd569:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd569]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx568_240
                        add              rsp, 16;                             jmp   n205_statement_begin_β
.Lx568_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n207_assign_α
n206_call_β:            mov              r11, 207
                        add              rsp, 16;                             jmp   n205_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n207_assign_α:          mov              r11, 208
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZT
                        mov              qword ptr [r9 + 152], rdx;           jmp   n208_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n208_statement_end_α:   mov              r11, 209
                        mov              r10, 39
                        add              rsp, 16;                             jmp   n209_statement_begin_α
#=======================================================================================================================
#         <stmt 40, line 90: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n209_statement_begin_α: mov              r11, 210
                        mov              r10, 40;                             jmp   n210_lit_integer_α
n209_statement_begin_β: mov              r11, 210;                            jmp   n213_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_integer_α:     sub              rsp, 16
                        mov              r11, 211
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx575_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n211_assign_α
.Lx575_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n211_assign_α:          mov              r11, 212
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZN
                        mov              qword ptr [r9 + 200], rdx;           jmp   n212_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n212_statement_end_α:   mov              r11, 213
                        mov              r10, 40
                        add              rsp, 16;                             jmp   n213_statement_begin_α
#=======================================================================================================================
# ZFL  <stmt 41, line 91: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n213_statement_begin_α: mov              r11, 214
                        mov              r10, 41;                             jmp   n214_var_α
n213_statement_begin_β: mov              r11, 214;                            jmp   n217_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:             sub              rsp, 16
                        mov              r11, 215
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n215_call_α
#-----------------------------------------------------------------------------------------------------------------------
n215_call_α:            sub              rsp, 16
                        mov              r11, 216
                        lea              rcx, [rip + .Lsig583z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig583z:              .quad            1
                        .quad            .Lx583_2
                        .quad            .Lx583_2
                        .quad            16
.Lx583_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx583_29
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
.Lx583_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx583_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n213_statement_begin_β
.Lx583_240:                                                                   jmp   n216_statement_end_α
n215_call_β:            mov              r11, 216;                            jmp   n213_statement_begin_β
.Lx583_0:               .quad            .Lx583_0_s
.Lx583_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n216_statement_end_α:   mov              r11, 217
                        mov              r10, 41
                        add              rsp, 32;                             jmp   n217_statement_begin_α
#=======================================================================================================================
#         <stmt 42, line 92: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_begin_α: mov              r11, 218
                        mov              r10, 42;                             jmp   n218_var_α
n217_statement_begin_β: mov              r11, 218;                            jmp   n223_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:             sub              rsp, 16
                        mov              r11, 219
                        mov              rax, qword ptr [r9 + 192]            # ZN
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n219_var_α
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             sub              rsp, 16
                        mov              r11, 220
                        mov              rax, qword ptr [r9 + 128]            # ZK
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_binop_α
n219_var_β:             mov              r11, 220
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n217_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n220_binop_α:           sub              rsp, 16
                        mov              r11, 221
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx590_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx590_7
.Lx590_2:               and              edx, 1;                              jz    .Lx590_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx590_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx590_4
.Lx590_3:               movq             xmm0, rsi
.Lx590_4:               cmp              cl, 5;                               je    .Lx590_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx590_6
.Lx590_5:               movq             xmm1, rdi
.Lx590_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx590_7:                                                                     jmp   n221_assign_α
.Lx590_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx590_240
                        add              rsp, 16;                             jmp   n219_var_β
.Lx590_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n221_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n221_assign_α:          mov              r11, 222
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZN
                        mov              qword ptr [r9 + 200], rdx;           jmp   n222_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n222_statement_end_α:   mov              r11, 223
                        mov              r10, 42
                        add              rsp, 48;                             jmp   n223_statement_begin_α
#=======================================================================================================================
#         <stmt 43, line 93: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_begin_α: mov              r11, 224
                        mov              r10, 43;                             jmp   n224_var_α
n223_statement_begin_β: mov              r11, 224;                            jmp   n230_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n224_var_α:             sub              rsp, 16
                        mov              r11, 225
                        mov              rax, qword ptr [r9 + 192]            # ZN
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n225_var_α
#-----------------------------------------------------------------------------------------------------------------------
n225_var_α:             sub              rsp, 16
                        mov              r11, 226
                        mov              rax, qword ptr [r9 + 112]            # fixed_n
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n226_coerce_numeric_α
n225_var_β:             mov              r11, 226
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n223_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n226_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 227
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx599_1
                        cmp              al, 3;                               jne   .Lx599_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx599_0
.Lx599_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n227_coerce_numeric_α
.Lx599_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n227_coerce_numeric_α
n226_coerce_numeric_β:  mov              r11, 227
                        add              rsp, 16;                             jmp   n225_var_β
#-----------------------------------------------------------------------------------------------------------------------
n227_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 228
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx601_1
                        cmp              al, 3;                               jne   .Lx601_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx601_0
.Lx601_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n228_cmp_test_α
.Lx601_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n228_cmp_test_α
n227_coerce_numeric_β:  mov              r11, 228
                        add              rsp, 16;                             jmp   n226_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n228_cmp_test_α:        sub              rsp, 16
                        mov              r11, 229
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx603_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx603_239
                        add              rsp, 16;                             jmp   n227_coerce_numeric_β
.Lx603_239:                                                                   jmp   n229_statement_end_α
.Lx603_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx603_240
                        add              rsp, 16;                             jmp   n227_coerce_numeric_β
.Lx603_240:                                                                   jmp   n229_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n229_statement_end_α:   mov              r11, 230
                        mov              r10, 43
                        add              rsp, 80;                             jmp   n213_statement_begin_α
#=======================================================================================================================
#         <stmt 44, line 94: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n230_statement_begin_α: mov              r11, 231
                        mov              r10, 44;                             jmp   n231_call_α
n230_statement_begin_β: mov              r11, 231;                            jmp   n236_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n231_call_α:            sub              rsp, 16
                        mov              r11, 232
                        .section         .rodata
.Lrkfnzd609:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd609]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx608_240
                        add              rsp, 16;                             jmp   n230_statement_begin_β
.Lx608_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n232_var_α
n231_call_β:            mov              r11, 232
                        add              rsp, 16;                             jmp   n230_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n232_var_α:             sub              rsp, 16
                        mov              r11, 233
                        mov              rax, qword ptr [r9 + 144]            # ZT
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n233_binop_α
n232_var_β:             mov              r11, 233
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n230_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n233_binop_α:           sub              rsp, 16
                        mov              r11, 234
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx611_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx611_7
.Lx611_2:               and              edx, 1;                              jz    .Lx611_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx611_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx611_4
.Lx611_3:               movq             xmm0, rsi
.Lx611_4:               cmp              cl, 5;                               je    .Lx611_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx611_6
.Lx611_5:               movq             xmm1, rdi
.Lx611_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx611_7:                                                                     jmp   n234_assign_α
.Lx611_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx611_240
                        add              rsp, 16;                             jmp   n232_var_β
.Lx611_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n234_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n234_assign_α:          mov              r11, 235
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZE
                        mov              qword ptr [r9 + 168], rdx;           jmp   n235_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_end_α:   mov              r11, 236
                        mov              r10, 44
                        add              rsp, 48;                             jmp   n236_statement_begin_α
#=======================================================================================================================
#         <stmt 45, line 95: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n236_statement_begin_α: mov              r11, 237
                        mov              r10, 45;                             jmp   n237_lit_string_α
n236_statement_begin_β: mov              r11, 237;                            jmp   n242_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_string_α:      sub              rsp, 16
                        mov              r11, 238
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx617_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n238_var_α
.Lx617_0:               .quad            .Lx617_0_s
.Lx617_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:             sub              rsp, 16
                        mov              r11, 239
                        mov              rax, qword ptr [r9 + 192]            # ZN
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n239_binop_α
n238_var_β:             mov              r11, 239
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n236_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n239_binop_α:           sub              rsp, 16
                        mov              r11, 240
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n240_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n240_assign_α:          mov              r11, 241
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx620_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n241_statement_end_α
.Lx620_0:               .quad            .Lx620_0_s
.Lx620_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n241_statement_end_α:   mov              r11, 242
                        mov              r10, 45
                        add              rsp, 48;                             jmp   n242_statement_begin_α
#=======================================================================================================================
#         <stmt 46, line 96: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n242_statement_begin_α: mov              r11, 243
                        mov              r10, 46;                             jmp   n243_lit_string_α
n242_statement_begin_β: mov              r11, 243;                            jmp   n248_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:      sub              rsp, 16
                        mov              r11, 244
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx625_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n244_var_α
.Lx625_0:               .quad            .Lx625_0_s
.Lx625_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n244_var_α:             sub              rsp, 16
                        mov              r11, 245
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n245_binop_α
n244_var_β:             mov              r11, 245
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n242_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n245_binop_α:           sub              rsp, 16
                        mov              r11, 246
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n246_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n246_assign_α:          mov              r11, 247
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx628_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n247_statement_end_α
.Lx628_0:               .quad            .Lx628_0_s
.Lx628_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_end_α:   mov              r11, 248
                        mov              r10, 46
                        add              rsp, 48;                             jmp   n248_statement_begin_α
#=======================================================================================================================
#         <stmt 47, line 97: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_begin_α: mov              r11, 249
                        mov              r10, 47;                             jmp   n249_lit_string_α
n248_statement_begin_β: mov              r11, 249;                            jmp   n256_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_string_α:      sub              rsp, 16
                        mov              r11, 250
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx633_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n250_var_α
.Lx633_0:               .quad            .Lx633_0_s
.Lx633_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:             sub              rsp, 16
                        mov              r11, 251
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_lit_integer_α
n250_var_β:             mov              r11, 251
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n248_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_integer_α:     sub              rsp, 16
                        mov              r11, 252
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx635_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n252_binop_α
n251_lit_integer_β:     mov              r11, 252
                        add              rsp, 16;                             jmp   n250_var_β
.Lx635_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n252_binop_α:           sub              rsp, 16
                        mov              r11, 253
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx636_240
                        add              rsp, 16;                             jmp   n251_lit_integer_β
.Lx636_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n253_binop_α
n252_binop_β:           mov              r11, 253
                        add              rsp, 16;                             jmp   n251_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n253_binop_α:           sub              rsp, 16
                        mov              r11, 254
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n254_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n254_assign_α:          mov              r11, 255
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx638_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n255_statement_end_α
.Lx638_0:               .quad            .Lx638_0_s
.Lx638_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n255_statement_end_α:   mov              r11, 256
                        mov              r10, 47
                        add              rsp, 80;                             jmp   n256_statement_begin_α
#=======================================================================================================================
# ZEXIT  <stmt 48, line 98: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_begin_α: mov              r11, 257
                        mov              r10, 48;                             jmp   n257_var_α
n256_statement_begin_β: mov              r11, 257;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:             sub              rsp, 16
                        mov              r11, 258
                        mov              rax, qword ptr [r9 + 160]            # ZE
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n258_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n258_assign_α:          mov              r11, 259
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZE
                        mov              qword ptr [r9 + 168], rdx;           jmp   n259_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n259_statement_end_α:   mov              r11, 260
                        mov              r10, 48
                        add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 261
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
