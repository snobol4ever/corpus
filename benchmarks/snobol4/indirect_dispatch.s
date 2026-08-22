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
n0_statement_begin_α:                                                         jmp   n1_lit_integer_α
n0_statement_begin_β:                                                         jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_keyword_assign_snobol4_α
.Lx188_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx189_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx189_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx189_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_statement_end_α
.Lx189_0:               .quad            1
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
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_keyword_assign_snobol4_α
.Lx194_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx195_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx195_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lx195_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lx195_0:               .quad            0
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
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_unop_α
.Lx200_0:               .quad            1
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
                        mov              rdi, qword ptr [rip + .Lx202_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx202_240
                        add              rsp, 16;                             jmp   n10_unop_β
.Lx202_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n12_statement_end_α
.Lx202_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:    add              rsp, 48;                             jmp   n13_statement_begin_α
#=======================================================================================================================
#         ZCHK = 500
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:                                                        jmp   n14_lit_integer_α
n13_statement_begin_β:                                                        jmp   n17_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Lx207_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZCHK
                        mov              qword ptr [r9 + 72], rdx;            jmp   n16_statement_end_α
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
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx213_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZBUD
                        mov              qword ptr [r9 + 88], rdx;            jmp   n20_statement_end_α
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
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_assign_α
.Lx219_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZFLR
                        mov              qword ptr [r9 + 104], rdx;           jmp   n24_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    add              rsp, 16;                             jmp   n25_statement_begin_α
#=======================================================================================================================
#         DEFINE('ADD1(V)')                               :(ADD1_END)
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:                                                        jmp   n26_define_α
n25_statement_begin_β:                                                        jmp   n34_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_define_α:           mov              rdi, qword ptr [rip + .Lx226_0]
                        mov              rsi, qword ptr [rip + .Lx226_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n28_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx226_0]
                        lea              rsi, [rip + ADD1_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_statement_end_α
n26_define_β:                                                                 jmp   n25_statement_begin_β
.Lx226_0:               .quad            .Lx226_0_s
.Lx226_0_s:             .string          "ADD1"
.Lx226_1:               .quad            .Lx226_1_s
.Lx226_1_s:             .string          "V"
                                                                              jmp   .Lx227_245
#-----------------------------------------------------------------------------------------------------------------------
ADD1_α:                 sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # ADD1
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
                        cmp              rdx, 0;                              jbe   .Lx227_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # V
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx227_41
.Lx227_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx227_41:              lea              r10, [rip + ADD1_γ]
                        lea              r11, [rip + ADD1_ω]
                        push             r11
                        push             r10
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
                        cmp              rdx, 0;                              jbe   .Lx227_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # V
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx227_110
.Lx227_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx227_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx227_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # V
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx227_180
.Lx227_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx227_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx227_245:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:                                                          jmp   n34_statement_begin_α
#=======================================================================================================================
# ADD1    ADD1 = V + 1                                    :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:                                                        jmp   n29_var_α
n28_statement_begin_β:                                                        jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # V
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_binop_α
n30_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n28_statement_begin_β
.Lx233_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n31_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx234_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx234_7
.Lx234_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx234_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx234_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx234_4
.Lx234_3:               movq             xmm0, rsi
.Lx234_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx234_7:                                                                     jmp   n32_assign_α
.Lx234_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx234_240
                        add              rsp, 16;                             jmp   n30_lit_integer_β
.Lx234_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n32_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ADD1
                        mov              qword ptr [r9 + 8], rdx;             jmp   n33_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_end_α:    add              rsp, 48;                             jmp   RETURN
#=======================================================================================================================
# ADD1_END  <stmt 9, line 18: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_begin_α:                                                        jmp   n35_statement_end_α
n34_statement_begin_β:                                                        jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:                                                          jmp   n36_statement_begin_α
#=======================================================================================================================
#         ZFN = 'ADD1'
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:                                                        jmp   n37_lit_string_α
n36_statement_begin_β:                                                        jmp   n40_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_assign_α
.Lx244_0:               .quad            .Lx244_0_s
.Lx244_0_s:             .string          "ADD1"
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZFN
                        mov              qword ptr [r9 + 120], rdx;           jmp   n39_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_end_α:    add              rsp, 16;                             jmp   n40_statement_begin_α
#=======================================================================================================================
#         DEFINE('ZBODY(ZKN)')                            :(ZBODY_END)
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:                                                        jmp   n41_define_α
n40_statement_begin_β:                                                        jmp   n74_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n41_define_α:           mov              rdi, qword ptr [rip + .Lx251_0]
                        mov              rsi, qword ptr [rip + .Lx251_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n43_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx251_0]
                        lea              rsi, [rip + ZBODY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n42_statement_end_α
n41_define_β:                                                                 jmp   n40_statement_begin_β
.Lx251_0:               .quad            .Lx251_0_s
.Lx251_0_s:             .string          "ZBODY"
.Lx251_1:               .quad            .Lx251_1_s
.Lx251_1_s:             .string          "ZKN"
                                                                              jmp   .Lx252_245
#-----------------------------------------------------------------------------------------------------------------------
ZBODY_α:                sub              rsp, 64
                        mov              rax, qword ptr [r9 + 32]             # ZBODY
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx252_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # ZKN
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx252_41
.Lx252_10:              mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx252_41:              lea              r10, [rip + ZBODY_γ]
                        lea              r11, [rip + ZBODY_ω]
                        push             r11
                        push             r10
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
                        cmp              rdx, 0;                              jbe   .Lx252_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 48], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx252_110
.Lx252_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx252_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx252_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 48], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx252_180
.Lx252_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx252_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx252_245:
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:                                                          jmp   n74_statement_begin_α
#=======================================================================================================================
# ZBODY   ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:                                                        jmp   n44_lit_integer_α
n43_statement_begin_β:                                                        jmp   n47_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_assign_α
.Lx257_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZI
                        mov              qword ptr [r9 + 136], rdx;           jmp   n46_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:    add              rsp, 16;                             jmp   n47_statement_begin_α
#=======================================================================================================================
#         ZS = 0
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_begin_α:                                                        jmp   n48_lit_integer_α
n47_statement_begin_β:                                                        jmp   n51_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_assign_α
.Lx263_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZS
                        mov              qword ptr [r9 + 152], rdx;           jmp   n50_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_end_α:    add              rsp, 16;                             jmp   n51_statement_begin_α
#=======================================================================================================================
# ZBL     ZS = ZS + APPLY(ZFN, ZI)
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_begin_α:                                                        jmp   n52_var_α
n51_statement_begin_β:                                                        jmp   n59_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZS
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZFN
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n54_var_α
n53_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n51_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZI
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_call_α
n54_var_β:              add              rsp, 16;                             jmp   n53_var_β
#-----------------------------------------------------------------------------------------------------------------------
n55_call_α:             sub              rsp, 16
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
.Lrkfnzd273:            .string          "APPLY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd273]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx272_240
                        add              rsp, 16;                             jmp   n54_var_β
.Lx272_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n56_binop_α
n55_call_β:             add              rsp, 16;                             jmp   n54_var_β
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx274_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx274_7
.Lx274_2:               and              edx, 1;                              jz    .Lx274_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              eax, 5;                              je    .Lx274_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx274_4
.Lx274_3:               movq             xmm0, rsi
.Lx274_4:               cmp              ecx, 5;                              je    .Lx274_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx274_6
.Lx274_5:               movq             xmm1, rdi
.Lx274_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx274_7:                                                                     jmp   n57_assign_α
.Lx274_0:               mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx274_240
                        add              rsp, 32;                             jmp   n54_var_β
.Lx274_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n57_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZS
                        mov              qword ptr [r9 + 152], rdx;           jmp   n58_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:    add              rsp, 80;                             jmp   n59_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_begin_α:                                                        jmp   n60_var_α
n59_statement_begin_β:                                                        jmp   n70_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZI
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n61_var_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZKN
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n62_coerce_numeric_α
n61_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n59_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n62_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx283_1
                        cmp              eax, 3;                              jne   .Lx283_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx283_0
.Lx283_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_coerce_numeric_α
.Lx283_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n63_coerce_numeric_α
n62_coerce_numeric_β:   add              rsp, 16;                             jmp   n61_var_β
#-----------------------------------------------------------------------------------------------------------------------
n63_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx285_1
                        cmp              eax, 3;                              jne   .Lx285_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx285_0
.Lx285_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_cmp_test_α
.Lx285_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n64_cmp_test_α
n63_coerce_numeric_β:   add              rsp, 16;                             jmp   n62_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n64_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx287_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx287_239
                        add              rsp, 16;                             jmp   n63_coerce_numeric_β
.Lx287_239:                                                                   jmp   n65_var_α
.Lx287_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx287_240
                        add              rsp, 16;                             jmp   n63_coerce_numeric_β
.Lx287_240:                                                                   jmp   n65_var_α
n64_cmp_test_β:         add              rsp, 16;                             jmp   n63_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZI
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n66_lit_integer_α
n65_var_β:              add              rsp, 16;                             jmp   n64_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_binop_α
n66_lit_integer_β:      add              rsp, 16;                             jmp   n65_var_β
.Lx289_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n67_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx290_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx290_7
.Lx290_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx290_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx290_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx290_4
.Lx290_3:               movq             xmm0, rsi
.Lx290_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx290_7:                                                                     jmp   n68_assign_α
.Lx290_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx290_240
                        add              rsp, 16;                             jmp   n66_lit_integer_β
.Lx290_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n68_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZI
                        mov              qword ptr [r9 + 136], rdx;           jmp   n69_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_end_α:    add              rsp, 128;                            jmp   n51_statement_begin_α
#=======================================================================================================================
#         ZBODY = ZS                                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_begin_α:                                                        jmp   n71_var_α
n70_statement_begin_β:                                                        jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZS
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # ZBODY
                        mov              qword ptr [r9 + 40], rdx;            jmp   n73_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_end_α:    add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 17, line 26: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_begin_α:                                                        jmp   n75_statement_end_α
n74_statement_begin_β:                                                        jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:                                                          jmp   n76_statement_begin_α
#=======================================================================================================================
#         <stmt 18, line 51: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:                                                        jmp   n77_lit_string_α
n76_statement_begin_β:                                                        jmp   n83_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_var_α
.Lx306_0:               .quad            .Lx306_0_s
.Lx306_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZCHK
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_call_α
n78_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n76_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n79_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig309z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig309z:              .quad            1
                        .quad            .Lx309_2
                        .quad            .Lx309_2
                        .quad            16
.Lx309_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx309_29
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
.Lx309_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx309_240
                        add              rsp, 16;                             jmp   n78_var_β
.Lx309_240:                                                                   jmp   n80_binop_α
n79_call_β:                                                                   jmp   n78_var_β
.Lx309_0:               .quad            .Lx309_0_s
.Lx309_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n80_binop_α:            sub              rsp, 16
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
n81_assign_α:           mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n82_statement_end_α
.Lx311_0:               .quad            .Lx311_0_s
.Lx311_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_end_α:    add              rsp, 64;                             jmp   n83_statement_begin_α
#=======================================================================================================================
#         <stmt 19, line 52: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_begin_α:                                                        jmp   n84_var_α
n83_statement_begin_β:                                                        jmp   n89_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # ZFLR
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n85_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_binop_α
n85_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n83_statement_begin_β
.Lx317_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx318_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx318_7
.Lx318_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx318_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              eax, 5;                              je    .Lx318_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx318_4
.Lx318_3:               movq             xmm0, rsi
.Lx318_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx318_7:                                                                     jmp   n87_assign_α
.Lx318_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx318_240
                        add              rsp, 16;                             jmp   n85_lit_integer_β
.Lx318_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n87_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZFLR
                        mov              qword ptr [r9 + 104], rdx;           jmp   n88_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_end_α:    add              rsp, 48;                             jmp   n89_statement_begin_α
#=======================================================================================================================
#         <stmt 20, line 53: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_begin_α:                                                        jmp   n90_var_α
n89_statement_begin_β:                                                        jmp   n95_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZBUD
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n91_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_binop_α
n91_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n89_statement_begin_β
.Lx325_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n92_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx326_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx326_7
.Lx326_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx326_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              eax, 5;                              je    .Lx326_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx326_4
.Lx326_3:               movq             xmm0, rsi
.Lx326_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx326_7:                                                                     jmp   n93_assign_α
.Lx326_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx326_240
                        add              rsp, 16;                             jmp   n91_lit_integer_β
.Lx326_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n93_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZBUD
                        mov              qword ptr [r9 + 88], rdx;            jmp   n94_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_end_α:    add              rsp, 48;                             jmp   n95_statement_begin_α
#=======================================================================================================================
#         <stmt 21, line 54: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_begin_α:                                                        jmp   n96_var_α
n95_statement_begin_β:                                                        jmp   n99_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_call_α
#-----------------------------------------------------------------------------------------------------------------------
n97_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd334:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd334]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx333_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n95_statement_begin_β
.Lx333_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_statement_end_α
n97_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n95_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:    add              rsp, 32;                             jmp   n128_statement_begin_α
#=======================================================================================================================
#         <stmt 22, line 55: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_begin_α:                                                        jmp   n100_lit_integer_α
n99_statement_begin_β:                                                        jmp   n103_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n101_assign_α
.Lx339_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n101_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZK
                        mov              qword ptr [r9 + 168], rdx;           jmp   n102_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_end_α:   add              rsp, 16;                             jmp   n103_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 23, line 56: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_begin_α:                                                       jmp   n104_call_α
n103_statement_begin_β:                                                       jmp   n107_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd346:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd346]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx345_240
                        add              rsp, 16;                             jmp   n103_statement_begin_β
.Lx345_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n105_assign_α
n104_call_β:            add              rsp, 16;                             jmp   n103_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n105_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZT
                        mov              qword ptr [r9 + 184], rdx;           jmp   n106_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_end_α:   add              rsp, 16;                             jmp   n107_statement_begin_α
#=======================================================================================================================
#         <stmt 24, line 57: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_begin_α:                                                       jmp   n108_var_α
n107_statement_begin_β:                                                       jmp   n111_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_call_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig354z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig354z:              .quad            1
                        .quad            .Lx354_2
                        .quad            .Lx354_2
                        .quad            16
.Lx354_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx354_29
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
.Lx354_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx354_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n107_statement_begin_β
.Lx354_240:                                                                   jmp   n110_statement_end_α
n109_call_β:                                                                  jmp   n107_statement_begin_β
.Lx354_0:               .quad            .Lx354_0_s
.Lx354_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_end_α:   add              rsp, 32;                             jmp   n111_statement_begin_α
#=======================================================================================================================
#         <stmt 25, line 58: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_begin_α:                                                       jmp   n112_call_α
n111_statement_begin_β:                                                       jmp   n117_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd360:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd360]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx359_240
                        add              rsp, 16;                             jmp   n111_statement_begin_β
.Lx359_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_var_α
n112_call_β:            add              rsp, 16;                             jmp   n111_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n113_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZT
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n114_binop_α
n113_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n111_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n114_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx362_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx362_7
.Lx362_2:               and              edx, 1;                              jz    .Lx362_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx362_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx362_4
.Lx362_3:               movq             xmm0, rsi
.Lx362_4:               cmp              ecx, 5;                              je    .Lx362_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx362_6
.Lx362_5:               movq             xmm1, rdi
.Lx362_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx362_7:                                                                     jmp   n115_assign_α
.Lx362_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx362_240
                        add              rsp, 16;                             jmp   n113_var_β
.Lx362_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n115_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZE
                        mov              qword ptr [r9 + 200], rdx;           jmp   n116_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_end_α:   add              rsp, 48;                             jmp   n117_statement_begin_α
#=======================================================================================================================
#         <stmt 26, line 59: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_begin_α:                                                       jmp   n118_var_α
n117_statement_begin_β:                                                       jmp   n128_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # ZFLR
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n120_coerce_numeric_α
n119_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n117_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n120_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx371_1
                        cmp              eax, 3;                              jne   .Lx371_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx371_0
.Lx371_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n121_coerce_numeric_α
.Lx371_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n121_coerce_numeric_α
n120_coerce_numeric_β:  add              rsp, 16;                             jmp   n119_var_β
#-----------------------------------------------------------------------------------------------------------------------
n121_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx373_1
                        cmp              eax, 3;                              jne   .Lx373_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx373_0
.Lx373_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n122_cmp_test_α
.Lx373_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n122_cmp_test_α
n121_coerce_numeric_β:  add              rsp, 16;                             jmp   n120_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n122_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx375_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx375_239
                        add              rsp, 16;                             jmp   n121_coerce_numeric_β
.Lx375_239:                                                                   jmp   n123_var_α
.Lx375_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx375_240
                        add              rsp, 16;                             jmp   n121_coerce_numeric_β
.Lx375_240:                                                                   jmp   n123_var_α
n122_cmp_test_β:        add              rsp, 16;                             jmp   n121_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_lit_integer_α
n123_var_β:             add              rsp, 16;                             jmp   n122_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n125_binop_α
n124_lit_integer_β:     add              rsp, 16;                             jmp   n123_var_β
.Lx377_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n125_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx378_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx378_7
.Lx378_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx378_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              eax, 5;                              je    .Lx378_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx378_4
.Lx378_3:               movq             xmm0, rsi
.Lx378_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx378_7:                                                                     jmp   n126_assign_α
.Lx378_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx378_240
                        add              rsp, 16;                             jmp   n124_lit_integer_β
.Lx378_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n126_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n126_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZK
                        mov              qword ptr [r9 + 168], rdx;           jmp   n127_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_end_α:   add              rsp, 128;                            jmp   n103_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 27, line 60: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_begin_α:                                                       jmp   n129_call_α
n128_statement_begin_β:                                                       jmp   n132_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n129_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd385:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd385]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx384_240
                        add              rsp, 16;                             jmp   n128_statement_begin_β
.Lx384_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n130_assign_α
n129_call_β:            add              rsp, 16;                             jmp   n128_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n130_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZT
                        mov              qword ptr [r9 + 184], rdx;           jmp   n131_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_end_α:   add              rsp, 16;                             jmp   n132_statement_begin_α
#=======================================================================================================================
#         <stmt 28, line 61: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_begin_α:                                                       jmp   n133_var_α
n132_statement_begin_β:                                                       jmp   n138_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZT
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n134_var_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZBUD
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_binop_α
n134_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n132_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n135_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx393_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx393_7
.Lx393_2:               and              edx, 1;                              jz    .Lx393_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx393_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx393_4
.Lx393_3:               movq             xmm0, rsi
.Lx393_4:               cmp              ecx, 5;                              je    .Lx393_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx393_6
.Lx393_5:               movq             xmm1, rdi
.Lx393_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx393_7:                                                                     jmp   n136_assign_α
.Lx393_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx393_240
                        add              rsp, 16;                             jmp   n134_var_β
.Lx393_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n136_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZD
                        mov              qword ptr [r9 + 216], rdx;           jmp   n137_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_end_α:   add              rsp, 48;                             jmp   n138_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 62: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_begin_α:                                                       jmp   n139_lit_integer_α
n138_statement_begin_β:                                                       jmp   n142_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n140_assign_α
.Lx399_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n140_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZN
                        mov              qword ptr [r9 + 232], rdx;           jmp   n141_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_end_α:   add              rsp, 16;                             jmp   n142_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 30, line 63: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_begin_α:                                                       jmp   n143_var_α
n142_statement_begin_β:                                                       jmp   n146_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n144_call_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig407z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig407z:              .quad            1
                        .quad            .Lx407_2
                        .quad            .Lx407_2
                        .quad            16
.Lx407_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx407_29
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
.Lx407_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx407_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n142_statement_begin_β
.Lx407_240:                                                                   jmp   n145_statement_end_α
n144_call_β:                                                                  jmp   n142_statement_begin_β
.Lx407_0:               .quad            .Lx407_0_s
.Lx407_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_end_α:   add              rsp, 32;                             jmp   n146_statement_begin_α
#=======================================================================================================================
#         <stmt 31, line 64: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_begin_α:                                                       jmp   n147_var_α
n146_statement_begin_β:                                                       jmp   n152_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # ZN
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_var_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_binop_α
n148_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n146_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n149_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx414_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx414_7
.Lx414_2:               and              edx, 1;                              jz    .Lx414_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx414_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx414_4
.Lx414_3:               movq             xmm0, rsi
.Lx414_4:               cmp              ecx, 5;                              je    .Lx414_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx414_6
.Lx414_5:               movq             xmm1, rdi
.Lx414_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx414_7:                                                                     jmp   n150_assign_α
.Lx414_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx414_240
                        add              rsp, 16;                             jmp   n148_var_β
.Lx414_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n150_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n150_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZN
                        mov              qword ptr [r9 + 232], rdx;           jmp   n151_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:   add              rsp, 48;                             jmp   n152_statement_begin_α
#=======================================================================================================================
#         <stmt 32, line 65: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_begin_α:                                                       jmp   n153_call_α
n152_statement_begin_β:                                                       jmp   n159_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n153_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd421:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd421]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx420_240
                        add              rsp, 16;                             jmp   n152_statement_begin_β
.Lx420_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_var_α
n153_call_β:            add              rsp, 16;                             jmp   n152_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ZD
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_coerce_numeric_α
n154_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n152_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n155_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx424_1
                        cmp              eax, 3;                              jne   .Lx424_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              eax, 3;                              jne   .Lx424_0
.Lx424_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n156_coerce_numeric_α
.Lx424_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n156_coerce_numeric_α
n155_coerce_numeric_β:  add              rsp, 16;                             jmp   n154_var_β
#-----------------------------------------------------------------------------------------------------------------------
n156_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx426_1
                        cmp              eax, 3;                              jne   .Lx426_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx426_0
.Lx426_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_cmp_test_α
.Lx426_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n157_cmp_test_α
n156_coerce_numeric_β:  add              rsp, 16;                             jmp   n155_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n157_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx428_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx428_239
                        add              rsp, 16;                             jmp   n156_coerce_numeric_β
.Lx428_239:                                                                   jmp   n158_statement_end_α
.Lx428_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx428_240
                        add              rsp, 16;                             jmp   n156_coerce_numeric_β
.Lx428_240:                                                                   jmp   n158_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_end_α:   add              rsp, 80;                             jmp   n142_statement_begin_α
#=======================================================================================================================
#         <stmt 33, line 66: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_begin_α:                                                       jmp   n160_call_α
n159_statement_begin_β:                                                       jmp   n165_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd434:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd434]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx433_240
                        add              rsp, 16;                             jmp   n159_statement_begin_β
.Lx433_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n161_var_α
n160_call_β:            add              rsp, 16;                             jmp   n159_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZT
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n162_binop_α
n161_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n159_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n162_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx436_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx436_7
.Lx436_2:               and              edx, 1;                              jz    .Lx436_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx436_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx436_4
.Lx436_3:               movq             xmm0, rsi
.Lx436_4:               cmp              ecx, 5;                              je    .Lx436_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx436_6
.Lx436_5:               movq             xmm1, rdi
.Lx436_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx436_7:                                                                     jmp   n163_assign_α
.Lx436_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx436_240
                        add              rsp, 16;                             jmp   n161_var_β
.Lx436_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n163_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n163_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZE
                        mov              qword ptr [r9 + 200], rdx;           jmp   n164_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_end_α:   add              rsp, 48;                             jmp   n165_statement_begin_α
#=======================================================================================================================
#         <stmt 34, line 67: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_begin_α:                                                       jmp   n166_lit_string_α
n165_statement_begin_β:                                                       jmp   n171_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_var_α
.Lx442_0:               .quad            .Lx442_0_s
.Lx442_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # ZN
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n168_binop_α
n167_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n165_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n168_binop_α:           sub              rsp, 16
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
n169_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n170_statement_end_α
.Lx445_0:               .quad            .Lx445_0_s
.Lx445_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   add              rsp, 48;                             jmp   n171_statement_begin_α
#=======================================================================================================================
#         <stmt 35, line 68: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_begin_α:                                                       jmp   n172_lit_string_α
n171_statement_begin_β:                                                       jmp   n177_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n173_var_α
.Lx450_0:               .quad            .Lx450_0_s
.Lx450_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n174_binop_α
n173_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n171_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n174_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n175_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n175_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n176_statement_end_α
.Lx453_0:               .quad            .Lx453_0_s
.Lx453_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:   add              rsp, 48;                             jmp   n177_statement_begin_α
#=======================================================================================================================
#         <stmt 36, line 69: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_begin_α:                                                       jmp   n178_lit_string_α
n177_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n179_var_α
.Lx458_0:               .quad            .Lx458_0_s
.Lx458_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n179_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n180_lit_integer_α
n179_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n177_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n181_binop_α
n180_lit_integer_β:     add              rsp, 16;                             jmp   n179_var_β
.Lx460_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n181_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              eax, 104;                            jne   .Lx461_240
                        add              rsp, 16;                             jmp   n180_lit_integer_β
.Lx461_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n182_binop_α
n181_binop_β:           add              rsp, 16;                             jmp   n180_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n182_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n183_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n183_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n184_statement_end_α
.Lx463_0:               .quad            .Lx463_0_s
.Lx463_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_end_α:   add              rsp, 80;                             jmp   main_γ
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
