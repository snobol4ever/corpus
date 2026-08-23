                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 15
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 15
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "INC"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "ZBODY"
.Lgvan3:                .string          "ZKN"
.Lgvan4:                .string          "ZCHK"
.Lgvan5:                .string          "ZBUD"
.Lgvan6:                .string          "ZFLR"
.Lgvan7:                .string          "R"
.Lgvan8:                .string          "ZI"
.Lgvan9:                .string          "fixed_n"
.Lgvan10:               .string          "ZK"
.Lgvan11:               .string          "ZT"
.Lgvan12:               .string          "ZE"
.Lgvan13:               .string          "ZD"
.Lgvan14:               .string          "ZN"
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
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_keyword_assign_snobol4_α
.Lx250_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 3
                        mov              rdi, qword ptr [rip + .Lx251_0]
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
                        cmp              al, 104;                             jne   .Lx251_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx251_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_statement_end_α
.Lx251_0:               .quad            1
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
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_keyword_assign_snobol4_α
.Lx256_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lx257_0]
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
                        cmp              al, 104;                             jne   .Lx257_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lx257_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lx257_0:               .quad            0
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
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_unop_α
.Lx262_0:               .quad            1
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
                        mov              rdi, qword ptr [rip + .Lx264_0]
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
                        cmp              al, 104;                             jne   .Lx264_240
                        add              rsp, 16;                             jmp   n10_unop_β
.Lx264_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n12_statement_end_α
.Lx264_0:               .quad            10
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
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Lx269_0:               .quad            1000
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
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx275_0:               .quad            500
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
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_assign_α
.Lx281_0:               .quad            20
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
#         DEFINE('INC(N)')                                :(INCE)
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:  mov              r11, 26
                        mov              r10, 7;                              jmp   n26_define_α
n25_statement_begin_β:  mov              r11, 26;                             jmp   n34_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_define_α:           mov              r11, 27
                        mov              rdi, qword ptr [rip + .Lx288_0]
                        mov              rsi, qword ptr [rip + .Lx288_1]
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
                        mov              rdi, qword ptr [rip + .Lx288_0]
                        lea              rsi, [rip + INC_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_statement_end_α
n26_define_β:           mov              r11, 27;                             jmp   n25_statement_begin_β
.Lx288_0:               .quad            .Lx288_0_s
.Lx288_0_s:             .string          "INC"
.Lx288_1:               .quad            .Lx288_1_s
.Lx288_1_s:             .string          "N"
                                                                              jmp   .Lx289_245
#-----------------------------------------------------------------------------------------------------------------------
INC_α:                  sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # INC
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx289_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx289_41
.Lx289_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx289_41:              lea              rcx, [rip + INC_γ]
                        lea              rax, [rip + INC_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n28_statement_begin_α];  jmp   rax
INC_γ:                  mov              rdi, qword ptr [r9 + 0]              # INC
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx289_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx289_110
.Lx289_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx289_110:             mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
INC_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # INC
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx289_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx289_180
.Lx289_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx289_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx289_245:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    mov              r11, 28
                        mov              r10, 7;                              jmp   n34_statement_begin_α
#=======================================================================================================================
# INC    INC = N + 1                                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:  mov              r11, 29
                        mov              r10, 8;                              jmp   n29_var_α
n28_statement_begin_β:  mov              r11, 29;                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              sub              rsp, 16
                        mov              r11, 30
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_binop_α
n30_lit_integer_β:      mov              r11, 31
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n28_statement_begin_β
.Lx295_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n31_binop_α:            sub              rsp, 16
                        mov              r11, 32
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx296_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx296_7
.Lx296_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx296_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx296_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx296_4
.Lx296_3:               movq             xmm0, rsi
.Lx296_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx296_7:                                                                     jmp   n32_assign_α
.Lx296_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx296_240
                        add              rsp, 16;                             jmp   n30_lit_integer_β
.Lx296_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n32_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:           mov              r11, 33
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # INC
                        mov              qword ptr [r9 + 8], rdx;             jmp   n33_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_end_α:    mov              r11, 34
                        mov              r10, 8
                        add              rsp, 48;                             jmp   RETURN
#=======================================================================================================================
# INCE  <stmt 9, line 12: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_begin_α:  mov              r11, 35
                        mov              r10, 9;                              jmp   n35_statement_end_α
n34_statement_begin_β:  mov              r11, 35;                             jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:    mov              r11, 36
                        mov              r10, 9;                              jmp   n36_statement_begin_α
#=======================================================================================================================
#         DEFINE('ZBODY(ZKN)')                            :(ZBODY_END)
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:  mov              r11, 37
                        mov              r10, 10;                             jmp   n37_define_α
n36_statement_begin_β:  mov              r11, 37;                             jmp   n67_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_define_α:           mov              r11, 38
                        mov              rdi, qword ptr [rip + .Lx307_0]
                        mov              rsi, qword ptr [rip + .Lx307_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n39_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx307_0]
                        lea              rsi, [rip + ZBODY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n38_statement_end_α
n37_define_β:           mov              r11, 38;                             jmp   n36_statement_begin_β
.Lx307_0:               .quad            .Lx307_0_s
.Lx307_0_s:             .string          "ZBODY"
.Lx307_1:               .quad            .Lx307_1_s
.Lx307_1_s:             .string          "ZKN"
                                                                              jmp   .Lx308_245
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
                        cmp              rdx, 0;                              jbe   .Lx308_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # ZKN
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx308_41
.Lx308_10:              mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx308_41:              lea              rcx, [rip + ZBODY_γ]
                        lea              rax, [rip + ZBODY_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n39_statement_begin_α];  jmp   rax
ZBODY_γ:                mov              rdi, qword ptr [r9 + 32]             # ZBODY
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Lx308_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx308_110
.Lx308_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx308_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx308_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx308_180
.Lx308_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx308_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx308_245:
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_end_α:    mov              r11, 39
                        mov              r10, 10;                             jmp   n67_statement_begin_α
#=======================================================================================================================
# ZBODY   R = 0
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_begin_α:  mov              r11, 40
                        mov              r10, 11;                             jmp   n40_lit_integer_α
n39_statement_begin_β:  mov              r11, 40;                             jmp   n43_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      sub              rsp, 16
                        mov              r11, 41
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_assign_α
.Lx313_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:           mov              r11, 42
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # R
                        mov              qword ptr [r9 + 120], rdx;           jmp   n42_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:    mov              r11, 43
                        mov              r10, 11
                        add              rsp, 16;                             jmp   n43_statement_begin_α
#=======================================================================================================================
#         ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:  mov              r11, 44
                        mov              r10, 12;                             jmp   n44_lit_integer_α
n43_statement_begin_β:  mov              r11, 44;                             jmp   n47_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      sub              rsp, 16
                        mov              r11, 45
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_assign_α
.Lx319_0:               .quad            1
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
# ZBL     R = INC(R)
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_begin_α:  mov              r11, 48
                        mov              r10, 13;                             jmp   n48_var_α
n47_statement_begin_β:  mov              r11, 48;                             jmp   n52_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:              sub              rsp, 16
                        mov              r11, 49
                        mov              rax, qword ptr [r9 + 112]            # R
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n49_call_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_α:             sub              rsp, 16
                        mov              r11, 50
                        lea              rcx, [rip + .Lsig327z]
                        lea              rax, [rip + INC_α];                  jmp   rax
.Lsig327z:              .quad            1
                        .quad            .Lx327_2
                        .quad            .Lx327_2
                        .quad            16
.Lx327_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx327_29
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
.Lx327_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx327_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n47_statement_begin_β
.Lx327_240:                                                                   jmp   n50_assign_α
n49_call_β:             mov              r11, 50;                             jmp   n47_statement_begin_β
.Lx327_0:               .quad            .Lx327_0_s
.Lx327_0_s:             .string          "INC"
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:           mov              r11, 51
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # R
                        mov              qword ptr [r9 + 120], rdx;           jmp   n51_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_end_α:    mov              r11, 52
                        mov              r10, 13
                        add              rsp, 32;                             jmp   n52_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_begin_α:  mov              r11, 53
                        mov              r10, 14;                             jmp   n53_var_α
n52_statement_begin_β:  mov              r11, 53;                             jmp   n63_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              sub              rsp, 16
                        mov              r11, 54
                        mov              rax, qword ptr [r9 + 128]            # ZI
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              sub              rsp, 16
                        mov              r11, 55
                        mov              rax, qword ptr [r9 + 48]             # ZKN
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_coerce_numeric_α
n54_var_β:              mov              r11, 55
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n52_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n55_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 56
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx336_1
                        cmp              al, 3;                               jne   .Lx336_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx336_0
.Lx336_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_coerce_numeric_α
.Lx336_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n56_coerce_numeric_α
n55_coerce_numeric_β:   mov              r11, 56
                        add              rsp, 16;                             jmp   n54_var_β
#-----------------------------------------------------------------------------------------------------------------------
n56_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 57
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx338_1
                        cmp              al, 3;                               jne   .Lx338_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx338_0
.Lx338_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n57_cmp_test_α
.Lx338_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n57_cmp_test_α
n56_coerce_numeric_β:   mov              r11, 57
                        add              rsp, 16;                             jmp   n55_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n57_cmp_test_α:         sub              rsp, 16
                        mov              r11, 58
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx340_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx340_239
                        add              rsp, 16;                             jmp   n56_coerce_numeric_β
.Lx340_239:                                                                   jmp   n58_var_α
.Lx340_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx340_240
                        add              rsp, 16;                             jmp   n56_coerce_numeric_β
.Lx340_240:                                                                   jmp   n58_var_α
n57_cmp_test_β:         mov              r11, 58
                        add              rsp, 16;                             jmp   n56_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              sub              rsp, 16
                        mov              r11, 59
                        mov              rax, qword ptr [r9 + 128]            # ZI
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n59_lit_integer_α
n58_var_β:              mov              r11, 59
                        add              rsp, 16;                             jmp   n57_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:      sub              rsp, 16
                        mov              r11, 60
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n60_binop_α
n59_lit_integer_β:      mov              r11, 60
                        add              rsp, 16;                             jmp   n58_var_β
.Lx342_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:            sub              rsp, 16
                        mov              r11, 61
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx343_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx343_7
.Lx343_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx343_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx343_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx343_4
.Lx343_3:               movq             xmm0, rsi
.Lx343_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx343_7:                                                                     jmp   n61_assign_α
.Lx343_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx343_240
                        add              rsp, 16;                             jmp   n59_lit_integer_β
.Lx343_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n61_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_α:           mov              r11, 62
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZI
                        mov              qword ptr [r9 + 136], rdx;           jmp   n62_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_end_α:    mov              r11, 63
                        mov              r10, 14
                        add              rsp, 128;                            jmp   n47_statement_begin_α
#=======================================================================================================================
#         ZBODY = R                                       :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_begin_α:  mov              r11, 64
                        mov              r10, 15;                             jmp   n64_var_α
n63_statement_begin_β:  mov              r11, 64;                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:              sub              rsp, 16
                        mov              r11, 65
                        mov              rax, qword ptr [r9 + 112]            # R
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n65_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:           mov              r11, 66
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # ZBODY
                        mov              qword ptr [r9 + 40], rdx;            jmp   n66_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:    mov              r11, 67
                        mov              r10, 15
                        add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 16, line 19: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_begin_α:  mov              r11, 68
                        mov              r10, 16;                             jmp   n68_statement_end_α
n67_statement_begin_β:  mov              r11, 68;                             jmp   n69_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    mov              r11, 69
                        mov              r10, 16;                             jmp   n69_statement_begin_α
#=======================================================================================================================
#         <stmt 17, line 67: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:  mov              r11, 70
                        mov              r10, 17;                             jmp   n70_lit_string_α
n69_statement_begin_β:  mov              r11, 70;                             jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       sub              rsp, 16
                        mov              r11, 71
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_var_α
.Lx359_0:               .quad            .Lx359_0_s
.Lx359_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              sub              rsp, 16
                        mov              r11, 72
                        mov              rax, qword ptr [r9 + 64]             # ZCHK
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_call_α
n71_var_β:              mov              r11, 72
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n69_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n72_call_α:             sub              rsp, 16
                        mov              r11, 73
                        lea              rcx, [rip + .Lsig362z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig362z:              .quad            1
                        .quad            .Lx362_2
                        .quad            .Lx362_2
                        .quad            16
.Lx362_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx362_29
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
.Lx362_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx362_240
                        add              rsp, 16;                             jmp   n71_var_β
.Lx362_240:                                                                   jmp   n73_binop_α
n72_call_β:             mov              r11, 73;                             jmp   n71_var_β
.Lx362_0:               .quad            .Lx362_0_s
.Lx362_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n73_binop_α:            sub              rsp, 16
                        mov              r11, 74
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n74_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              r11, 75
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n75_statement_end_α
.Lx364_0:               .quad            .Lx364_0_s
.Lx364_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    mov              r11, 76
                        mov              r10, 17
                        add              rsp, 64;                             jmp   n76_statement_begin_α
#=======================================================================================================================
#         <stmt 18, line 68: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:  mov              r11, 77
                        mov              r10, 18;                             jmp   n77_var_α
n76_statement_begin_β:  mov              r11, 77;                             jmp   n80_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              sub              rsp, 16
                        mov              r11, 78
                        mov              rdi, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx369_240
                        add              rsp, 16;                             jmp   n76_statement_begin_β
.Lx369_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n78_assign_α
.Lx369_0:               .quad            .Lx369_0_s
.Lx369_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:           mov              r11, 79
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # fixed_n
                        mov              qword ptr [r9 + 152], rdx;           jmp   n79_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_end_α:    mov              r11, 80
                        mov              r10, 18
                        add              rsp, 16;                             jmp   n183_statement_begin_α
#=======================================================================================================================
#         <stmt 19, line 69: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_begin_α:  mov              r11, 81
                        mov              r10, 19;                             jmp   n81_var_α
n80_statement_begin_β:  mov              r11, 81;                             jmp   n86_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              sub              rsp, 16
                        mov              r11, 82
                        mov              rax, qword ptr [r9 + 96]             # ZFLR
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n82_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      sub              rsp, 16
                        mov              r11, 83
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_binop_α
n82_lit_integer_β:      mov              r11, 83
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n80_statement_begin_β
.Lx376_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n83_binop_α:            sub              rsp, 16
                        mov              r11, 84
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx377_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx377_7
.Lx377_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx377_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx377_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx377_4
.Lx377_3:               movq             xmm0, rsi
.Lx377_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx377_7:                                                                     jmp   n84_assign_α
.Lx377_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx377_240
                        add              rsp, 16;                             jmp   n82_lit_integer_β
.Lx377_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n84_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:           mov              r11, 85
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZFLR
                        mov              qword ptr [r9 + 104], rdx;           jmp   n85_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_end_α:    mov              r11, 86
                        mov              r10, 19
                        add              rsp, 48;                             jmp   n86_statement_begin_α
#=======================================================================================================================
#         <stmt 20, line 70: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_begin_α:  mov              r11, 87
                        mov              r10, 20;                             jmp   n87_var_α
n86_statement_begin_β:  mov              r11, 87;                             jmp   n92_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:              sub              rsp, 16
                        mov              r11, 88
                        mov              rax, qword ptr [r9 + 80]             # ZBUD
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n88_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:      sub              rsp, 16
                        mov              r11, 89
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n89_binop_α
n88_lit_integer_β:      mov              r11, 89
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n86_statement_begin_β
.Lx384_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n89_binop_α:            sub              rsp, 16
                        mov              r11, 90
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx385_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx385_7
.Lx385_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx385_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx385_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx385_4
.Lx385_3:               movq             xmm0, rsi
.Lx385_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx385_7:                                                                     jmp   n90_assign_α
.Lx385_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx385_240
                        add              rsp, 16;                             jmp   n88_lit_integer_β
.Lx385_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n90_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_α:           mov              r11, 91
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZBUD
                        mov              qword ptr [r9 + 88], rdx;            jmp   n91_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_end_α:    mov              r11, 92
                        mov              r10, 20
                        add              rsp, 48;                             jmp   n92_statement_begin_α
#=======================================================================================================================
#         <stmt 21, line 71: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_begin_α:  mov              r11, 93
                        mov              r10, 21;                             jmp   n93_var_α
n92_statement_begin_β:  mov              r11, 93;                             jmp   n97_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:              sub              rsp, 16
                        mov              r11, 94
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n94_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       sub              rsp, 16
                        mov              r11, 95
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx392_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n95_differ_α
n94_lit_string_β:       mov              r11, 95
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n92_statement_begin_β
.Lx392_0:               .quad            .Lx392_0_s
.Lx392_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n95_differ_α:           sub              rsp, 16
                        mov              r11, 96
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
                        test             eax, eax;                            je    .Lx394_240
                        add              rsp, 16;                             jmp   n94_lit_string_β
.Lx394_240:                                                                   jmp   n96_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_end_α:    mov              r11, 97
                        mov              r10, 21
                        add              rsp, 48;                             jmp   n126_statement_begin_α
#=======================================================================================================================
#         <stmt 22, line 72: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_begin_α:  mov              r11, 98
                        mov              r10, 22;                             jmp   n98_lit_integer_α
n97_statement_begin_β:  mov              r11, 98;                             jmp   n101_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:      sub              rsp, 16
                        mov              r11, 99
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n99_assign_α
.Lx399_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:           mov              r11, 100
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZK
                        mov              qword ptr [r9 + 168], rdx;           jmp   n100_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_end_α:   mov              r11, 101
                        mov              r10, 22
                        add              rsp, 16;                             jmp   n101_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 23, line 73: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_begin_α: mov              r11, 102
                        mov              r10, 23;                             jmp   n102_call_α
n101_statement_begin_β: mov              r11, 102;                            jmp   n105_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_α:            sub              rsp, 16
                        mov              r11, 103
                        .section         .rodata
.Lrkfnzd406:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd406]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 262213
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx405_240
                        add              rsp, 16;                             jmp   n101_statement_begin_β
.Lx405_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_assign_α
n102_call_β:            mov              r11, 103
                        add              rsp, 16;                             jmp   n101_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:          mov              r11, 104
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZT
                        mov              qword ptr [r9 + 184], rdx;           jmp   n104_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_end_α:   mov              r11, 105
                        mov              r10, 23
                        add              rsp, 16;                             jmp   n105_statement_begin_α
#=======================================================================================================================
#         <stmt 24, line 74: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_begin_α: mov              r11, 106
                        mov              r10, 24;                             jmp   n106_var_α
n105_statement_begin_β: mov              r11, 106;                            jmp   n109_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             sub              rsp, 16
                        mov              r11, 107
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_call_α
#-----------------------------------------------------------------------------------------------------------------------
n107_call_α:            sub              rsp, 16
                        mov              r11, 108
                        lea              rcx, [rip + .Lsig414z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig414z:              .quad            1
                        .quad            .Lx414_2
                        .quad            .Lx414_2
                        .quad            16
.Lx414_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx414_29
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
.Lx414_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx414_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n105_statement_begin_β
.Lx414_240:                                                                   jmp   n108_statement_end_α
n107_call_β:            mov              r11, 108;                            jmp   n105_statement_begin_β
.Lx414_0:               .quad            .Lx414_0_s
.Lx414_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_end_α:   mov              r11, 109
                        mov              r10, 24
                        add              rsp, 32;                             jmp   n109_statement_begin_α
#=======================================================================================================================
#         <stmt 25, line 75: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_begin_α: mov              r11, 110
                        mov              r10, 25;                             jmp   n110_call_α
n109_statement_begin_β: mov              r11, 110;                            jmp   n115_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n110_call_α:            sub              rsp, 16
                        mov              r11, 111
                        .section         .rodata
.Lrkfnzd420:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd420]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 262213
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx419_240
                        add              rsp, 16;                             jmp   n109_statement_begin_β
.Lx419_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n111_var_α
n110_call_β:            mov              r11, 111
                        add              rsp, 16;                             jmp   n109_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             sub              rsp, 16
                        mov              r11, 112
                        mov              rax, qword ptr [r9 + 176]            # ZT
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_binop_α
n111_var_β:             mov              r11, 112
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n109_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n112_binop_α:           sub              rsp, 16
                        mov              r11, 113
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx422_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx422_7
.Lx422_2:               and              edx, 1;                              jz    .Lx422_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx422_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx422_4
.Lx422_3:               movq             xmm0, rsi
.Lx422_4:               cmp              cl, 5;                               je    .Lx422_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx422_6
.Lx422_5:               movq             xmm1, rdi
.Lx422_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx422_7:                                                                     jmp   n113_assign_α
.Lx422_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx422_240
                        add              rsp, 16;                             jmp   n111_var_β
.Lx422_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n113_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n113_assign_α:          mov              r11, 114
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZE
                        mov              qword ptr [r9 + 200], rdx;           jmp   n114_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_end_α:   mov              r11, 115
                        mov              r10, 25
                        add              rsp, 48;                             jmp   n115_statement_begin_α
#=======================================================================================================================
#         <stmt 26, line 76: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_begin_α: mov              r11, 116
                        mov              r10, 26;                             jmp   n116_var_α
n115_statement_begin_β: mov              r11, 116;                            jmp   n126_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:             sub              rsp, 16
                        mov              r11, 117
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n117_var_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_α:             sub              rsp, 16
                        mov              r11, 118
                        mov              rax, qword ptr [r9 + 96]             # ZFLR
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_coerce_numeric_α
n117_var_β:             mov              r11, 118
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n115_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n118_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 119
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx431_1
                        cmp              al, 3;                               jne   .Lx431_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx431_0
.Lx431_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n119_coerce_numeric_α
.Lx431_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n119_coerce_numeric_α
n118_coerce_numeric_β:  mov              r11, 119
                        add              rsp, 16;                             jmp   n117_var_β
#-----------------------------------------------------------------------------------------------------------------------
n119_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 120
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx433_1
                        cmp              al, 3;                               jne   .Lx433_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx433_0
.Lx433_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_cmp_test_α
.Lx433_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n120_cmp_test_α
n119_coerce_numeric_β:  mov              r11, 120
                        add              rsp, 16;                             jmp   n118_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n120_cmp_test_α:        sub              rsp, 16
                        mov              r11, 121
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx435_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx435_239
                        add              rsp, 16;                             jmp   n119_coerce_numeric_β
.Lx435_239:                                                                   jmp   n121_var_α
.Lx435_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx435_240
                        add              rsp, 16;                             jmp   n119_coerce_numeric_β
.Lx435_240:                                                                   jmp   n121_var_α
n120_cmp_test_β:        mov              r11, 121
                        add              rsp, 16;                             jmp   n119_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:             sub              rsp, 16
                        mov              r11, 122
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n122_lit_integer_α
n121_var_β:             mov              r11, 122
                        add              rsp, 16;                             jmp   n120_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_integer_α:     sub              rsp, 16
                        mov              r11, 123
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n123_binop_α
n122_lit_integer_β:     mov              r11, 123
                        add              rsp, 16;                             jmp   n121_var_β
.Lx437_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n123_binop_α:           sub              rsp, 16
                        mov              r11, 124
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx438_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx438_7
.Lx438_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx438_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lx438_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx438_4
.Lx438_3:               movq             xmm0, rsi
.Lx438_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx438_7:                                                                     jmp   n124_assign_α
.Lx438_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx438_240
                        add              rsp, 16;                             jmp   n122_lit_integer_β
.Lx438_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n124_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:          mov              r11, 125
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZK
                        mov              qword ptr [r9 + 168], rdx;           jmp   n125_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_end_α:   mov              r11, 126
                        mov              r10, 26
                        add              rsp, 128;                            jmp   n101_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 27, line 77: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_begin_α: mov              r11, 127
                        mov              r10, 27;                             jmp   n127_call_α
n126_statement_begin_β: mov              r11, 127;                            jmp   n130_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_α:            sub              rsp, 16
                        mov              r11, 128
                        .section         .rodata
.Lrkfnzd445:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd445]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 262213
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx444_240
                        add              rsp, 16;                             jmp   n126_statement_begin_β
.Lx444_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n128_assign_α
n127_call_β:            mov              r11, 128
                        add              rsp, 16;                             jmp   n126_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n128_assign_α:          mov              r11, 129
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZT
                        mov              qword ptr [r9 + 184], rdx;           jmp   n129_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_end_α:   mov              r11, 130
                        mov              r10, 27
                        add              rsp, 16;                             jmp   n130_statement_begin_α
#=======================================================================================================================
#         <stmt 28, line 78: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_begin_α: mov              r11, 131
                        mov              r10, 28;                             jmp   n131_var_α
n130_statement_begin_β: mov              r11, 131;                            jmp   n136_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:             sub              rsp, 16
                        mov              r11, 132
                        mov              rax, qword ptr [r9 + 176]            # ZT
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n132_var_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             sub              rsp, 16
                        mov              r11, 133
                        mov              rax, qword ptr [r9 + 80]             # ZBUD
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_binop_α
n132_var_β:             mov              r11, 133
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n130_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n133_binop_α:           sub              rsp, 16
                        mov              r11, 134
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx453_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx453_7
.Lx453_2:               and              edx, 1;                              jz    .Lx453_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx453_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx453_4
.Lx453_3:               movq             xmm0, rsi
.Lx453_4:               cmp              cl, 5;                               je    .Lx453_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx453_6
.Lx453_5:               movq             xmm1, rdi
.Lx453_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx453_7:                                                                     jmp   n134_assign_α
.Lx453_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx453_240
                        add              rsp, 16;                             jmp   n132_var_β
.Lx453_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n134_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n134_assign_α:          mov              r11, 135
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZD
                        mov              qword ptr [r9 + 216], rdx;           jmp   n135_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_end_α:   mov              r11, 136
                        mov              r10, 28
                        add              rsp, 48;                             jmp   n136_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 79: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_begin_α: mov              r11, 137
                        mov              r10, 29;                             jmp   n137_lit_integer_α
n136_statement_begin_β: mov              r11, 137;                            jmp   n140_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:     sub              rsp, 16
                        mov              r11, 138
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n138_assign_α
.Lx459_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n138_assign_α:          mov              r11, 139
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZN
                        mov              qword ptr [r9 + 232], rdx;           jmp   n139_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_end_α:   mov              r11, 140
                        mov              r10, 29
                        add              rsp, 16;                             jmp   n140_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 30, line 80: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_begin_α: mov              r11, 141
                        mov              r10, 30;                             jmp   n141_var_α
n140_statement_begin_β: mov              r11, 141;                            jmp   n144_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             sub              rsp, 16
                        mov              r11, 142
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_call_α
#-----------------------------------------------------------------------------------------------------------------------
n142_call_α:            sub              rsp, 16
                        mov              r11, 143
                        lea              rcx, [rip + .Lsig467z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig467z:              .quad            1
                        .quad            .Lx467_2
                        .quad            .Lx467_2
                        .quad            16
.Lx467_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx467_29
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
.Lx467_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx467_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n140_statement_begin_β
.Lx467_240:                                                                   jmp   n143_statement_end_α
n142_call_β:            mov              r11, 143;                            jmp   n140_statement_begin_β
.Lx467_0:               .quad            .Lx467_0_s
.Lx467_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n143_statement_end_α:   mov              r11, 144
                        mov              r10, 30
                        add              rsp, 32;                             jmp   n144_statement_begin_α
#=======================================================================================================================
#         <stmt 31, line 81: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_begin_α: mov              r11, 145
                        mov              r10, 31;                             jmp   n145_var_α
n144_statement_begin_β: mov              r11, 145;                            jmp   n150_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:             sub              rsp, 16
                        mov              r11, 146
                        mov              rax, qword ptr [r9 + 224]            # ZN
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n146_var_α
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:             sub              rsp, 16
                        mov              r11, 147
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n147_binop_α
n146_var_β:             mov              r11, 147
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n144_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n147_binop_α:           sub              rsp, 16
                        mov              r11, 148
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx474_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx474_7
.Lx474_2:               and              edx, 1;                              jz    .Lx474_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx474_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx474_4
.Lx474_3:               movq             xmm0, rsi
.Lx474_4:               cmp              cl, 5;                               je    .Lx474_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx474_6
.Lx474_5:               movq             xmm1, rdi
.Lx474_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx474_7:                                                                     jmp   n148_assign_α
.Lx474_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx474_240
                        add              rsp, 16;                             jmp   n146_var_β
.Lx474_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n148_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n148_assign_α:          mov              r11, 149
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZN
                        mov              qword ptr [r9 + 232], rdx;           jmp   n149_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_end_α:   mov              r11, 150
                        mov              r10, 31
                        add              rsp, 48;                             jmp   n150_statement_begin_α
#=======================================================================================================================
#         <stmt 32, line 82: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_begin_α: mov              r11, 151
                        mov              r10, 32;                             jmp   n151_call_α
n150_statement_begin_β: mov              r11, 151;                            jmp   n157_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_α:            sub              rsp, 16
                        mov              r11, 152
                        .section         .rodata
.Lrkfnzd481:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd481]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 262213
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx480_240
                        add              rsp, 16;                             jmp   n150_statement_begin_β
.Lx480_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n152_var_α
n151_call_β:            mov              r11, 152
                        add              rsp, 16;                             jmp   n150_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:             sub              rsp, 16
                        mov              r11, 153
                        mov              rax, qword ptr [r9 + 208]            # ZD
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_coerce_numeric_α
n152_var_β:             mov              r11, 153
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n150_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n153_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 154
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              al, 5;                               je    .Lx484_1
                        cmp              al, 3;                               jne   .Lx484_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lx484_0
.Lx484_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n154_coerce_numeric_α
.Lx484_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n154_coerce_numeric_α
n153_coerce_numeric_β:  mov              r11, 154
                        add              rsp, 16;                             jmp   n152_var_β
#-----------------------------------------------------------------------------------------------------------------------
n154_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 155
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx486_1
                        cmp              al, 3;                               jne   .Lx486_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              al, 3;                               jne   .Lx486_0
.Lx486_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n155_cmp_test_α
.Lx486_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n155_cmp_test_α
n154_coerce_numeric_β:  mov              r11, 155
                        add              rsp, 16;                             jmp   n153_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n155_cmp_test_α:        sub              rsp, 16
                        mov              r11, 156
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx488_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx488_239
                        add              rsp, 16;                             jmp   n154_coerce_numeric_β
.Lx488_239:                                                                   jmp   n156_statement_end_α
.Lx488_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx488_240
                        add              rsp, 16;                             jmp   n154_coerce_numeric_β
.Lx488_240:                                                                   jmp   n156_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_end_α:   mov              r11, 157
                        mov              r10, 32
                        add              rsp, 80;                             jmp   n140_statement_begin_α
#=======================================================================================================================
#         <stmt 33, line 83: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_begin_α: mov              r11, 158
                        mov              r10, 33;                             jmp   n158_call_α
n157_statement_begin_β: mov              r11, 158;                            jmp   n163_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n158_call_α:            sub              rsp, 16
                        mov              r11, 159
                        .section         .rodata
.Lrkfnzd494:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd494]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 262213
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx493_240
                        add              rsp, 16;                             jmp   n157_statement_begin_β
.Lx493_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_var_α
n158_call_β:            mov              r11, 159
                        add              rsp, 16;                             jmp   n157_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:             sub              rsp, 16
                        mov              r11, 160
                        mov              rax, qword ptr [r9 + 176]            # ZT
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_binop_α
n159_var_β:             mov              r11, 160
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n157_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n160_binop_α:           sub              rsp, 16
                        mov              r11, 161
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx496_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx496_7
.Lx496_2:               and              edx, 1;                              jz    .Lx496_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx496_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx496_4
.Lx496_3:               movq             xmm0, rsi
.Lx496_4:               cmp              cl, 5;                               je    .Lx496_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx496_6
.Lx496_5:               movq             xmm1, rdi
.Lx496_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx496_7:                                                                     jmp   n161_assign_α
.Lx496_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx496_240
                        add              rsp, 16;                             jmp   n159_var_β
.Lx496_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n161_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n161_assign_α:          mov              r11, 162
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZE
                        mov              qword ptr [r9 + 200], rdx;           jmp   n162_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_end_α:   mov              r11, 163
                        mov              r10, 33
                        add              rsp, 48;                             jmp   n163_statement_begin_α
#=======================================================================================================================
#         <stmt 34, line 84: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_begin_α: mov              r11, 164
                        mov              r10, 34;                             jmp   n164_lit_string_α
n163_statement_begin_β: mov              r11, 164;                            jmp   n169_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:      sub              rsp, 16
                        mov              r11, 165
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx502_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n165_var_α
.Lx502_0:               .quad            .Lx502_0_s
.Lx502_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:             sub              rsp, 16
                        mov              r11, 166
                        mov              rax, qword ptr [r9 + 224]            # ZN
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n166_binop_α
n165_var_β:             mov              r11, 166
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n163_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n166_binop_α:           sub              rsp, 16
                        mov              r11, 167
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n167_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n167_assign_α:          mov              r11, 168
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx505_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n168_statement_end_α
.Lx505_0:               .quad            .Lx505_0_s
.Lx505_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_end_α:   mov              r11, 169
                        mov              r10, 34
                        add              rsp, 48;                             jmp   n169_statement_begin_α
#=======================================================================================================================
#         <stmt 35, line 85: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n169_statement_begin_α: mov              r11, 170
                        mov              r10, 35;                             jmp   n170_lit_string_α
n169_statement_begin_β: mov              r11, 170;                            jmp   n175_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:      sub              rsp, 16
                        mov              r11, 171
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n171_var_α
.Lx510_0:               .quad            .Lx510_0_s
.Lx510_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n171_var_α:             sub              rsp, 16
                        mov              r11, 172
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n172_binop_α
n171_var_β:             mov              r11, 172
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n169_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n172_binop_α:           sub              rsp, 16
                        mov              r11, 173
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n173_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n173_assign_α:          mov              r11, 174
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n174_statement_end_α
.Lx513_0:               .quad            .Lx513_0_s
.Lx513_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_end_α:   mov              r11, 175
                        mov              r10, 35
                        add              rsp, 48;                             jmp   n175_statement_begin_α
#=======================================================================================================================
#         <stmt 36, line 86: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_begin_α: mov              r11, 176
                        mov              r10, 36;                             jmp   n176_lit_string_α
n175_statement_begin_β: mov              r11, 176;                            jmp   n243_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:      sub              rsp, 16
                        mov              r11, 177
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx518_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n177_var_α
.Lx518_0:               .quad            .Lx518_0_s
.Lx518_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:             sub              rsp, 16
                        mov              r11, 178
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n178_lit_integer_α
n177_var_β:             mov              r11, 178
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n175_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_integer_α:     sub              rsp, 16
                        mov              r11, 179
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n179_binop_α
n178_lit_integer_β:     mov              r11, 179
                        add              rsp, 16;                             jmp   n177_var_β
.Lx520_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n179_binop_α:           sub              rsp, 16
                        mov              r11, 180
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx521_240
                        add              rsp, 16;                             jmp   n178_lit_integer_β
.Lx521_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n180_binop_α
n179_binop_β:           mov              r11, 180
                        add              rsp, 16;                             jmp   n178_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n180_binop_α:           sub              rsp, 16
                        mov              r11, 181
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n181_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n181_assign_α:          mov              r11, 182
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n182_statement_end_α
.Lx523_0:               .quad            .Lx523_0_s
.Lx523_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_end_α:   mov              r11, 183
                        mov              r10, 36
                        add              rsp, 80;                             jmp   n243_statement_begin_α
#=======================================================================================================================
# ZFIXRUN  <stmt 37, line 87: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_begin_α: mov              r11, 184
                        mov              r10, 37;                             jmp   n184_var_α
n183_statement_begin_β: mov              r11, 184;                            jmp   n188_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             sub              rsp, 16
                        mov              r11, 185
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n185_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:      sub              rsp, 16
                        mov              r11, 186
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n186_differ_α
n185_lit_string_β:      mov              r11, 186
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n183_statement_begin_β
.Lx529_0:               .quad            .Lx529_0_s
.Lx529_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n186_differ_α:          sub              rsp, 16
                        mov              r11, 187
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
                        test             eax, eax;                            je    .Lx531_240
                        add              rsp, 16;                             jmp   n185_lit_string_β
.Lx531_240:                                                                   jmp   n187_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_end_α:   mov              r11, 188
                        mov              r10, 37
                        add              rsp, 48;                             jmp   n192_statement_begin_α
#=======================================================================================================================
#         <stmt 38, line 88: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_begin_α: mov              r11, 189
                        mov              r10, 38;                             jmp   n189_var_α
n188_statement_begin_β: mov              r11, 189;                            jmp   n192_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:             sub              rsp, 16
                        mov              r11, 190
                        mov              rax, qword ptr [r9 + 144]            # fixed_n
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n190_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n190_assign_α:          mov              r11, 191
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZK
                        mov              qword ptr [r9 + 168], rdx;           jmp   n191_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_end_α:   mov              r11, 192
                        mov              r10, 38
                        add              rsp, 16;                             jmp   n192_statement_begin_α
#=======================================================================================================================
# ZFB  <stmt 39, line 89: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_begin_α: mov              r11, 193
                        mov              r10, 39;                             jmp   n193_call_α
n192_statement_begin_β: mov              r11, 193;                            jmp   n196_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n193_call_α:            sub              rsp, 16
                        mov              r11, 194
                        .section         .rodata
.Lrkfnzd543:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd543]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 262213
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx542_240
                        add              rsp, 16;                             jmp   n192_statement_begin_β
.Lx542_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n194_assign_α
n193_call_β:            mov              r11, 194
                        add              rsp, 16;                             jmp   n192_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n194_assign_α:          mov              r11, 195
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZT
                        mov              qword ptr [r9 + 184], rdx;           jmp   n195_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_end_α:   mov              r11, 196
                        mov              r10, 39
                        add              rsp, 16;                             jmp   n196_statement_begin_α
#=======================================================================================================================
#         <stmt 40, line 90: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n196_statement_begin_α: mov              r11, 197
                        mov              r10, 40;                             jmp   n197_lit_integer_α
n196_statement_begin_β: mov              r11, 197;                            jmp   n200_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:     sub              rsp, 16
                        mov              r11, 198
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx549_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n198_assign_α
.Lx549_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n198_assign_α:          mov              r11, 199
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZN
                        mov              qword ptr [r9 + 232], rdx;           jmp   n199_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_end_α:   mov              r11, 200
                        mov              r10, 40
                        add              rsp, 16;                             jmp   n200_statement_begin_α
#=======================================================================================================================
# ZFL  <stmt 41, line 91: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_begin_α: mov              r11, 201
                        mov              r10, 41;                             jmp   n201_var_α
n200_statement_begin_β: mov              r11, 201;                            jmp   n204_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:             sub              rsp, 16
                        mov              r11, 202
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_call_α
#-----------------------------------------------------------------------------------------------------------------------
n202_call_α:            sub              rsp, 16
                        mov              r11, 203
                        lea              rcx, [rip + .Lsig557z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig557z:              .quad            1
                        .quad            .Lx557_2
                        .quad            .Lx557_2
                        .quad            16
.Lx557_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx557_29
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
.Lx557_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx557_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n200_statement_begin_β
.Lx557_240:                                                                   jmp   n203_statement_end_α
n202_call_β:            mov              r11, 203;                            jmp   n200_statement_begin_β
.Lx557_0:               .quad            .Lx557_0_s
.Lx557_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n203_statement_end_α:   mov              r11, 204
                        mov              r10, 41
                        add              rsp, 32;                             jmp   n204_statement_begin_α
#=======================================================================================================================
#         <stmt 42, line 92: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n204_statement_begin_α: mov              r11, 205
                        mov              r10, 42;                             jmp   n205_var_α
n204_statement_begin_β: mov              r11, 205;                            jmp   n210_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n205_var_α:             sub              rsp, 16
                        mov              r11, 206
                        mov              rax, qword ptr [r9 + 224]            # ZN
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n206_var_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_α:             sub              rsp, 16
                        mov              r11, 207
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n207_binop_α
n206_var_β:             mov              r11, 207
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n204_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n207_binop_α:           sub              rsp, 16
                        mov              r11, 208
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx564_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx564_7
.Lx564_2:               and              edx, 1;                              jz    .Lx564_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx564_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx564_4
.Lx564_3:               movq             xmm0, rsi
.Lx564_4:               cmp              cl, 5;                               je    .Lx564_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx564_6
.Lx564_5:               movq             xmm1, rdi
.Lx564_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx564_7:                                                                     jmp   n208_assign_α
.Lx564_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx564_240
                        add              rsp, 16;                             jmp   n206_var_β
.Lx564_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n208_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n208_assign_α:          mov              r11, 209
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZN
                        mov              qword ptr [r9 + 232], rdx;           jmp   n209_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n209_statement_end_α:   mov              r11, 210
                        mov              r10, 42
                        add              rsp, 48;                             jmp   n210_statement_begin_α
#=======================================================================================================================
#         <stmt 43, line 93: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n210_statement_begin_α: mov              r11, 211
                        mov              r10, 43;                             jmp   n211_var_α
n210_statement_begin_β: mov              r11, 211;                            jmp   n217_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n211_var_α:             sub              rsp, 16
                        mov              r11, 212
                        mov              rax, qword ptr [r9 + 224]            # ZN
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n212_var_α
#-----------------------------------------------------------------------------------------------------------------------
n212_var_α:             sub              rsp, 16
                        mov              r11, 213
                        mov              rax, qword ptr [r9 + 144]            # fixed_n
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n213_coerce_numeric_α
n212_var_β:             mov              r11, 213
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n210_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n213_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 214
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx573_1
                        cmp              al, 3;                               jne   .Lx573_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx573_0
.Lx573_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n214_coerce_numeric_α
.Lx573_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n214_coerce_numeric_α
n213_coerce_numeric_β:  mov              r11, 214
                        add              rsp, 16;                             jmp   n212_var_β
#-----------------------------------------------------------------------------------------------------------------------
n214_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 215
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx575_1
                        cmp              al, 3;                               jne   .Lx575_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx575_0
.Lx575_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n215_cmp_test_α
.Lx575_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n215_cmp_test_α
n214_coerce_numeric_β:  mov              r11, 215
                        add              rsp, 16;                             jmp   n213_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n215_cmp_test_α:        sub              rsp, 16
                        mov              r11, 216
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx577_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx577_239
                        add              rsp, 16;                             jmp   n214_coerce_numeric_β
.Lx577_239:                                                                   jmp   n216_statement_end_α
.Lx577_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx577_240
                        add              rsp, 16;                             jmp   n214_coerce_numeric_β
.Lx577_240:                                                                   jmp   n216_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n216_statement_end_α:   mov              r11, 217
                        mov              r10, 43
                        add              rsp, 80;                             jmp   n200_statement_begin_α
#=======================================================================================================================
#         <stmt 44, line 94: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_begin_α: mov              r11, 218
                        mov              r10, 44;                             jmp   n218_call_α
n217_statement_begin_β: mov              r11, 218;                            jmp   n223_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n218_call_α:            sub              rsp, 16
                        mov              r11, 219
                        .section         .rodata
.Lrkfnzd583:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd583]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 262213
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx582_240
                        add              rsp, 16;                             jmp   n217_statement_begin_β
.Lx582_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n219_var_α
n218_call_β:            mov              r11, 219
                        add              rsp, 16;                             jmp   n217_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             sub              rsp, 16
                        mov              r11, 220
                        mov              rax, qword ptr [r9 + 176]            # ZT
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_binop_α
n219_var_β:             mov              r11, 220
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n217_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n220_binop_α:           sub              rsp, 16
                        mov              r11, 221
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx585_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx585_7
.Lx585_2:               and              edx, 1;                              jz    .Lx585_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx585_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx585_4
.Lx585_3:               movq             xmm0, rsi
.Lx585_4:               cmp              cl, 5;                               je    .Lx585_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx585_6
.Lx585_5:               movq             xmm1, rdi
.Lx585_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx585_7:                                                                     jmp   n221_assign_α
.Lx585_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx585_240
                        add              rsp, 16;                             jmp   n219_var_β
.Lx585_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n221_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n221_assign_α:          mov              r11, 222
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZE
                        mov              qword ptr [r9 + 200], rdx;           jmp   n222_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n222_statement_end_α:   mov              r11, 223
                        mov              r10, 44
                        add              rsp, 48;                             jmp   n223_statement_begin_α
#=======================================================================================================================
#         <stmt 45, line 95: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_begin_α: mov              r11, 224
                        mov              r10, 45;                             jmp   n224_lit_string_α
n223_statement_begin_β: mov              r11, 224;                            jmp   n229_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:      sub              rsp, 16
                        mov              r11, 225
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx591_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n225_var_α
.Lx591_0:               .quad            .Lx591_0_s
.Lx591_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n225_var_α:             sub              rsp, 16
                        mov              r11, 226
                        mov              rax, qword ptr [r9 + 224]            # ZN
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n226_binop_α
n225_var_β:             mov              r11, 226
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n223_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n226_binop_α:           sub              rsp, 16
                        mov              r11, 227
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n227_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n227_assign_α:          mov              r11, 228
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx594_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n228_statement_end_α
.Lx594_0:               .quad            .Lx594_0_s
.Lx594_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n228_statement_end_α:   mov              r11, 229
                        mov              r10, 45
                        add              rsp, 48;                             jmp   n229_statement_begin_α
#=======================================================================================================================
#         <stmt 46, line 96: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n229_statement_begin_α: mov              r11, 230
                        mov              r10, 46;                             jmp   n230_lit_string_α
n229_statement_begin_β: mov              r11, 230;                            jmp   n235_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_string_α:      sub              rsp, 16
                        mov              r11, 231
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx599_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n231_var_α
.Lx599_0:               .quad            .Lx599_0_s
.Lx599_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:             sub              rsp, 16
                        mov              r11, 232
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n232_binop_α
n231_var_β:             mov              r11, 232
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n229_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n232_binop_α:           sub              rsp, 16
                        mov              r11, 233
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n233_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n233_assign_α:          mov              r11, 234
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n234_statement_end_α
.Lx602_0:               .quad            .Lx602_0_s
.Lx602_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n234_statement_end_α:   mov              r11, 235
                        mov              r10, 46
                        add              rsp, 48;                             jmp   n235_statement_begin_α
#=======================================================================================================================
#         <stmt 47, line 97: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_begin_α: mov              r11, 236
                        mov              r10, 47;                             jmp   n236_lit_string_α
n235_statement_begin_β: mov              r11, 236;                            jmp   n243_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_string_α:      sub              rsp, 16
                        mov              r11, 237
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx607_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n237_var_α
.Lx607_0:               .quad            .Lx607_0_s
.Lx607_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:             sub              rsp, 16
                        mov              r11, 238
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n238_lit_integer_α
n237_var_β:             mov              r11, 238
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n235_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_integer_α:     sub              rsp, 16
                        mov              r11, 239
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx609_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n239_binop_α
n238_lit_integer_β:     mov              r11, 239
                        add              rsp, 16;                             jmp   n237_var_β
.Lx609_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n239_binop_α:           sub              rsp, 16
                        mov              r11, 240
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx610_240
                        add              rsp, 16;                             jmp   n238_lit_integer_β
.Lx610_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n240_binop_α
n239_binop_β:           mov              r11, 240
                        add              rsp, 16;                             jmp   n238_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n240_binop_α:           sub              rsp, 16
                        mov              r11, 241
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n241_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n241_assign_α:          mov              r11, 242
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx612_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n242_statement_end_α
.Lx612_0:               .quad            .Lx612_0_s
.Lx612_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n242_statement_end_α:   mov              r11, 243
                        mov              r10, 47
                        add              rsp, 80;                             jmp   n243_statement_begin_α
#=======================================================================================================================
# ZEXIT  <stmt 48, line 98: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n243_statement_begin_α: mov              r11, 244
                        mov              r10, 48;                             jmp   n244_var_α
n243_statement_begin_β: mov              r11, 244;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n244_var_α:             sub              rsp, 16
                        mov              r11, 245
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n245_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n245_assign_α:          mov              r11, 246
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZE
                        mov              qword ptr [r9 + 200], rdx;           jmp   n246_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n246_statement_end_α:   mov              r11, 247
                        mov              r10, 48
                        add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 248
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
.Lseala2:               .string          "INC"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            INC_α
                        lea              rdi, [rip + .Lseala2]
                        mov              rsi, qword ptr [rip + INC_α@GOTPCREL]
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
