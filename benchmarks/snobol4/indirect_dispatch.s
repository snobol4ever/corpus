                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 16
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 16
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "ADD1"
.Lgvan1:                .string          "V"
.Lgvan2:                .string          "ZBODY"
.Lgvan3:                .string          "ZKN"
.Lgvan4:                .string          "ZCHK"
.Lgvan5:                .string          "ZBUD"
.Lgvan6:                .string          "ZFLR"
.Lgvan7:                .string          "ZFN"
.Lgvan8:                .string          "ZI"
.Lgvan9:                .string          "ZS"
.Lgvan10:               .string          "fixed_n"
.Lgvan11:               .string          "ZK"
.Lgvan12:               .string          "ZT"
.Lgvan13:               .string          "ZE"
.Lgvan14:               .string          "ZD"
.Lgvan15:               .string          "ZN"
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
                        .quad            .Lgvan14
                        .quad            .Lgvan15
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
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_keyword_assign_snobol4_α
.Lx257_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 3
                        mov              rdi, qword ptr [rip + .Lx258_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx258_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx258_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_statement_end_α
.Lx258_0:               .quad            1
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
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_keyword_assign_snobol4_α
.Lx263_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lx264_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx264_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lx264_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lx264_0:               .quad            0
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
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_unop_α
.Lx269_0:               .quad            1
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
                        mov              rdi, qword ptr [rip + .Lx271_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx271_240
                        add              rsp, 16;                             jmp   n10_unop_β
.Lx271_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n12_statement_end_α
.Lx271_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:    mov              r11, 13
                        mov              r10, 3
                        add              rsp, 48;                             jmp   n13_statement_begin_α
#=======================================================================================================================
#         ZCHK = 500
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:  mov              r11, 14
                        mov              r10, 4;                              jmp   n14_lit_integer_α
n13_statement_begin_β:  mov              r11, 14;                             jmp   n17_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      sub              rsp, 16
                        mov              r11, 15
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Lx276_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              r11, 16
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZCHK
                        mov              qword ptr [r9 + 72], rdx;            jmp   n16_statement_end_α
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
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx282_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              r11, 20
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZBUD
                        mov              qword ptr [r9 + 88], rdx;            jmp   n20_statement_end_α
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
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_assign_α
.Lx288_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              r11, 24
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZFLR
                        mov              qword ptr [r9 + 104], rdx;           jmp   n24_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    mov              r11, 25
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n25_statement_begin_α
#=======================================================================================================================
#         DEFINE('ADD1(V)')                               :(ADD1_END)
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:  mov              r11, 26
                        mov              r10, 7;                              jmp   n26_define_α
n25_statement_begin_β:  mov              r11, 26;                             jmp   n34_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_define_α:           mov              r11, 27
                        mov              rdi, qword ptr [rip + .Lx295_0]
                        mov              rsi, qword ptr [rip + .Lx295_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n28_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx295_0]
                        lea              rsi, [rip + ADD1_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_statement_end_α
n26_define_β:           mov              r11, 27;                             jmp   n25_statement_begin_β
.Lx295_0:               .quad            .Lx295_0_s
.Lx295_0_s:             .string          "ADD1"
.Lx295_1:               .quad            .Lx295_1_s
.Lx295_1_s:             .string          "V"
                                                                              jmp   .Lx296_245
#-----------------------------------------------------------------------------------------------------------------------
ADD1_α:                 sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # ADD1
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx296_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # V
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx296_41
.Lx296_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx296_41:              lea              rcx, [rip + ADD1_γ]
                        lea              rax, [rip + ADD1_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n28_statement_begin_α];  jmp   rax
ADD1_γ:                 mov              rdi, qword ptr [r9 + 0]              # ADD1
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx296_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # V
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx296_110
.Lx296_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx296_110:             mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ADD1_ω:                 mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # ADD1
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx296_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # V
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx296_180
.Lx296_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx296_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx296_245:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    mov              r11, 28
                        mov              r10, 7;                              jmp   n34_statement_begin_α
#=======================================================================================================================
# ADD1    ADD1 = V + 1                                    :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:  mov              r11, 29
                        mov              r10, 8;                              jmp   n29_var_α
n28_statement_begin_β:  mov              r11, 29;                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              sub              rsp, 16
                        mov              r11, 30
                        mov              rax, qword ptr [r9 + 16]             # V
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_binop_α
n30_lit_integer_β:      mov              r11, 31
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n28_statement_begin_β
.Lx302_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n31_binop_α:            sub              rsp, 16
                        mov              r11, 32
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
.Lx303_7:                                                                     jmp   n32_assign_α
.Lx303_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx303_240
                        add              rsp, 16;                             jmp   n30_lit_integer_β
.Lx303_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n32_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:           mov              r11, 33
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ADD1
                        mov              qword ptr [r9 + 8], rdx;             jmp   n33_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_end_α:    mov              r11, 34
                        mov              r10, 8
                        add              rsp, 48;                             jmp   RETURN
#=======================================================================================================================
# ADD1_END  <stmt 9, line 18: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_begin_α:  mov              r11, 35
                        mov              r10, 9;                              jmp   n35_statement_end_α
n34_statement_begin_β:  mov              r11, 35;                             jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:    mov              r11, 36
                        mov              r10, 9;                              jmp   n36_statement_begin_α
#=======================================================================================================================
#         ZFN = 'ADD1'
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:  mov              r11, 37
                        mov              r10, 10;                             jmp   n37_lit_string_α
n36_statement_begin_β:  mov              r11, 37;                             jmp   n40_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       sub              rsp, 16
                        mov              r11, 38
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_assign_α
.Lx313_0:               .quad            .Lx313_0_s
.Lx313_0_s:             .string          "ADD1"
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:           mov              r11, 39
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZFN
                        mov              qword ptr [r9 + 120], rdx;           jmp   n39_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_end_α:    mov              r11, 40
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n40_statement_begin_α
#=======================================================================================================================
#         DEFINE('ZBODY(ZKN)')                            :(ZBODY_END)
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:  mov              r11, 41
                        mov              r10, 11;                             jmp   n41_define_α
n40_statement_begin_β:  mov              r11, 41;                             jmp   n74_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n41_define_α:           mov              r11, 42
                        mov              rdi, qword ptr [rip + .Lx320_0]
                        mov              rsi, qword ptr [rip + .Lx320_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n43_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx320_0]
                        lea              rsi, [rip + ZBODY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n42_statement_end_α
n41_define_β:           mov              r11, 42;                             jmp   n40_statement_begin_β
.Lx320_0:               .quad            .Lx320_0_s
.Lx320_0_s:             .string          "ZBODY"
.Lx320_1:               .quad            .Lx320_1_s
.Lx320_1_s:             .string          "ZKN"
                                                                              jmp   .Lx321_245
#-----------------------------------------------------------------------------------------------------------------------
ZBODY_α:                sub              rsp, 64
                        mov              rax, qword ptr [r9 + 32]             # ZBODY
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx321_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # ZKN
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx321_41
.Lx321_10:              mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx321_41:              lea              rcx, [rip + ZBODY_γ]
                        lea              rax, [rip + ZBODY_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n43_statement_begin_α];  jmp   rax
ZBODY_γ:                mov              rdi, qword ptr [r9 + 32]             # ZBODY
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Lx321_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx321_110
.Lx321_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx321_110:             mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ZBODY_ω:                mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax             # ZBODY
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Lx321_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx321_180
.Lx321_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx321_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx321_245:
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:    mov              r11, 43
                        mov              r10, 11;                             jmp   n74_statement_begin_α
#=======================================================================================================================
# ZBODY   ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:  mov              r11, 44
                        mov              r10, 12;                             jmp   n44_lit_integer_α
n43_statement_begin_β:  mov              r11, 44;                             jmp   n47_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      sub              rsp, 16
                        mov              r11, 45
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_assign_α
.Lx326_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:           mov              r11, 46
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZI
                        mov              qword ptr [r9 + 136], rdx;           jmp   n46_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:    mov              r11, 47
                        mov              r10, 12
                        add              rsp, 16;                             jmp   n47_statement_begin_α
#=======================================================================================================================
#         ZS = 0
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_begin_α:  mov              r11, 48
                        mov              r10, 13;                             jmp   n48_lit_integer_α
n47_statement_begin_β:  mov              r11, 48;                             jmp   n51_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      sub              rsp, 16
                        mov              r11, 49
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_assign_α
.Lx332_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:           mov              r11, 50
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZS
                        mov              qword ptr [r9 + 152], rdx;           jmp   n50_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_end_α:    mov              r11, 51
                        mov              r10, 13
                        add              rsp, 16;                             jmp   n51_statement_begin_α
#=======================================================================================================================
# ZBL     ZS = ZS + APPLY(ZFN, ZI)
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_begin_α:  mov              r11, 52
                        mov              r10, 14;                             jmp   n52_var_α
n51_statement_begin_β:  mov              r11, 52;                             jmp   n59_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:              sub              rsp, 16
                        mov              r11, 53
                        mov              rax, qword ptr [r9 + 144]            # ZS
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              sub              rsp, 16
                        mov              r11, 54
                        mov              rax, qword ptr [r9 + 112]            # ZFN
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n54_var_α
n53_var_β:              mov              r11, 54
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n51_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              sub              rsp, 16
                        mov              r11, 55
                        mov              rax, qword ptr [r9 + 128]            # ZI
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_call_α
n54_var_β:              mov              r11, 55
                        add              rsp, 16;                             jmp   n53_var_β
#-----------------------------------------------------------------------------------------------------------------------
n55_call_α:             sub              rsp, 16
                        mov              r11, 56
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
.Lrkfnzd342:            .string          "APPLY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd342]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx341_240
                        add              rsp, 16;                             jmp   n54_var_β
.Lx341_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n56_binop_α
n55_call_β:             mov              r11, 56
                        add              rsp, 16;                             jmp   n54_var_β
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_α:            sub              rsp, 16
                        mov              r11, 57
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx343_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx343_7
.Lx343_2:               and              edx, 1;                              jz    .Lx343_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lx343_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx343_4
.Lx343_3:               movq             xmm0, rsi
.Lx343_4:               cmp              cl, 5;                               je    .Lx343_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx343_6
.Lx343_5:               movq             xmm1, rdi
.Lx343_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx343_7:                                                                     jmp   n57_assign_α
.Lx343_0:               mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx343_240
                        add              rsp, 32;                             jmp   n54_var_β
.Lx343_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n57_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:           mov              r11, 58
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZS
                        mov              qword ptr [r9 + 152], rdx;           jmp   n58_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:    mov              r11, 59
                        mov              r10, 14
                        add              rsp, 80;                             jmp   n59_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_begin_α:  mov              r11, 60
                        mov              r10, 15;                             jmp   n60_var_α
n59_statement_begin_β:  mov              r11, 60;                             jmp   n70_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              sub              rsp, 16
                        mov              r11, 61
                        mov              rax, qword ptr [r9 + 128]            # ZI
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n61_var_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              sub              rsp, 16
                        mov              r11, 62
                        mov              rax, qword ptr [r9 + 48]             # ZKN
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n62_coerce_numeric_α
n61_var_β:              mov              r11, 62
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n59_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n62_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 63
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx352_1
                        cmp              al, 3;                               jne   .Lx352_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx352_0
.Lx352_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_coerce_numeric_α
.Lx352_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n63_coerce_numeric_α
n62_coerce_numeric_β:   mov              r11, 63
                        add              rsp, 16;                             jmp   n61_var_β
#-----------------------------------------------------------------------------------------------------------------------
n63_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 64
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx354_1
                        cmp              al, 3;                               jne   .Lx354_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx354_0
.Lx354_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_cmp_test_α
.Lx354_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n64_cmp_test_α
n63_coerce_numeric_β:   mov              r11, 64
                        add              rsp, 16;                             jmp   n62_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n64_cmp_test_α:         sub              rsp, 16
                        mov              r11, 65
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx356_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx356_239
                        add              rsp, 16;                             jmp   n63_coerce_numeric_β
.Lx356_239:                                                                   jmp   n65_var_α
.Lx356_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx356_240
                        add              rsp, 16;                             jmp   n63_coerce_numeric_β
.Lx356_240:                                                                   jmp   n65_var_α
n64_cmp_test_β:         mov              r11, 65
                        add              rsp, 16;                             jmp   n63_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:              sub              rsp, 16
                        mov              r11, 66
                        mov              rax, qword ptr [r9 + 128]            # ZI
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n66_lit_integer_α
n65_var_β:              mov              r11, 66
                        add              rsp, 16;                             jmp   n64_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:      sub              rsp, 16
                        mov              r11, 67
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_binop_α
n66_lit_integer_β:      mov              r11, 67
                        add              rsp, 16;                             jmp   n65_var_β
.Lx358_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n67_binop_α:            sub              rsp, 16
                        mov              r11, 68
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx359_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx359_7
.Lx359_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx359_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx359_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx359_4
.Lx359_3:               movq             xmm0, rsi
.Lx359_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx359_7:                                                                     jmp   n68_assign_α
.Lx359_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx359_240
                        add              rsp, 16;                             jmp   n66_lit_integer_β
.Lx359_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n68_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:           mov              r11, 69
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZI
                        mov              qword ptr [r9 + 136], rdx;           jmp   n69_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_end_α:    mov              r11, 70
                        mov              r10, 15
                        add              rsp, 128;                            jmp   n51_statement_begin_α
#=======================================================================================================================
#         ZBODY = ZS                                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_begin_α:  mov              r11, 71
                        mov              r10, 16;                             jmp   n71_var_α
n70_statement_begin_β:  mov              r11, 71;                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              sub              rsp, 16
                        mov              r11, 72
                        mov              rax, qword ptr [r9 + 144]            # ZS
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:           mov              r11, 73
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # ZBODY
                        mov              qword ptr [r9 + 40], rdx;            jmp   n73_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_end_α:    mov              r11, 74
                        mov              r10, 16
                        add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 17, line 26: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_begin_α:  mov              r11, 75
                        mov              r10, 17;                             jmp   n75_statement_end_α
n74_statement_begin_β:  mov              r11, 75;                             jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    mov              r11, 76
                        mov              r10, 17;                             jmp   n76_statement_begin_α
#=======================================================================================================================
#         <stmt 18, line 74: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:  mov              r11, 77
                        mov              r10, 18;                             jmp   n77_lit_string_α
n76_statement_begin_β:  mov              r11, 77;                             jmp   n83_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       sub              rsp, 16
                        mov              r11, 78
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_var_α
.Lx375_0:               .quad            .Lx375_0_s
.Lx375_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:              sub              rsp, 16
                        mov              r11, 79
                        mov              rax, qword ptr [r9 + 64]             # ZCHK
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_call_α
n78_var_β:              mov              r11, 79
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n76_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n79_call_α:             sub              rsp, 16
                        mov              r11, 80
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
                        cmp              al, 104;                             jne   .Lx378_240
                        add              rsp, 16;                             jmp   n78_var_β
.Lx378_240:                                                                   jmp   n80_binop_α
n79_call_β:             mov              r11, 80;                             jmp   n78_var_β
.Lx378_0:               .quad            .Lx378_0_s
.Lx378_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n80_binop_α:            sub              rsp, 16
                        mov              r11, 81
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n81_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:           mov              r11, 82
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n82_statement_end_α
.Lx380_0:               .quad            .Lx380_0_s
.Lx380_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_end_α:    mov              r11, 83
                        mov              r10, 18
                        add              rsp, 64;                             jmp   n83_statement_begin_α
#=======================================================================================================================
#         <stmt 19, line 75: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_begin_α:  mov              r11, 84
                        mov              r10, 19;                             jmp   n84_var_α
n83_statement_begin_β:  mov              r11, 84;                             jmp   n87_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              sub              rsp, 16
                        mov              r11, 85
                        mov              rdi, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx385_240
                        add              rsp, 16;                             jmp   n83_statement_begin_β
.Lx385_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n85_assign_α
.Lx385_0:               .quad            .Lx385_0_s
.Lx385_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:           mov              r11, 86
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # fixed_n
                        mov              qword ptr [r9 + 168], rdx;           jmp   n86_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:    mov              r11, 87
                        mov              r10, 19
                        add              rsp, 16;                             jmp   n190_statement_begin_α
#=======================================================================================================================
#         <stmt 20, line 76: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:  mov              r11, 88
                        mov              r10, 20;                             jmp   n88_var_α
n87_statement_begin_β:  mov              r11, 88;                             jmp   n93_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              sub              rsp, 16
                        mov              r11, 89
                        mov              rax, qword ptr [r9 + 96]             # ZFLR
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:      sub              rsp, 16
                        mov              r11, 90
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx392_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_binop_α
n89_lit_integer_β:      mov              r11, 90
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n87_statement_begin_β
.Lx392_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n90_binop_α:            sub              rsp, 16
                        mov              r11, 91
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx393_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx393_7
.Lx393_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx393_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx393_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx393_4
.Lx393_3:               movq             xmm0, rsi
.Lx393_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx393_7:                                                                     jmp   n91_assign_α
.Lx393_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx393_240
                        add              rsp, 16;                             jmp   n89_lit_integer_β
.Lx393_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n91_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:           mov              r11, 92
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZFLR
                        mov              qword ptr [r9 + 104], rdx;           jmp   n92_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_end_α:    mov              r11, 93
                        mov              r10, 20
                        add              rsp, 48;                             jmp   n93_statement_begin_α
#=======================================================================================================================
#         <stmt 21, line 77: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_begin_α:  mov              r11, 94
                        mov              r10, 21;                             jmp   n94_var_α
n93_statement_begin_β:  mov              r11, 94;                             jmp   n99_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:              sub              rsp, 16
                        mov              r11, 95
                        mov              rax, qword ptr [r9 + 80]             # ZBUD
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n95_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:      sub              rsp, 16
                        mov              r11, 96
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n96_binop_α
n95_lit_integer_β:      mov              r11, 96
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n93_statement_begin_β
.Lx400_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n96_binop_α:            sub              rsp, 16
                        mov              r11, 97
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx401_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx401_7
.Lx401_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx401_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx401_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx401_4
.Lx401_3:               movq             xmm0, rsi
.Lx401_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx401_7:                                                                     jmp   n97_assign_α
.Lx401_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx401_240
                        add              rsp, 16;                             jmp   n95_lit_integer_β
.Lx401_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n97_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:           mov              r11, 98
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZBUD
                        mov              qword ptr [r9 + 88], rdx;            jmp   n98_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:    mov              r11, 99
                        mov              r10, 21
                        add              rsp, 48;                             jmp   n99_statement_begin_α
#=======================================================================================================================
#         <stmt 22, line 78: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_begin_α:  mov              r11, 100
                        mov              r10, 22;                             jmp   n100_var_α
n99_statement_begin_β:  mov              r11, 100;                            jmp   n104_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:             sub              rsp, 16
                        mov              r11, 101
                        mov              rax, qword ptr [r9 + 176]            # ZK
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:      sub              rsp, 16
                        mov              r11, 102
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx408_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n102_differ_α
n101_lit_string_β:      mov              r11, 102
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n99_statement_begin_β
.Lx408_0:               .quad            .Lx408_0_s
.Lx408_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n102_differ_α:          sub              rsp, 16
                        mov              r11, 103
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx410_240
                        add              rsp, 16;                             jmp   n101_lit_string_β
.Lx410_240:                                                                   jmp   n103_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_end_α:   mov              r11, 104
                        mov              r10, 22
                        add              rsp, 48;                             jmp   n133_statement_begin_α
#=======================================================================================================================
#         <stmt 23, line 79: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_begin_α: mov              r11, 105
                        mov              r10, 23;                             jmp   n105_lit_integer_α
n104_statement_begin_β: mov              r11, 105;                            jmp   n108_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_integer_α:     sub              rsp, 16
                        mov              r11, 106
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n106_assign_α
.Lx415_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n106_assign_α:          mov              r11, 107
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZK
                        mov              qword ptr [r9 + 184], rdx;           jmp   n107_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_end_α:   mov              r11, 108
                        mov              r10, 23
                        add              rsp, 16;                             jmp   n108_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 24, line 80: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_begin_α: mov              r11, 109
                        mov              r10, 24;                             jmp   n109_call_α
n108_statement_begin_β: mov              r11, 109;                            jmp   n112_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_α:            sub              rsp, 16
                        mov              r11, 110
                        .section         .rodata
.Lrkfnzd422:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd422]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx421_240
                        add              rsp, 16;                             jmp   n108_statement_begin_β
.Lx421_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n110_assign_α
n109_call_β:            mov              r11, 110
                        add              rsp, 16;                             jmp   n108_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n110_assign_α:          mov              r11, 111
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZT
                        mov              qword ptr [r9 + 200], rdx;           jmp   n111_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_end_α:   mov              r11, 112
                        mov              r10, 24
                        add              rsp, 16;                             jmp   n112_statement_begin_α
#=======================================================================================================================
#         <stmt 25, line 81: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_begin_α: mov              r11, 113
                        mov              r10, 25;                             jmp   n113_var_α
n112_statement_begin_β: mov              r11, 113;                            jmp   n116_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_α:             sub              rsp, 16
                        mov              r11, 114
                        mov              rax, qword ptr [r9 + 176]            # ZK
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n114_call_α
#-----------------------------------------------------------------------------------------------------------------------
n114_call_α:            sub              rsp, 16
                        mov              r11, 115
                        lea              rcx, [rip + .Lsig430z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig430z:              .quad            1
                        .quad            .Lx430_2
                        .quad            .Lx430_2
                        .quad            16
.Lx430_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx430_29
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
.Lx430_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx430_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n112_statement_begin_β
.Lx430_240:                                                                   jmp   n115_statement_end_α
n114_call_β:            mov              r11, 115;                            jmp   n112_statement_begin_β
.Lx430_0:               .quad            .Lx430_0_s
.Lx430_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_end_α:   mov              r11, 116
                        mov              r10, 25
                        add              rsp, 32;                             jmp   n116_statement_begin_α
#=======================================================================================================================
#         <stmt 26, line 82: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_begin_α: mov              r11, 117
                        mov              r10, 26;                             jmp   n117_call_α
n116_statement_begin_β: mov              r11, 117;                            jmp   n122_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n117_call_α:            sub              rsp, 16
                        mov              r11, 118
                        .section         .rodata
.Lrkfnzd436:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd436]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx435_240
                        add              rsp, 16;                             jmp   n116_statement_begin_β
.Lx435_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_var_α
n117_call_β:            mov              r11, 118
                        add              rsp, 16;                             jmp   n116_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              r11, 119
                        mov              rax, qword ptr [r9 + 192]            # ZT
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_binop_α
n118_var_β:             mov              r11, 119
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n116_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n119_binop_α:           sub              rsp, 16
                        mov              r11, 120
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx438_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx438_7
.Lx438_2:               and              edx, 1;                              jz    .Lx438_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx438_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx438_4
.Lx438_3:               movq             xmm0, rsi
.Lx438_4:               cmp              cl, 5;                               je    .Lx438_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx438_6
.Lx438_5:               movq             xmm1, rdi
.Lx438_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx438_7:                                                                     jmp   n120_assign_α
.Lx438_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx438_240
                        add              rsp, 16;                             jmp   n118_var_β
.Lx438_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n120_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n120_assign_α:          mov              r11, 121
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZE
                        mov              qword ptr [r9 + 216], rdx;           jmp   n121_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_end_α:   mov              r11, 122
                        mov              r10, 26
                        add              rsp, 48;                             jmp   n122_statement_begin_α
#=======================================================================================================================
#         <stmt 27, line 83: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_begin_α: mov              r11, 123
                        mov              r10, 27;                             jmp   n123_var_α
n122_statement_begin_β: mov              r11, 123;                            jmp   n133_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             sub              rsp, 16
                        mov              r11, 124
                        mov              rax, qword ptr [r9 + 208]            # ZE
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_var_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             sub              rsp, 16
                        mov              r11, 125
                        mov              rax, qword ptr [r9 + 96]             # ZFLR
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_coerce_numeric_α
n124_var_β:             mov              r11, 125
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n122_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n125_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 126
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx447_1
                        cmp              al, 3;                               jne   .Lx447_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx447_0
.Lx447_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n126_coerce_numeric_α
.Lx447_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n126_coerce_numeric_α
n125_coerce_numeric_β:  mov              r11, 126
                        add              rsp, 16;                             jmp   n124_var_β
#-----------------------------------------------------------------------------------------------------------------------
n126_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 127
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx449_1
                        cmp              al, 3;                               jne   .Lx449_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx449_0
.Lx449_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_cmp_test_α
.Lx449_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n127_cmp_test_α
n126_coerce_numeric_β:  mov              r11, 127
                        add              rsp, 16;                             jmp   n125_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n127_cmp_test_α:        sub              rsp, 16
                        mov              r11, 128
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx451_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx451_239
                        add              rsp, 16;                             jmp   n126_coerce_numeric_β
.Lx451_239:                                                                   jmp   n128_var_α
.Lx451_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx451_240
                        add              rsp, 16;                             jmp   n126_coerce_numeric_β
.Lx451_240:                                                                   jmp   n128_var_α
n127_cmp_test_β:        mov              r11, 128
                        add              rsp, 16;                             jmp   n126_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n128_var_α:             sub              rsp, 16
                        mov              r11, 129
                        mov              rax, qword ptr [r9 + 176]            # ZK
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n129_lit_integer_α
n128_var_β:             mov              r11, 129
                        add              rsp, 16;                             jmp   n127_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:     sub              rsp, 16
                        mov              r11, 130
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n130_binop_α
n129_lit_integer_β:     mov              r11, 130
                        add              rsp, 16;                             jmp   n128_var_β
.Lx453_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n130_binop_α:           sub              rsp, 16
                        mov              r11, 131
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx454_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx454_7
.Lx454_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx454_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lx454_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx454_4
.Lx454_3:               movq             xmm0, rsi
.Lx454_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx454_7:                                                                     jmp   n131_assign_α
.Lx454_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx454_240
                        add              rsp, 16;                             jmp   n129_lit_integer_β
.Lx454_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n131_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_α:          mov              r11, 132
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZK
                        mov              qword ptr [r9 + 184], rdx;           jmp   n132_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_end_α:   mov              r11, 133
                        mov              r10, 27
                        add              rsp, 128;                            jmp   n108_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 28, line 84: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n133_statement_begin_α: mov              r11, 134
                        mov              r10, 28;                             jmp   n134_call_α
n133_statement_begin_β: mov              r11, 134;                            jmp   n137_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_α:            sub              rsp, 16
                        mov              r11, 135
                        .section         .rodata
.Lrkfnzd461:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd461]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx460_240
                        add              rsp, 16;                             jmp   n133_statement_begin_β
.Lx460_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_assign_α
n134_call_β:            mov              r11, 135
                        add              rsp, 16;                             jmp   n133_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:          mov              r11, 136
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZT
                        mov              qword ptr [r9 + 200], rdx;           jmp   n136_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_end_α:   mov              r11, 137
                        mov              r10, 28
                        add              rsp, 16;                             jmp   n137_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 85: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_begin_α: mov              r11, 138
                        mov              r10, 29;                             jmp   n138_var_α
n137_statement_begin_β: mov              r11, 138;                            jmp   n143_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             sub              rsp, 16
                        mov              r11, 139
                        mov              rax, qword ptr [r9 + 192]            # ZT
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_var_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:             sub              rsp, 16
                        mov              r11, 140
                        mov              rax, qword ptr [r9 + 80]             # ZBUD
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_binop_α
n139_var_β:             mov              r11, 140
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n137_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n140_binop_α:           sub              rsp, 16
                        mov              r11, 141
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx469_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx469_7
.Lx469_2:               and              edx, 1;                              jz    .Lx469_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx469_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx469_4
.Lx469_3:               movq             xmm0, rsi
.Lx469_4:               cmp              cl, 5;                               je    .Lx469_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx469_6
.Lx469_5:               movq             xmm1, rdi
.Lx469_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx469_7:                                                                     jmp   n141_assign_α
.Lx469_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx469_240
                        add              rsp, 16;                             jmp   n139_var_β
.Lx469_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n141_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n141_assign_α:          mov              r11, 142
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZD
                        mov              qword ptr [r9 + 232], rdx;           jmp   n142_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_end_α:   mov              r11, 143
                        mov              r10, 29
                        add              rsp, 48;                             jmp   n143_statement_begin_α
#=======================================================================================================================
#         <stmt 30, line 86: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n143_statement_begin_α: mov              r11, 144
                        mov              r10, 30;                             jmp   n144_lit_integer_α
n143_statement_begin_β: mov              r11, 144;                            jmp   n147_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:     sub              rsp, 16
                        mov              r11, 145
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n145_assign_α
.Lx475_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n145_assign_α:          mov              r11, 146
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # ZN
                        mov              qword ptr [r9 + 248], rdx;           jmp   n146_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_end_α:   mov              r11, 147
                        mov              r10, 30
                        add              rsp, 16;                             jmp   n147_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 31, line 87: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_begin_α: mov              r11, 148
                        mov              r10, 31;                             jmp   n148_var_α
n147_statement_begin_β: mov              r11, 148;                            jmp   n151_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:             sub              rsp, 16
                        mov              r11, 149
                        mov              rax, qword ptr [r9 + 176]            # ZK
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_call_α
#-----------------------------------------------------------------------------------------------------------------------
n149_call_α:            sub              rsp, 16
                        mov              r11, 150
                        lea              rcx, [rip + .Lsig483z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig483z:              .quad            1
                        .quad            .Lx483_2
                        .quad            .Lx483_2
                        .quad            16
.Lx483_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx483_29
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
.Lx483_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx483_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n147_statement_begin_β
.Lx483_240:                                                                   jmp   n150_statement_end_α
n149_call_β:            mov              r11, 150;                            jmp   n147_statement_begin_β
.Lx483_0:               .quad            .Lx483_0_s
.Lx483_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_end_α:   mov              r11, 151
                        mov              r10, 31
                        add              rsp, 32;                             jmp   n151_statement_begin_α
#=======================================================================================================================
#         <stmt 32, line 88: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_begin_α: mov              r11, 152
                        mov              r10, 32;                             jmp   n152_var_α
n151_statement_begin_β: mov              r11, 152;                            jmp   n157_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:             sub              rsp, 16
                        mov              r11, 153
                        mov              rax, qword ptr [r9 + 240]            # ZN
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_var_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:             sub              rsp, 16
                        mov              r11, 154
                        mov              rax, qword ptr [r9 + 176]            # ZK
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_binop_α
n153_var_β:             mov              r11, 154
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n151_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n154_binop_α:           sub              rsp, 16
                        mov              r11, 155
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx490_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx490_7
.Lx490_2:               and              edx, 1;                              jz    .Lx490_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx490_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx490_4
.Lx490_3:               movq             xmm0, rsi
.Lx490_4:               cmp              cl, 5;                               je    .Lx490_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx490_6
.Lx490_5:               movq             xmm1, rdi
.Lx490_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx490_7:                                                                     jmp   n155_assign_α
.Lx490_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx490_240
                        add              rsp, 16;                             jmp   n153_var_β
.Lx490_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n155_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n155_assign_α:          mov              r11, 156
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # ZN
                        mov              qword ptr [r9 + 248], rdx;           jmp   n156_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_end_α:   mov              r11, 157
                        mov              r10, 32
                        add              rsp, 48;                             jmp   n157_statement_begin_α
#=======================================================================================================================
#         <stmt 33, line 89: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_begin_α: mov              r11, 158
                        mov              r10, 33;                             jmp   n158_call_α
n157_statement_begin_β: mov              r11, 158;                            jmp   n164_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n158_call_α:            sub              rsp, 16
                        mov              r11, 159
                        .section         .rodata
.Lrkfnzd497:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd497]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx496_240
                        add              rsp, 16;                             jmp   n157_statement_begin_β
.Lx496_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_var_α
n158_call_β:            mov              r11, 159
                        add              rsp, 16;                             jmp   n157_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:             sub              rsp, 16
                        mov              r11, 160
                        mov              rax, qword ptr [r9 + 224]            # ZD
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_coerce_numeric_α
n159_var_β:             mov              r11, 160
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n157_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n160_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 161
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              al, 5;                               je    .Lx500_1
                        cmp              al, 3;                               jne   .Lx500_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lx500_0
.Lx500_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n161_coerce_numeric_α
.Lx500_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n161_coerce_numeric_α
n160_coerce_numeric_β:  mov              r11, 161
                        add              rsp, 16;                             jmp   n159_var_β
#-----------------------------------------------------------------------------------------------------------------------
n161_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 162
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx502_1
                        cmp              al, 3;                               jne   .Lx502_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              al, 3;                               jne   .Lx502_0
.Lx502_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n162_cmp_test_α
.Lx502_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n162_cmp_test_α
n161_coerce_numeric_β:  mov              r11, 162
                        add              rsp, 16;                             jmp   n160_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n162_cmp_test_α:        sub              rsp, 16
                        mov              r11, 163
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx504_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx504_239
                        add              rsp, 16;                             jmp   n161_coerce_numeric_β
.Lx504_239:                                                                   jmp   n163_statement_end_α
.Lx504_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx504_240
                        add              rsp, 16;                             jmp   n161_coerce_numeric_β
.Lx504_240:                                                                   jmp   n163_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_end_α:   mov              r11, 164
                        mov              r10, 33
                        add              rsp, 80;                             jmp   n147_statement_begin_α
#=======================================================================================================================
#         <stmt 34, line 90: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_begin_α: mov              r11, 165
                        mov              r10, 34;                             jmp   n165_call_α
n164_statement_begin_β: mov              r11, 165;                            jmp   n170_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n165_call_α:            sub              rsp, 16
                        mov              r11, 166
                        .section         .rodata
.Lrkfnzd510:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd510]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx509_240
                        add              rsp, 16;                             jmp   n164_statement_begin_β
.Lx509_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n166_var_α
n165_call_β:            mov              r11, 166
                        add              rsp, 16;                             jmp   n164_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n166_var_α:             sub              rsp, 16
                        mov              r11, 167
                        mov              rax, qword ptr [r9 + 192]            # ZT
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n167_binop_α
n166_var_β:             mov              r11, 167
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n164_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n167_binop_α:           sub              rsp, 16
                        mov              r11, 168
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx512_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx512_7
.Lx512_2:               and              edx, 1;                              jz    .Lx512_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx512_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx512_4
.Lx512_3:               movq             xmm0, rsi
.Lx512_4:               cmp              cl, 5;                               je    .Lx512_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx512_6
.Lx512_5:               movq             xmm1, rdi
.Lx512_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx512_7:                                                                     jmp   n168_assign_α
.Lx512_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx512_240
                        add              rsp, 16;                             jmp   n166_var_β
.Lx512_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n168_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n168_assign_α:          mov              r11, 169
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZE
                        mov              qword ptr [r9 + 216], rdx;           jmp   n169_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n169_statement_end_α:   mov              r11, 170
                        mov              r10, 34
                        add              rsp, 48;                             jmp   n170_statement_begin_α
#=======================================================================================================================
#         <stmt 35, line 91: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_begin_α: mov              r11, 171
                        mov              r10, 35;                             jmp   n171_lit_string_α
n170_statement_begin_β: mov              r11, 171;                            jmp   n176_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:      sub              rsp, 16
                        mov              r11, 172
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx518_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n172_var_α
.Lx518_0:               .quad            .Lx518_0_s
.Lx518_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:             sub              rsp, 16
                        mov              r11, 173
                        mov              rax, qword ptr [r9 + 240]            # ZN
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n173_binop_α
n172_var_β:             mov              r11, 173
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n170_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n173_binop_α:           sub              rsp, 16
                        mov              r11, 174
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n174_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n174_assign_α:          mov              r11, 175
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n175_statement_end_α
.Lx521_0:               .quad            .Lx521_0_s
.Lx521_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_end_α:   mov              r11, 176
                        mov              r10, 35
                        add              rsp, 48;                             jmp   n176_statement_begin_α
#=======================================================================================================================
#         <stmt 36, line 92: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_begin_α: mov              r11, 177
                        mov              r10, 36;                             jmp   n177_lit_string_α
n176_statement_begin_β: mov              r11, 177;                            jmp   n182_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:      sub              rsp, 16
                        mov              r11, 178
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx526_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n178_var_α
.Lx526_0:               .quad            .Lx526_0_s
.Lx526_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:             sub              rsp, 16
                        mov              r11, 179
                        mov              rax, qword ptr [r9 + 208]            # ZE
                        mov              rdx, qword ptr [r9 + 216]
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
                        mov              rdi, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n181_statement_end_α
.Lx529_0:               .quad            .Lx529_0_s
.Lx529_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_end_α:   mov              r11, 182
                        mov              r10, 36
                        add              rsp, 48;                             jmp   n182_statement_begin_α
#=======================================================================================================================
#         <stmt 37, line 93: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_begin_α: mov              r11, 183
                        mov              r10, 37;                             jmp   n183_lit_string_α
n182_statement_begin_β: mov              r11, 183;                            jmp   n250_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:      sub              rsp, 16
                        mov              r11, 184
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx534_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n184_var_α
.Lx534_0:               .quad            .Lx534_0_s
.Lx534_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             sub              rsp, 16
                        mov              r11, 185
                        mov              rax, qword ptr [r9 + 208]            # ZE
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n185_lit_integer_α
n184_var_β:             mov              r11, 185
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n182_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_integer_α:     sub              rsp, 16
                        mov              r11, 186
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx536_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n186_binop_α
n185_lit_integer_β:     mov              r11, 186
                        add              rsp, 16;                             jmp   n184_var_β
.Lx536_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n186_binop_α:           sub              rsp, 16
                        mov              r11, 187
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx537_240
                        add              rsp, 16;                             jmp   n185_lit_integer_β
.Lx537_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n187_binop_α
n186_binop_β:           mov              r11, 187
                        add              rsp, 16;                             jmp   n185_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n187_binop_α:           sub              rsp, 16
                        mov              r11, 188
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n188_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n188_assign_α:          mov              r11, 189
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx539_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n189_statement_end_α
.Lx539_0:               .quad            .Lx539_0_s
.Lx539_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_end_α:   mov              r11, 190
                        mov              r10, 37
                        add              rsp, 80;                             jmp   n250_statement_begin_α
#=======================================================================================================================
# ZFIXRUN  <stmt 38, line 94: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_begin_α: mov              r11, 191
                        mov              r10, 38;                             jmp   n191_var_α
n190_statement_begin_β: mov              r11, 191;                            jmp   n195_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:             sub              rsp, 16
                        mov              r11, 192
                        mov              rax, qword ptr [r9 + 176]            # ZK
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n192_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:      sub              rsp, 16
                        mov              r11, 193
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n193_differ_α
n192_lit_string_β:      mov              r11, 193
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n190_statement_begin_β
.Lx545_0:               .quad            .Lx545_0_s
.Lx545_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n193_differ_α:          sub              rsp, 16
                        mov              r11, 194
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx547_240
                        add              rsp, 16;                             jmp   n192_lit_string_β
.Lx547_240:                                                                   jmp   n194_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_end_α:   mov              r11, 195
                        mov              r10, 38
                        add              rsp, 48;                             jmp   n199_statement_begin_α
#=======================================================================================================================
#         <stmt 39, line 95: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_begin_α: mov              r11, 196
                        mov              r10, 39;                             jmp   n196_var_α
n195_statement_begin_β: mov              r11, 196;                            jmp   n199_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n196_var_α:             sub              rsp, 16
                        mov              r11, 197
                        mov              rax, qword ptr [r9 + 160]            # fixed_n
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n197_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n197_assign_α:          mov              r11, 198
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZK
                        mov              qword ptr [r9 + 184], rdx;           jmp   n198_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_end_α:   mov              r11, 199
                        mov              r10, 39
                        add              rsp, 16;                             jmp   n199_statement_begin_α
#=======================================================================================================================
# ZFB  <stmt 40, line 96: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_begin_α: mov              r11, 200
                        mov              r10, 40;                             jmp   n200_call_α
n199_statement_begin_β: mov              r11, 200;                            jmp   n203_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n200_call_α:            sub              rsp, 16
                        mov              r11, 201
                        .section         .rodata
.Lrkfnzd559:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd559]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx558_240
                        add              rsp, 16;                             jmp   n199_statement_begin_β
.Lx558_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n201_assign_α
n200_call_β:            mov              r11, 201
                        add              rsp, 16;                             jmp   n199_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n201_assign_α:          mov              r11, 202
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZT
                        mov              qword ptr [r9 + 200], rdx;           jmp   n202_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n202_statement_end_α:   mov              r11, 203
                        mov              r10, 40
                        add              rsp, 16;                             jmp   n203_statement_begin_α
#=======================================================================================================================
#         <stmt 41, line 97: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n203_statement_begin_α: mov              r11, 204
                        mov              r10, 41;                             jmp   n204_lit_integer_α
n203_statement_begin_β: mov              r11, 204;                            jmp   n207_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_integer_α:     sub              rsp, 16
                        mov              r11, 205
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n205_assign_α
.Lx565_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n205_assign_α:          mov              r11, 206
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # ZN
                        mov              qword ptr [r9 + 248], rdx;           jmp   n206_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_end_α:   mov              r11, 207
                        mov              r10, 41
                        add              rsp, 16;                             jmp   n207_statement_begin_α
#=======================================================================================================================
# ZFL  <stmt 42, line 98: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n207_statement_begin_α: mov              r11, 208
                        mov              r10, 42;                             jmp   n208_var_α
n207_statement_begin_β: mov              r11, 208;                            jmp   n211_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:             sub              rsp, 16
                        mov              r11, 209
                        mov              rax, qword ptr [r9 + 176]            # ZK
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n209_call_α
#-----------------------------------------------------------------------------------------------------------------------
n209_call_α:            sub              rsp, 16
                        mov              r11, 210
                        lea              rcx, [rip + .Lsig573z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig573z:              .quad            1
                        .quad            .Lx573_2
                        .quad            .Lx573_2
                        .quad            16
.Lx573_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx573_29
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
.Lx573_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx573_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n207_statement_begin_β
.Lx573_240:                                                                   jmp   n210_statement_end_α
n209_call_β:            mov              r11, 210;                            jmp   n207_statement_begin_β
.Lx573_0:               .quad            .Lx573_0_s
.Lx573_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n210_statement_end_α:   mov              r11, 211
                        mov              r10, 42
                        add              rsp, 32;                             jmp   n211_statement_begin_α
#=======================================================================================================================
#         <stmt 43, line 99: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n211_statement_begin_α: mov              r11, 212
                        mov              r10, 43;                             jmp   n212_var_α
n211_statement_begin_β: mov              r11, 212;                            jmp   n217_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n212_var_α:             sub              rsp, 16
                        mov              r11, 213
                        mov              rax, qword ptr [r9 + 240]            # ZN
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n213_var_α
#-----------------------------------------------------------------------------------------------------------------------
n213_var_α:             sub              rsp, 16
                        mov              r11, 214
                        mov              rax, qword ptr [r9 + 176]            # ZK
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n214_binop_α
n213_var_β:             mov              r11, 214
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n211_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n214_binop_α:           sub              rsp, 16
                        mov              r11, 215
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx580_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx580_7
.Lx580_2:               and              edx, 1;                              jz    .Lx580_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx580_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx580_4
.Lx580_3:               movq             xmm0, rsi
.Lx580_4:               cmp              cl, 5;                               je    .Lx580_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx580_6
.Lx580_5:               movq             xmm1, rdi
.Lx580_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx580_7:                                                                     jmp   n215_assign_α
.Lx580_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx580_240
                        add              rsp, 16;                             jmp   n213_var_β
.Lx580_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n215_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n215_assign_α:          mov              r11, 216
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # ZN
                        mov              qword ptr [r9 + 248], rdx;           jmp   n216_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n216_statement_end_α:   mov              r11, 217
                        mov              r10, 43
                        add              rsp, 48;                             jmp   n217_statement_begin_α
#=======================================================================================================================
#         <stmt 44, line 100: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_begin_α: mov              r11, 218
                        mov              r10, 44;                             jmp   n218_var_α
n217_statement_begin_β: mov              r11, 218;                            jmp   n224_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:             sub              rsp, 16
                        mov              r11, 219
                        mov              rax, qword ptr [r9 + 240]            # ZN
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n219_var_α
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             sub              rsp, 16
                        mov              r11, 220
                        mov              rax, qword ptr [r9 + 160]            # fixed_n
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_coerce_numeric_α
n219_var_β:             mov              r11, 220
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n217_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n220_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 221
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx589_1
                        cmp              al, 3;                               jne   .Lx589_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx589_0
.Lx589_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n221_coerce_numeric_α
.Lx589_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n221_coerce_numeric_α
n220_coerce_numeric_β:  mov              r11, 221
                        add              rsp, 16;                             jmp   n219_var_β
#-----------------------------------------------------------------------------------------------------------------------
n221_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 222
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx591_1
                        cmp              al, 3;                               jne   .Lx591_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx591_0
.Lx591_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n222_cmp_test_α
.Lx591_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n222_cmp_test_α
n221_coerce_numeric_β:  mov              r11, 222
                        add              rsp, 16;                             jmp   n220_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n222_cmp_test_α:        sub              rsp, 16
                        mov              r11, 223
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx593_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx593_239
                        add              rsp, 16;                             jmp   n221_coerce_numeric_β
.Lx593_239:                                                                   jmp   n223_statement_end_α
.Lx593_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx593_240
                        add              rsp, 16;                             jmp   n221_coerce_numeric_β
.Lx593_240:                                                                   jmp   n223_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_end_α:   mov              r11, 224
                        mov              r10, 44
                        add              rsp, 80;                             jmp   n207_statement_begin_α
#=======================================================================================================================
#         <stmt 45, line 101: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n224_statement_begin_α: mov              r11, 225
                        mov              r10, 45;                             jmp   n225_call_α
n224_statement_begin_β: mov              r11, 225;                            jmp   n230_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n225_call_α:            sub              rsp, 16
                        mov              r11, 226
                        .section         .rodata
.Lrkfnzd599:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd599]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx598_240
                        add              rsp, 16;                             jmp   n224_statement_begin_β
.Lx598_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n226_var_α
n225_call_β:            mov              r11, 226
                        add              rsp, 16;                             jmp   n224_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:             sub              rsp, 16
                        mov              r11, 227
                        mov              rax, qword ptr [r9 + 192]            # ZT
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_binop_α
n226_var_β:             mov              r11, 227
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n224_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n227_binop_α:           sub              rsp, 16
                        mov              r11, 228
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx601_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx601_7
.Lx601_2:               and              edx, 1;                              jz    .Lx601_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx601_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx601_4
.Lx601_3:               movq             xmm0, rsi
.Lx601_4:               cmp              cl, 5;                               je    .Lx601_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx601_6
.Lx601_5:               movq             xmm1, rdi
.Lx601_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx601_7:                                                                     jmp   n228_assign_α
.Lx601_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx601_240
                        add              rsp, 16;                             jmp   n226_var_β
.Lx601_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n228_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n228_assign_α:          mov              r11, 229
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZE
                        mov              qword ptr [r9 + 216], rdx;           jmp   n229_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n229_statement_end_α:   mov              r11, 230
                        mov              r10, 45
                        add              rsp, 48;                             jmp   n230_statement_begin_α
#=======================================================================================================================
#         <stmt 46, line 102: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n230_statement_begin_α: mov              r11, 231
                        mov              r10, 46;                             jmp   n231_lit_string_α
n230_statement_begin_β: mov              r11, 231;                            jmp   n236_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:      sub              rsp, 16
                        mov              r11, 232
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx607_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n232_var_α
.Lx607_0:               .quad            .Lx607_0_s
.Lx607_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n232_var_α:             sub              rsp, 16
                        mov              r11, 233
                        mov              rax, qword ptr [r9 + 240]            # ZN
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n233_binop_α
n232_var_β:             mov              r11, 233
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n230_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n233_binop_α:           sub              rsp, 16
                        mov              r11, 234
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n234_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n234_assign_α:          mov              r11, 235
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx610_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n235_statement_end_α
.Lx610_0:               .quad            .Lx610_0_s
.Lx610_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_end_α:   mov              r11, 236
                        mov              r10, 46
                        add              rsp, 48;                             jmp   n236_statement_begin_α
#=======================================================================================================================
#         <stmt 47, line 103: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n236_statement_begin_α: mov              r11, 237
                        mov              r10, 47;                             jmp   n237_lit_string_α
n236_statement_begin_β: mov              r11, 237;                            jmp   n242_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_string_α:      sub              rsp, 16
                        mov              r11, 238
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx615_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n238_var_α
.Lx615_0:               .quad            .Lx615_0_s
.Lx615_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:             sub              rsp, 16
                        mov              r11, 239
                        mov              rax, qword ptr [r9 + 208]            # ZE
                        mov              rdx, qword ptr [r9 + 216]
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
                        mov              rdi, qword ptr [rip + .Lx618_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n241_statement_end_α
.Lx618_0:               .quad            .Lx618_0_s
.Lx618_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n241_statement_end_α:   mov              r11, 242
                        mov              r10, 47
                        add              rsp, 48;                             jmp   n242_statement_begin_α
#=======================================================================================================================
#         <stmt 48, line 104: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n242_statement_begin_α: mov              r11, 243
                        mov              r10, 48;                             jmp   n243_lit_string_α
n242_statement_begin_β: mov              r11, 243;                            jmp   n250_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:      sub              rsp, 16
                        mov              r11, 244
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n244_var_α
.Lx623_0:               .quad            .Lx623_0_s
.Lx623_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n244_var_α:             sub              rsp, 16
                        mov              r11, 245
                        mov              rax, qword ptr [r9 + 208]            # ZE
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n245_lit_integer_α
n244_var_β:             mov              r11, 245
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n242_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_integer_α:     sub              rsp, 16
                        mov              r11, 246
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx625_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n246_binop_α
n245_lit_integer_β:     mov              r11, 246
                        add              rsp, 16;                             jmp   n244_var_β
.Lx625_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n246_binop_α:           sub              rsp, 16
                        mov              r11, 247
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx626_240
                        add              rsp, 16;                             jmp   n245_lit_integer_β
.Lx626_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n247_binop_α
n246_binop_β:           mov              r11, 247
                        add              rsp, 16;                             jmp   n245_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n247_binop_α:           sub              rsp, 16
                        mov              r11, 248
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n248_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n248_assign_α:          mov              r11, 249
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx628_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n249_statement_end_α
.Lx628_0:               .quad            .Lx628_0_s
.Lx628_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_end_α:   mov              r11, 250
                        mov              r10, 48
                        add              rsp, 80;                             jmp   n250_statement_begin_α
#=======================================================================================================================
# ZEXIT  <stmt 49, line 105: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n250_statement_begin_α: mov              r11, 251
                        mov              r10, 49;                             jmp   n251_var_α
n250_statement_begin_β: mov              r11, 251;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n251_var_α:             sub              rsp, 16
                        mov              r11, 252
                        mov              rax, qword ptr [r9 + 208]            # ZE
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n252_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n252_assign_α:          mov              r11, 253
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZE
                        mov              qword ptr [r9 + 216], rdx;           jmp   n253_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n253_statement_end_α:   mov              r11, 254
                        mov              r10, 49
                        add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 255
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
.Lseala2:               .string          "ADD1"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ADD1_α
                        lea              rdi, [rip + .Lseala2]
                        mov              rsi, qword ptr [rip + ADD1_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala3:               .string          "ZBODY"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ZBODY_α
                        lea              rdi, [rip + .Lseala3]
                        mov              rsi, qword ptr [rip + ZBODY_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
