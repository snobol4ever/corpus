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
.Lgvan0:                .string          "ROMAN"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "T"
.Lgvan3:                .string          "ZBODY"
.Lgvan4:                .string          "ZKN"
.Lgvan5:                .string          "ZCHK"
.Lgvan6:                .string          "ZBUD"
.Lgvan7:                .string          "ZFLR"
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
                        sub              rsp, 0
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
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_keyword_assign_snobol4_α
.Lx282_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 3
                        mov              rdi, qword ptr [rip + .Lx283_0]
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
                        cmp              al, 104;                             jne   .Lx283_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx283_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_statement_end_α
.Lx283_0:               .quad            1
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
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_keyword_assign_snobol4_α
.Lx288_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lx289_0]
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
                        cmp              al, 104;                             jne   .Lx289_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lx289_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lx289_0:               .quad            0
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
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_unop_α
.Lx294_0:               .quad            1
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
                        mov              rdi, qword ptr [rip + .Lx296_0]
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
                        cmp              al, 104;                             jne   .Lx296_240
                        add              rsp, 16;                             jmp   n10_unop_β
.Lx296_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n12_statement_end_α
.Lx296_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:    mov              r11, 13
                        mov              r10, 3
                        add              rsp, 48;                             jmp   n13_statement_begin_α
#=======================================================================================================================
#         ZCHK = 200
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:  mov              r11, 14
                        mov              r10, 4;                              jmp   n14_lit_integer_α
n13_statement_begin_β:  mov              r11, 14;                             jmp   n17_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      sub              rsp, 16
                        mov              r11, 15
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Lx301_0:               .quad            200
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              r11, 16
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZCHK
                        mov              qword ptr [r9 + 88], rdx;            jmp   n16_statement_end_α
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
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx307_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              r11, 20
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZBUD
                        mov              qword ptr [r9 + 104], rdx;           jmp   n20_statement_end_α
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
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_assign_α
.Lx313_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              r11, 24
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZFLR
                        mov              qword ptr [r9 + 120], rdx;           jmp   n24_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    mov              r11, 25
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n25_statement_begin_α
#=======================================================================================================================
#         DEFINE('ROMAN(N)T')                             :(ROMAN_END)
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:  mov              r11, 26
                        mov              r10, 7;                              jmp   n26_define_α
n25_statement_begin_β:  mov              r11, 26;                             jmp   n60_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_define_α:           mov              r11, 27
                        mov              rdi, qword ptr [rip + .Lx320_0]
                        mov              rsi, qword ptr [rip + .Lx320_1]
                        mov              edx, 2
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
                        mov              rdi, qword ptr [rip + .Lx320_0]
                        lea              rsi, [rip + ROMAN_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_statement_end_α
n26_define_β:           mov              r11, 27;                             jmp   n25_statement_begin_β
.Lx320_0:               .quad            .Lx320_0_s
.Lx320_0_s:             .string          "ROMAN"
.Lx320_1:               .quad            .Lx320_1_s
.Lx320_1_s:             .string          "N,T"
                                                                              jmp   .Lx321_245
#-----------------------------------------------------------------------------------------------------------------------
ROMAN_α:                sub              rsp, 80
                        mov              rax, qword ptr [r9 + 32]             # T
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              rax, qword ptr [r9 + 0]              # ROMAN
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 48], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        cmp              rdx, 0;                              jbe   .Lx321_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx321_41
.Lx321_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx321_41:              lea              rcx, [rip + ROMAN_γ]
                        lea              rax, [rip + ROMAN_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n28_statement_begin_α];  jmp   rax
ROMAN_γ:                mov              rdi, qword ptr [r9 + 0]              # ROMAN
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax             # T
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Lx321_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx321_110
.Lx321_80:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 24], rax
.Lx321_110:             mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 80
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ROMAN_ω:                mov              rcx, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 0], rax              # ROMAN
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax             # T
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Lx321_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx321_180
.Lx321_150:             mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 24], rax
.Lx321_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx321_245:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    mov              r11, 28
                        mov              r10, 7;                              jmp   n60_statement_begin_α
#=======================================================================================================================
# ROMAN   N ? RPOS(1) LEN(1) . T =                        :F(RETURN)
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n30_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n30_match_begin_α:      mov              r11, 31
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx328_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx328_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n31_match_rpos_α
n30_match_begin_β:      mov              r11, 31
.Lx328_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx328_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx328_1
                                                                              jmp   .Lx328_0
.Lx328_1:
n30_match_begin_af:     mov              r11, 31
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 16;                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n31_match_rpos_α:       mov              r11, 32
                        mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n30_match_begin_β
                                                                              jmp   n32_match_assign_save_α
n31_match_rpos_β:       mov              r11, 32;                             jmp   n30_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n32_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 33
                        mov              dword ptr [rsp + 0], r14d;           jmp   n33_match_len_α
n32_match_assign_save_β:
                        mov              r11, 33
                        add              rsp, 16;                             jmp   n30_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n33_match_len_α:        mov              r11, 34
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jle   .Lx332_240
                        add              rsp, 16;                             jmp   n30_match_begin_β
.Lx332_240:             add              r14d, 1;                             jmp   n34_match_assign_cond_α
n33_match_len_β:        mov              r11, 34
                        sub              r14d, 1
                        add              rsp, 16;                             jmp   n30_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n34_match_assign_cond_α:
                        mov              r11, 35
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n35_match_end_α
n34_match_assign_cond_β:
                        mov              r11, 35
                        sub              r12, 24;                             jmp   n33_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n35_match_end_α:        mov              r11, 36
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              eax, dword ptr [rbp + -40]           # repl_start
                        mov              dword ptr [rbp + -48], eax
                        mov              qword ptr [rbp + -56], r14           # repl_end
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rax, qword ptr [rbp + -32]           # outer_Δ
                        mov              rcx, qword ptr [rbp + -16]           # outer_Σ
                        push             rax
                        push             rcx
                        lea              rcx, [rsp + 0]
                        mov              rsi, r12
                        mov              rdx, r13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx336_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n30_match_begin_af
.Lx336_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              eax, dword ptr [rbp + -48]           # repl_start
                        mov              dword ptr [r12 + 0], eax
                        mov              rax, qword ptr [rbp + -56]           # repl_end
                        mov              qword ptr [r12 + 8], rax
                        add              r12, 16
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n36_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       sub              rsp, 16
                        mov              r11, 37
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_match_replace_α
.Lx337_0:               .quad            .Lx337_0_s
.Lx337_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n37_match_replace_α:    mov              r11, 38
                        mov              rdi, qword ptr [rip + .Lx339_0]
                        mov              rsi, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              ecx, dword ptr [r12 + -16]           # repl_start
                        mov              r8, qword ptr [r12 + -8]             # repl_end
                        sub              r12, 16
                        lea              r9, [rsp + 0]                        # lit_string
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_replace@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16;                             jmp   .Lx339_1
.Lx339_0:               .quad            .Lx339_0_s
.Lx339_0_s:             .string          "N"
.Lx339_1:                                                                     jmp   n38_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_end_α:    mov              r11, 39
                        mov              r10, 8
                        add              rsp, 16;                             jmp   n39_statement_begin_α
#=======================================================================================================================
#         '0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' T BREAK(',') . T   :F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_begin_α:  mov              r11, 40
                        mov              r10, 9;                              jmp   n40_lit_string_α
n39_statement_begin_β:  mov              r11, 40;                             jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       sub              rsp, 16
                        mov              r11, 41
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 40
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_var_α
.Lx344_0:               .quad            .Lx344_0_s
.Lx344_0_s:             .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              sub              rsp, 16
                        mov              r11, 42
                        mov              rax, qword ptr [r9 + 32]             # T
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n42_assign_α
n41_var_β:              mov              r11, 42
                        add              rsp, 16
                        add              rsp, 16;                             jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:           mov              r11, 43
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_match_begin_α
n42_assign_β:           mov              r11, 43;                             jmp   n41_var_β
.Lx346_0:               .quad            .Lx346_0_s
.Lx346_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n43_match_begin_α:      mov              r11, 44
                        mov              rdi, qword ptr [rsp + 16]            # lit_string
                        mov              rsi, qword ptr [rsp + 24]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx348_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx348_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n44_match_defer_α
n43_match_begin_β:      mov              r11, 44
.Lx348_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx348_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx348_1
                                                                              jmp   .Lx348_0
.Lx348_1:
n43_match_begin_af:     mov              r11, 44
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n42_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n44_match_defer_α:      mov              r11, 45
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx349_14
                        mov              rax, qword ptr [rdx + 0]
.Lx349_14:              test             rax, rax;                            jz    .Lx349_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx349_5]
                        push             rcx
                        lea              rcx, [rip + .Lx349_4]
                        push             rcx;                                 jmp   rax
.Lx349_4:                                                                     jmp   n45_match_assign_save_α
.Lx349_5:                                                                     jmp   n43_match_begin_β
.Lx349_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n43_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx349_6]
                        push             rcx
                        push             rax;                                 jmp   n45_match_assign_save_α
.Lx349_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n43_match_begin_β
n44_match_defer_β:      mov              r11, 45
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx349_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx349_12
                                                                              jmp   rax
.Lx349_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n45_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 46
                        mov              dword ptr [rsp + 0], r14d;           jmp   n46_match_break_α
n45_match_assign_save_β:
                        mov              r11, 46
                        add              rsp, 16;                             jmp   n44_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n46_match_break_α:      sub              rsp, 16
                        mov              r11, 47
                        movsxd           rcx, r14d
.Lx353_0:               cmp              ecx, r15d;                           jl    .Lx353_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n44_match_defer_β
.Lx353_240:             movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .Lx353_1
                        add              ecx, 1;                              jmp   .Lx353_0
.Lx353_1:               mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx;                           jmp   n47_match_assign_cond_α
n46_match_break_β:      mov              r11, 47
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n44_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n47_match_assign_cond_α:
                        mov              r11, 48
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n48_match_end_α
n47_match_assign_cond_β:
                        mov              r11, 48
                        sub              r12, 24;                             jmp   n46_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n48_match_end_α:        mov              r11, 49
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rax, qword ptr [rbp + -32]           # outer_Δ
                        mov              rcx, qword ptr [rbp + -16]           # outer_Σ
                        push             rax
                        push             rcx
                        lea              rcx, [rsp + 0]
                        mov              rsi, r12
                        mov              rdx, r13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx357_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n43_match_begin_af
.Lx357_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n49_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_end_α:    mov              r11, 50
                        mov              r10, 9
                        add              rsp, 32;                             jmp   n50_statement_begin_α
#=======================================================================================================================
#         ROMAN = REPLACE(ROMAN(N), 'IVXLCDM', 'XLCDM**') T   :S(RETURN)F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_begin_α:  mov              r11, 51
                        mov              r10, 10;                             jmp   n51_var_α
n50_statement_begin_β:  mov              r11, 51;                             jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              sub              rsp, 16
                        mov              r11, 52
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n52_call_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_α:             sub              rsp, 16
                        mov              r11, 53
                        lea              rcx, [rip + .Lsig364z]
                        lea              rax, [rip + ROMAN_α];                jmp   rax
.Lsig364z:              .quad            1
                        .quad            .Lx364_2
                        .quad            .Lx364_2
                        .quad            16
.Lx364_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx364_29
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
.Lx364_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx364_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n50_statement_begin_β
.Lx364_240:                                                                   jmp   n53_lit_string_α
n52_call_β:             mov              r11, 53;                             jmp   n50_statement_begin_β
.Lx364_0:               .quad            .Lx364_0_s
.Lx364_0_s:             .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_lit_string_α
n53_lit_string_β:       mov              r11, 54
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n50_statement_begin_β
.Lx365_0:               .quad            .Lx365_0_s
.Lx365_0_s:             .string          "IVXLCDM"
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       sub              rsp, 16
                        mov              r11, 55
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx366_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_call_α
n54_lit_string_β:       mov              r11, 55
                        add              rsp, 16;                             jmp   n53_lit_string_β
.Lx366_0:               .quad            .Lx366_0_s
.Lx366_0_s:             .string          "XLCDM**"
#-----------------------------------------------------------------------------------------------------------------------
n55_call_α:             sub              rsp, 16
                        mov              r11, 56
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
.Lrkfnzd368:            .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd368]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lx367_240
                        add              rsp, 16;                             jmp   n54_lit_string_β
.Lx367_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n56_var_α
n55_call_β:             mov              r11, 56
                        add              rsp, 16;                             jmp   n54_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              sub              rsp, 16
                        mov              r11, 57
                        mov              rax, qword ptr [r9 + 32]             # T
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n57_binop_α
n56_var_β:              mov              r11, 57
                        add              rsp, 32;                             jmp   n54_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n57_binop_α:            sub              rsp, 16
                        mov              r11, 58
                        mov              rdi, qword ptr [rsp + 32]            # call
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n58_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:           mov              r11, 59
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ROMAN
                        mov              qword ptr [r9 + 8], rdx;             jmp   n59_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_end_α:    mov              r11, 60
                        mov              r10, 10
                        add              rsp, 112;                            jmp   RETURN
#=======================================================================================================================
# ROMAN_END  <stmt 11, line 19: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_begin_α:  mov              r11, 61
                        mov              r10, 11;                             jmp   n61_statement_end_α
n60_statement_begin_β:  mov              r11, 61;                             jmp   n62_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:    mov              r11, 62
                        mov              r10, 11;                             jmp   n62_statement_begin_α
#=======================================================================================================================
#         DEFINE('ZBODY(ZKN)')                            :(ZBODY_END)
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_begin_α:  mov              r11, 63
                        mov              r10, 12;                             jmp   n63_define_α
n62_statement_begin_β:  mov              r11, 63;                             jmp   n98_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n63_define_α:           mov              r11, 64
                        mov              rdi, qword ptr [rip + .Lx381_0]
                        mov              rsi, qword ptr [rip + .Lx381_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n65_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx381_0]
                        lea              rsi, [rip + ZBODY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n64_statement_end_α
n63_define_β:           mov              r11, 64;                             jmp   n62_statement_begin_β
.Lx381_0:               .quad            .Lx381_0_s
.Lx381_0_s:             .string          "ZBODY"
.Lx381_1:               .quad            .Lx381_1_s
.Lx381_1_s:             .string          "ZKN"
                                                                              jmp   .Lx382_245
#-----------------------------------------------------------------------------------------------------------------------
ZBODY_α:                sub              rsp, 64
                        mov              rax, qword ptr [r9 + 48]             # ZBODY
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx382_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 64]             # ZKN
                        mov              qword ptr [r9 + 64], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 72]
                        mov              qword ptr [r9 + 72], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx382_41
.Lx382_10:              mov              rax, qword ptr [r9 + 64]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 64], 0
                        mov              qword ptr [r9 + 72], 0
.Lx382_41:              lea              rcx, [rip + ZBODY_γ]
                        lea              rax, [rip + ZBODY_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n65_statement_begin_α];  jmp   rax
ZBODY_γ:                mov              rdi, qword ptr [r9 + 48]             # ZBODY
                        mov              rsi, qword ptr [r9 + 56]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 56], rax
                        cmp              rdx, 0;                              jbe   .Lx382_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 64], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 72], rax;            jmp   .Lx382_110
.Lx382_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 72], rax
.Lx382_110:             mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ZBODY_ω:                mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 48], rax             # ZBODY
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 56], rax
                        cmp              rdx, 0;                              jbe   .Lx382_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 64], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 72], rax;            jmp   .Lx382_180
.Lx382_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 72], rax
.Lx382_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx382_245:
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    mov              r11, 65
                        mov              r10, 12;                             jmp   n98_statement_begin_α
#=======================================================================================================================
# ZBODY   ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:  mov              r11, 66
                        mov              r10, 13;                             jmp   n66_lit_integer_α
n65_statement_begin_β:  mov              r11, 66;                             jmp   n69_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:      sub              rsp, 16
                        mov              r11, 67
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_assign_α
.Lx387_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              r11, 68
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZI
                        mov              qword ptr [r9 + 136], rdx;           jmp   n68_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    mov              r11, 69
                        mov              r10, 13
                        add              rsp, 16;                             jmp   n69_statement_begin_α
#=======================================================================================================================
#         ZS = 0
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:  mov              r11, 70
                        mov              r10, 14;                             jmp   n70_lit_integer_α
n69_statement_begin_β:  mov              r11, 70;                             jmp   n73_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:      sub              rsp, 16
                        mov              r11, 71
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_assign_α
.Lx393_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n71_assign_α:           mov              r11, 72
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZS
                        mov              qword ptr [r9 + 152], rdx;           jmp   n72_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_end_α:    mov              r11, 73
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n73_statement_begin_α
#=======================================================================================================================
# ZBL     ZS = ZS + SIZE(ROMAN(1000 + ZI))
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_begin_α:  mov              r11, 74
                        mov              r10, 15;                             jmp   n74_var_α
n73_statement_begin_β:  mov              r11, 74;                             jmp   n83_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:              sub              rsp, 16
                        mov              r11, 75
                        mov              rax, qword ptr [r9 + 144]            # ZS
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n75_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:      sub              rsp, 16
                        mov              r11, 76
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n76_var_α
n75_lit_integer_β:      mov              r11, 76
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n73_statement_begin_β
.Lx400_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              sub              rsp, 16
                        mov              r11, 77
                        mov              rax, qword ptr [r9 + 128]            # ZI
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n77_binop_α
n76_var_β:              mov              r11, 77
                        add              rsp, 16;                             jmp   n75_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n77_binop_α:            sub              rsp, 16
                        mov              r11, 78
                        mov              eax, dword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              al, 3;                               jne   .Lx402_2
                        mov              rax, 1000
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx402_7
.Lx402_2:               mov              ecx, eax
                        mov              edx, eax
                        and              edx, 1;                              jz    .Lx402_0
                        mov              rsi, 1000
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cvtsi2sd         xmm0, rsi
                        cmp              cl, 5;                               je    .Lx402_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx402_6
.Lx402_5:               movq             xmm1, rdi
.Lx402_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx402_7:                                                                     jmp   n78_call_α
.Lx402_0:               mov              rdi, qword ptr [rsp + 32]            # lit_integer
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx402_240
                        add              rsp, 16;                             jmp   n76_var_β
.Lx402_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n78_call_α
n77_binop_β:            mov              r11, 78
                        add              rsp, 16;                             jmp   n76_var_β
#-----------------------------------------------------------------------------------------------------------------------
n78_call_α:             sub              rsp, 16
                        mov              r11, 79
                        lea              rcx, [rip + .Lsig404z]
                        lea              rax, [rip + ROMAN_α];                jmp   rax
.Lsig404z:              .quad            1
                        .quad            .Lx404_2
                        .quad            .Lx404_2
                        .quad            16
.Lx404_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx404_29
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
.Lx404_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx404_240
                        add              rsp, 16;                             jmp   n77_binop_β
.Lx404_240:                                                                   jmp   n79_call_α
n78_call_β:             mov              r11, 79;                             jmp   n77_binop_β
.Lx404_0:               .quad            .Lx404_0_s
.Lx404_0_s:             .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n79_call_α:             sub              rsp, 16
                        mov              r11, 80
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd406:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd406]
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
                        cmp              al, 104;                             jne   .Lx405_240
                        add              rsp, 32;                             jmp   n77_binop_β
.Lx405_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_binop_α
n79_call_β:             mov              r11, 80
                        add              rsp, 32;                             jmp   n77_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n80_binop_α:            sub              rsp, 16
                        mov              r11, 81
                        mov              eax, dword ptr [rsp + 96]            # var
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx407_2
                        mov              rax, qword ptr [rsp + 104]           # var
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx407_7
.Lx407_2:               and              edx, 1;                              jz    .Lx407_0
                        mov              rsi, qword ptr [rsp + 104]           # var
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lx407_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx407_4
.Lx407_3:               movq             xmm0, rsi
.Lx407_4:               cmp              cl, 5;                               je    .Lx407_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx407_6
.Lx407_5:               movq             xmm1, rdi
.Lx407_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx407_7:                                                                     jmp   n81_assign_α
.Lx407_0:               mov              rdi, qword ptr [rsp + 96]            # var
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx407_240
                        add              rsp, 48;                             jmp   n77_binop_β
.Lx407_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n81_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:           mov              r11, 82
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZS
                        mov              qword ptr [r9 + 152], rdx;           jmp   n82_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_end_α:    mov              r11, 83
                        mov              r10, 15
                        add              rsp, 112;                            jmp   n83_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_begin_α:  mov              r11, 84
                        mov              r10, 16;                             jmp   n84_var_α
n83_statement_begin_β:  mov              r11, 84;                             jmp   n94_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              sub              rsp, 16
                        mov              r11, 85
                        mov              rax, qword ptr [r9 + 128]            # ZI
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:              sub              rsp, 16
                        mov              r11, 86
                        mov              rax, qword ptr [r9 + 64]             # ZKN
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n86_coerce_numeric_α
n85_var_β:              mov              r11, 86
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n83_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n86_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 87
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx416_1
                        cmp              al, 3;                               jne   .Lx416_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx416_0
.Lx416_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n87_coerce_numeric_α
.Lx416_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n87_coerce_numeric_α
n86_coerce_numeric_β:   mov              r11, 87
                        add              rsp, 16;                             jmp   n85_var_β
#-----------------------------------------------------------------------------------------------------------------------
n87_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 88
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx418_1
                        cmp              al, 3;                               jne   .Lx418_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx418_0
.Lx418_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n88_cmp_test_α
.Lx418_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n88_cmp_test_α
n87_coerce_numeric_β:   mov              r11, 88
                        add              rsp, 16;                             jmp   n86_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n88_cmp_test_α:         sub              rsp, 16
                        mov              r11, 89
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx420_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx420_239
                        add              rsp, 16;                             jmp   n87_coerce_numeric_β
.Lx420_239:                                                                   jmp   n89_var_α
.Lx420_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx420_240
                        add              rsp, 16;                             jmp   n87_coerce_numeric_β
.Lx420_240:                                                                   jmp   n89_var_α
n88_cmp_test_β:         mov              r11, 89
                        add              rsp, 16;                             jmp   n87_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:              sub              rsp, 16
                        mov              r11, 90
                        mov              rax, qword ptr [r9 + 128]            # ZI
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n90_lit_integer_α
n89_var_β:              mov              r11, 90
                        add              rsp, 16;                             jmp   n88_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:      sub              rsp, 16
                        mov              r11, 91
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx422_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n91_binop_α
n90_lit_integer_β:      mov              r11, 91
                        add              rsp, 16;                             jmp   n89_var_β
.Lx422_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n91_binop_α:            sub              rsp, 16
                        mov              r11, 92
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx423_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx423_7
.Lx423_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx423_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx423_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx423_4
.Lx423_3:               movq             xmm0, rsi
.Lx423_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx423_7:                                                                     jmp   n92_assign_α
.Lx423_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx423_240
                        add              rsp, 16;                             jmp   n90_lit_integer_β
.Lx423_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n92_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_α:           mov              r11, 93
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZI
                        mov              qword ptr [r9 + 136], rdx;           jmp   n93_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_end_α:    mov              r11, 94
                        mov              r10, 16
                        add              rsp, 128;                            jmp   n73_statement_begin_α
#=======================================================================================================================
#         ZBODY = ZS                                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_begin_α:  mov              r11, 95
                        mov              r10, 17;                             jmp   n95_var_α
n94_statement_begin_β:  mov              r11, 95;                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              sub              rsp, 16
                        mov              r11, 96
                        mov              rax, qword ptr [r9 + 144]            # ZS
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n96_assign_α:           mov              r11, 97
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBODY
                        mov              qword ptr [r9 + 56], rdx;            jmp   n97_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_end_α:    mov              r11, 98
                        mov              r10, 17
                        add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 18, line 26: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_begin_α:  mov              r11, 99
                        mov              r10, 18;                             jmp   n99_statement_end_α
n98_statement_begin_β:  mov              r11, 99;                             jmp   n100_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_end_α:    mov              r11, 100
                        mov              r10, 18;                             jmp   n100_statement_begin_α
#=======================================================================================================================
#         <stmt 19, line 74: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_begin_α: mov              r11, 101
                        mov              r10, 19;                             jmp   n101_lit_string_α
n100_statement_begin_β: mov              r11, 101;                            jmp   n107_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:      sub              rsp, 16
                        mov              r11, 102
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n102_var_α
.Lx439_0:               .quad            .Lx439_0_s
.Lx439_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             sub              rsp, 16
                        mov              r11, 103
                        mov              rax, qword ptr [r9 + 80]             # ZCHK
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_call_α
n102_var_β:             mov              r11, 103
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n100_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n103_call_α:            sub              rsp, 16
                        mov              r11, 104
                        lea              rcx, [rip + .Lsig442z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig442z:              .quad            1
                        .quad            .Lx442_2
                        .quad            .Lx442_2
                        .quad            16
.Lx442_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx442_29
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
.Lx442_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx442_240
                        add              rsp, 16;                             jmp   n102_var_β
.Lx442_240:                                                                   jmp   n104_binop_α
n103_call_β:            mov              r11, 104;                            jmp   n102_var_β
.Lx442_0:               .quad            .Lx442_0_s
.Lx442_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n104_binop_α:           sub              rsp, 16
                        mov              r11, 105
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n105_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n105_assign_α:          mov              r11, 106
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx444_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n106_statement_end_α
.Lx444_0:               .quad            .Lx444_0_s
.Lx444_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_end_α:   mov              r11, 107
                        mov              r10, 19
                        add              rsp, 64;                             jmp   n107_statement_begin_α
#=======================================================================================================================
#         <stmt 20, line 75: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_begin_α: mov              r11, 108
                        mov              r10, 20;                             jmp   n108_var_α
n107_statement_begin_β: mov              r11, 108;                            jmp   n111_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             sub              rsp, 16
                        mov              r11, 109
                        mov              rdi, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx449_240
                        add              rsp, 16;                             jmp   n107_statement_begin_β
.Lx449_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_assign_α
.Lx449_0:               .quad            .Lx449_0_s
.Lx449_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_α:          mov              r11, 110
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # fixed_n
                        mov              qword ptr [r9 + 168], rdx;           jmp   n110_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_end_α:   mov              r11, 111
                        mov              r10, 20
                        add              rsp, 16;                             jmp   n214_statement_begin_α
#=======================================================================================================================
#         <stmt 21, line 76: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_begin_α: mov              r11, 112
                        mov              r10, 21;                             jmp   n112_var_α
n111_statement_begin_β: mov              r11, 112;                            jmp   n117_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:             sub              rsp, 16
                        mov              r11, 113
                        mov              rax, qword ptr [r9 + 112]            # ZFLR
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:     sub              rsp, 16
                        mov              r11, 114
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n114_binop_α
n113_lit_integer_β:     mov              r11, 114
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n111_statement_begin_β
.Lx456_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n114_binop_α:           sub              rsp, 16
                        mov              r11, 115
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx457_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx457_7
.Lx457_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx457_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx457_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx457_4
.Lx457_3:               movq             xmm0, rsi
.Lx457_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx457_7:                                                                     jmp   n115_assign_α
.Lx457_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx457_240
                        add              rsp, 16;                             jmp   n113_lit_integer_β
.Lx457_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n115_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:          mov              r11, 116
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZFLR
                        mov              qword ptr [r9 + 120], rdx;           jmp   n116_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_end_α:   mov              r11, 117
                        mov              r10, 21
                        add              rsp, 48;                             jmp   n117_statement_begin_α
#=======================================================================================================================
#         <stmt 22, line 77: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_begin_α: mov              r11, 118
                        mov              r10, 22;                             jmp   n118_var_α
n117_statement_begin_β: mov              r11, 118;                            jmp   n123_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              r11, 119
                        mov              rax, qword ptr [r9 + 96]             # ZBUD
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:     sub              rsp, 16
                        mov              r11, 120
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_binop_α
n119_lit_integer_β:     mov              r11, 120
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n117_statement_begin_β
.Lx464_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n120_binop_α:           sub              rsp, 16
                        mov              r11, 121
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx465_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx465_7
.Lx465_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx465_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx465_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx465_4
.Lx465_3:               movq             xmm0, rsi
.Lx465_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx465_7:                                                                     jmp   n121_assign_α
.Lx465_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx465_240
                        add              rsp, 16;                             jmp   n119_lit_integer_β
.Lx465_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n121_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n121_assign_α:          mov              r11, 122
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZBUD
                        mov              qword ptr [r9 + 104], rdx;           jmp   n122_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_end_α:   mov              r11, 123
                        mov              r10, 22
                        add              rsp, 48;                             jmp   n123_statement_begin_α
#=======================================================================================================================
#         <stmt 23, line 78: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_begin_α: mov              r11, 124
                        mov              r10, 23;                             jmp   n124_var_α
n123_statement_begin_β: mov              r11, 124;                            jmp   n128_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             sub              rsp, 16
                        mov              r11, 125
                        mov              rax, qword ptr [r9 + 176]            # ZK
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:      sub              rsp, 16
                        mov              r11, 126
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n126_differ_α
n125_lit_string_β:      mov              r11, 126
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n123_statement_begin_β
.Lx472_0:               .quad            .Lx472_0_s
.Lx472_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n126_differ_α:          sub              rsp, 16
                        mov              r11, 127
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
                        test             eax, eax;                            je    .Lx474_240
                        add              rsp, 16;                             jmp   n125_lit_string_β
.Lx474_240:                                                                   jmp   n127_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_end_α:   mov              r11, 128
                        mov              r10, 23
                        add              rsp, 48;                             jmp   n157_statement_begin_α
#=======================================================================================================================
#         <stmt 24, line 79: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_begin_α: mov              r11, 129
                        mov              r10, 24;                             jmp   n129_lit_integer_α
n128_statement_begin_β: mov              r11, 129;                            jmp   n132_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:     sub              rsp, 16
                        mov              r11, 130
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx479_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n130_assign_α
.Lx479_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n130_assign_α:          mov              r11, 131
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZK
                        mov              qword ptr [r9 + 184], rdx;           jmp   n131_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_end_α:   mov              r11, 132
                        mov              r10, 24
                        add              rsp, 16;                             jmp   n132_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 25, line 80: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_begin_α: mov              r11, 133
                        mov              r10, 25;                             jmp   n133_call_α
n132_statement_begin_β: mov              r11, 133;                            jmp   n136_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n133_call_α:            sub              rsp, 16
                        mov              r11, 134
                        .section         .rodata
.Lrkfnzd486:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd486]
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
                        cmp              al, 104;                             jne   .Lx485_240
                        add              rsp, 16;                             jmp   n132_statement_begin_β
.Lx485_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n134_assign_α
n133_call_β:            mov              r11, 134
                        add              rsp, 16;                             jmp   n132_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n134_assign_α:          mov              r11, 135
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZT
                        mov              qword ptr [r9 + 200], rdx;           jmp   n135_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_end_α:   mov              r11, 136
                        mov              r10, 25
                        add              rsp, 16;                             jmp   n136_statement_begin_α
#=======================================================================================================================
#         <stmt 26, line 81: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_begin_α: mov              r11, 137
                        mov              r10, 26;                             jmp   n137_var_α
n136_statement_begin_β: mov              r11, 137;                            jmp   n140_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             sub              rsp, 16
                        mov              r11, 138
                        mov              rax, qword ptr [r9 + 176]            # ZK
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n138_call_α
#-----------------------------------------------------------------------------------------------------------------------
n138_call_α:            sub              rsp, 16
                        mov              r11, 139
                        lea              rcx, [rip + .Lsig494z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig494z:              .quad            1
                        .quad            .Lx494_2
                        .quad            .Lx494_2
                        .quad            16
.Lx494_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx494_29
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
.Lx494_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx494_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n136_statement_begin_β
.Lx494_240:                                                                   jmp   n139_statement_end_α
n138_call_β:            mov              r11, 139;                            jmp   n136_statement_begin_β
.Lx494_0:               .quad            .Lx494_0_s
.Lx494_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_end_α:   mov              r11, 140
                        mov              r10, 26
                        add              rsp, 32;                             jmp   n140_statement_begin_α
#=======================================================================================================================
#         <stmt 27, line 82: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_begin_α: mov              r11, 141
                        mov              r10, 27;                             jmp   n141_call_α
n140_statement_begin_β: mov              r11, 141;                            jmp   n146_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_α:            sub              rsp, 16
                        mov              r11, 142
                        .section         .rodata
.Lrkfnzd500:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd500]
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
                        cmp              al, 104;                             jne   .Lx499_240
                        add              rsp, 16;                             jmp   n140_statement_begin_β
.Lx499_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_var_α
n141_call_β:            mov              r11, 142
                        add              rsp, 16;                             jmp   n140_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             sub              rsp, 16
                        mov              r11, 143
                        mov              rax, qword ptr [r9 + 192]            # ZT
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_binop_α
n142_var_β:             mov              r11, 143
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n140_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n143_binop_α:           sub              rsp, 16
                        mov              r11, 144
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx502_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx502_7
.Lx502_2:               and              edx, 1;                              jz    .Lx502_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx502_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx502_4
.Lx502_3:               movq             xmm0, rsi
.Lx502_4:               cmp              cl, 5;                               je    .Lx502_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx502_6
.Lx502_5:               movq             xmm1, rdi
.Lx502_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx502_7:                                                                     jmp   n144_assign_α
.Lx502_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx502_240
                        add              rsp, 16;                             jmp   n142_var_β
.Lx502_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n144_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n144_assign_α:          mov              r11, 145
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZE
                        mov              qword ptr [r9 + 216], rdx;           jmp   n145_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_end_α:   mov              r11, 146
                        mov              r10, 27
                        add              rsp, 48;                             jmp   n146_statement_begin_α
#=======================================================================================================================
#         <stmt 28, line 83: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_begin_α: mov              r11, 147
                        mov              r10, 28;                             jmp   n147_var_α
n146_statement_begin_β: mov              r11, 147;                            jmp   n157_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:             sub              rsp, 16
                        mov              r11, 148
                        mov              rax, qword ptr [r9 + 208]            # ZE
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_var_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:             sub              rsp, 16
                        mov              r11, 149
                        mov              rax, qword ptr [r9 + 112]            # ZFLR
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_coerce_numeric_α
n148_var_β:             mov              r11, 149
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n146_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n149_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 150
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx511_1
                        cmp              al, 3;                               jne   .Lx511_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx511_0
.Lx511_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n150_coerce_numeric_α
.Lx511_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n150_coerce_numeric_α
n149_coerce_numeric_β:  mov              r11, 150
                        add              rsp, 16;                             jmp   n148_var_β
#-----------------------------------------------------------------------------------------------------------------------
n150_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 151
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx513_1
                        cmp              al, 3;                               jne   .Lx513_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx513_0
.Lx513_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n151_cmp_test_α
.Lx513_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n151_cmp_test_α
n150_coerce_numeric_β:  mov              r11, 151
                        add              rsp, 16;                             jmp   n149_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n151_cmp_test_α:        sub              rsp, 16
                        mov              r11, 152
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx515_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx515_239
                        add              rsp, 16;                             jmp   n150_coerce_numeric_β
.Lx515_239:                                                                   jmp   n152_var_α
.Lx515_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx515_240
                        add              rsp, 16;                             jmp   n150_coerce_numeric_β
.Lx515_240:                                                                   jmp   n152_var_α
n151_cmp_test_β:        mov              r11, 152
                        add              rsp, 16;                             jmp   n150_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:             sub              rsp, 16
                        mov              r11, 153
                        mov              rax, qword ptr [r9 + 176]            # ZK
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_lit_integer_α
n152_var_β:             mov              r11, 153
                        add              rsp, 16;                             jmp   n151_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     sub              rsp, 16
                        mov              r11, 154
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n154_binop_α
n153_lit_integer_β:     mov              r11, 154
                        add              rsp, 16;                             jmp   n152_var_β
.Lx517_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n154_binop_α:           sub              rsp, 16
                        mov              r11, 155
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx518_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx518_7
.Lx518_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx518_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lx518_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx518_4
.Lx518_3:               movq             xmm0, rsi
.Lx518_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx518_7:                                                                     jmp   n155_assign_α
.Lx518_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx518_240
                        add              rsp, 16;                             jmp   n153_lit_integer_β
.Lx518_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n155_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n155_assign_α:          mov              r11, 156
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZK
                        mov              qword ptr [r9 + 184], rdx;           jmp   n156_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_end_α:   mov              r11, 157
                        mov              r10, 28
                        add              rsp, 128;                            jmp   n132_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 29, line 84: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_begin_α: mov              r11, 158
                        mov              r10, 29;                             jmp   n158_call_α
n157_statement_begin_β: mov              r11, 158;                            jmp   n161_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n158_call_α:            sub              rsp, 16
                        mov              r11, 159
                        .section         .rodata
.Lrkfnzd525:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd525]
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
                        cmp              al, 104;                             jne   .Lx524_240
                        add              rsp, 16;                             jmp   n157_statement_begin_β
.Lx524_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_assign_α
n158_call_β:            mov              r11, 159
                        add              rsp, 16;                             jmp   n157_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n159_assign_α:          mov              r11, 160
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZT
                        mov              qword ptr [r9 + 200], rdx;           jmp   n160_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_end_α:   mov              r11, 161
                        mov              r10, 29
                        add              rsp, 16;                             jmp   n161_statement_begin_α
#=======================================================================================================================
#         <stmt 30, line 85: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_begin_α: mov              r11, 162
                        mov              r10, 30;                             jmp   n162_var_α
n161_statement_begin_β: mov              r11, 162;                            jmp   n167_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_α:             sub              rsp, 16
                        mov              r11, 163
                        mov              rax, qword ptr [r9 + 192]            # ZT
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n163_var_α
#-----------------------------------------------------------------------------------------------------------------------
n163_var_α:             sub              rsp, 16
                        mov              r11, 164
                        mov              rax, qword ptr [r9 + 96]             # ZBUD
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n164_binop_α
n163_var_β:             mov              r11, 164
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n161_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n164_binop_α:           sub              rsp, 16
                        mov              r11, 165
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx533_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx533_7
.Lx533_2:               and              edx, 1;                              jz    .Lx533_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx533_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx533_4
.Lx533_3:               movq             xmm0, rsi
.Lx533_4:               cmp              cl, 5;                               je    .Lx533_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx533_6
.Lx533_5:               movq             xmm1, rdi
.Lx533_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx533_7:                                                                     jmp   n165_assign_α
.Lx533_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx533_240
                        add              rsp, 16;                             jmp   n163_var_β
.Lx533_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n165_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n165_assign_α:          mov              r11, 166
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZD
                        mov              qword ptr [r9 + 232], rdx;           jmp   n166_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_end_α:   mov              r11, 167
                        mov              r10, 30
                        add              rsp, 48;                             jmp   n167_statement_begin_α
#=======================================================================================================================
#         <stmt 31, line 86: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_begin_α: mov              r11, 168
                        mov              r10, 31;                             jmp   n168_lit_integer_α
n167_statement_begin_β: mov              r11, 168;                            jmp   n171_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_integer_α:     sub              rsp, 16
                        mov              r11, 169
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx539_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n169_assign_α
.Lx539_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_α:          mov              r11, 170
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # ZN
                        mov              qword ptr [r9 + 248], rdx;           jmp   n170_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   mov              r11, 171
                        mov              r10, 31
                        add              rsp, 16;                             jmp   n171_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 32, line 87: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_begin_α: mov              r11, 172
                        mov              r10, 32;                             jmp   n172_var_α
n171_statement_begin_β: mov              r11, 172;                            jmp   n175_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:             sub              rsp, 16
                        mov              r11, 173
                        mov              rax, qword ptr [r9 + 176]            # ZK
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n173_call_α
#-----------------------------------------------------------------------------------------------------------------------
n173_call_α:            sub              rsp, 16
                        mov              r11, 174
                        lea              rcx, [rip + .Lsig547z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig547z:              .quad            1
                        .quad            .Lx547_2
                        .quad            .Lx547_2
                        .quad            16
.Lx547_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx547_29
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
.Lx547_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx547_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n171_statement_begin_β
.Lx547_240:                                                                   jmp   n174_statement_end_α
n173_call_β:            mov              r11, 174;                            jmp   n171_statement_begin_β
.Lx547_0:               .quad            .Lx547_0_s
.Lx547_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_end_α:   mov              r11, 175
                        mov              r10, 32
                        add              rsp, 32;                             jmp   n175_statement_begin_α
#=======================================================================================================================
#         <stmt 33, line 88: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_begin_α: mov              r11, 176
                        mov              r10, 33;                             jmp   n176_var_α
n175_statement_begin_β: mov              r11, 176;                            jmp   n181_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n176_var_α:             sub              rsp, 16
                        mov              r11, 177
                        mov              rax, qword ptr [r9 + 240]            # ZN
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n177_var_α
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:             sub              rsp, 16
                        mov              r11, 178
                        mov              rax, qword ptr [r9 + 176]            # ZK
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n178_binop_α
n177_var_β:             mov              r11, 178
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n175_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n178_binop_α:           sub              rsp, 16
                        mov              r11, 179
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx554_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx554_7
.Lx554_2:               and              edx, 1;                              jz    .Lx554_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx554_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx554_4
.Lx554_3:               movq             xmm0, rsi
.Lx554_4:               cmp              cl, 5;                               je    .Lx554_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx554_6
.Lx554_5:               movq             xmm1, rdi
.Lx554_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx554_7:                                                                     jmp   n179_assign_α
.Lx554_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx554_240
                        add              rsp, 16;                             jmp   n177_var_β
.Lx554_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n179_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n179_assign_α:          mov              r11, 180
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # ZN
                        mov              qword ptr [r9 + 248], rdx;           jmp   n180_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_end_α:   mov              r11, 181
                        mov              r10, 33
                        add              rsp, 48;                             jmp   n181_statement_begin_α
#=======================================================================================================================
#         <stmt 34, line 89: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_begin_α: mov              r11, 182
                        mov              r10, 34;                             jmp   n182_call_α
n181_statement_begin_β: mov              r11, 182;                            jmp   n188_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n182_call_α:            sub              rsp, 16
                        mov              r11, 183
                        .section         .rodata
.Lrkfnzd561:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd561]
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
                        cmp              al, 104;                             jne   .Lx560_240
                        add              rsp, 16;                             jmp   n181_statement_begin_β
.Lx560_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n183_var_α
n182_call_β:            mov              r11, 183
                        add              rsp, 16;                             jmp   n181_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:             sub              rsp, 16
                        mov              r11, 184
                        mov              rax, qword ptr [r9 + 224]            # ZD
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n184_coerce_numeric_α
n183_var_β:             mov              r11, 184
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n181_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n184_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 185
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              al, 5;                               je    .Lx564_1
                        cmp              al, 3;                               jne   .Lx564_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lx564_0
.Lx564_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n185_coerce_numeric_α
.Lx564_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n185_coerce_numeric_α
n184_coerce_numeric_β:  mov              r11, 185
                        add              rsp, 16;                             jmp   n183_var_β
#-----------------------------------------------------------------------------------------------------------------------
n185_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 186
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx566_1
                        cmp              al, 3;                               jne   .Lx566_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              al, 3;                               jne   .Lx566_0
.Lx566_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n186_cmp_test_α
.Lx566_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n186_cmp_test_α
n185_coerce_numeric_β:  mov              r11, 186
                        add              rsp, 16;                             jmp   n184_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n186_cmp_test_α:        sub              rsp, 16
                        mov              r11, 187
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx568_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx568_239
                        add              rsp, 16;                             jmp   n185_coerce_numeric_β
.Lx568_239:                                                                   jmp   n187_statement_end_α
.Lx568_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx568_240
                        add              rsp, 16;                             jmp   n185_coerce_numeric_β
.Lx568_240:                                                                   jmp   n187_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_end_α:   mov              r11, 188
                        mov              r10, 34
                        add              rsp, 80;                             jmp   n171_statement_begin_α
#=======================================================================================================================
#         <stmt 35, line 90: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_begin_α: mov              r11, 189
                        mov              r10, 35;                             jmp   n189_call_α
n188_statement_begin_β: mov              r11, 189;                            jmp   n194_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n189_call_α:            sub              rsp, 16
                        mov              r11, 190
                        .section         .rodata
.Lrkfnzd574:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd574]
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
                        cmp              al, 104;                             jne   .Lx573_240
                        add              rsp, 16;                             jmp   n188_statement_begin_β
.Lx573_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n190_var_α
n189_call_β:            mov              r11, 190
                        add              rsp, 16;                             jmp   n188_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:             sub              rsp, 16
                        mov              r11, 191
                        mov              rax, qword ptr [r9 + 192]            # ZT
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n191_binop_α
n190_var_β:             mov              r11, 191
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n188_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n191_binop_α:           sub              rsp, 16
                        mov              r11, 192
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx576_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx576_7
.Lx576_2:               and              edx, 1;                              jz    .Lx576_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx576_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx576_4
.Lx576_3:               movq             xmm0, rsi
.Lx576_4:               cmp              cl, 5;                               je    .Lx576_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx576_6
.Lx576_5:               movq             xmm1, rdi
.Lx576_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx576_7:                                                                     jmp   n192_assign_α
.Lx576_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx576_240
                        add              rsp, 16;                             jmp   n190_var_β
.Lx576_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n192_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n192_assign_α:          mov              r11, 193
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZE
                        mov              qword ptr [r9 + 216], rdx;           jmp   n193_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n193_statement_end_α:   mov              r11, 194
                        mov              r10, 35
                        add              rsp, 48;                             jmp   n194_statement_begin_α
#=======================================================================================================================
#         <stmt 36, line 91: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_begin_α: mov              r11, 195
                        mov              r10, 36;                             jmp   n195_lit_string_α
n194_statement_begin_β: mov              r11, 195;                            jmp   n200_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:      sub              rsp, 16
                        mov              r11, 196
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx582_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n196_var_α
.Lx582_0:               .quad            .Lx582_0_s
.Lx582_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n196_var_α:             sub              rsp, 16
                        mov              r11, 197
                        mov              rax, qword ptr [r9 + 240]            # ZN
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n197_binop_α
n196_var_β:             mov              r11, 197
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n194_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n197_binop_α:           sub              rsp, 16
                        mov              r11, 198
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n198_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n198_assign_α:          mov              r11, 199
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx585_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n199_statement_end_α
.Lx585_0:               .quad            .Lx585_0_s
.Lx585_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_end_α:   mov              r11, 200
                        mov              r10, 36
                        add              rsp, 48;                             jmp   n200_statement_begin_α
#=======================================================================================================================
#         <stmt 37, line 92: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_begin_α: mov              r11, 201
                        mov              r10, 37;                             jmp   n201_lit_string_α
n200_statement_begin_β: mov              r11, 201;                            jmp   n206_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:      sub              rsp, 16
                        mov              r11, 202
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx590_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n202_var_α
.Lx590_0:               .quad            .Lx590_0_s
.Lx590_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n202_var_α:             sub              rsp, 16
                        mov              r11, 203
                        mov              rax, qword ptr [r9 + 208]            # ZE
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n203_binop_α
n202_var_β:             mov              r11, 203
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n200_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n203_binop_α:           sub              rsp, 16
                        mov              r11, 204
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n204_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n204_assign_α:          mov              r11, 205
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx593_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n205_statement_end_α
.Lx593_0:               .quad            .Lx593_0_s
.Lx593_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_end_α:   mov              r11, 206
                        mov              r10, 37
                        add              rsp, 48;                             jmp   n206_statement_begin_α
#=======================================================================================================================
#         <stmt 38, line 93: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_begin_α: mov              r11, 207
                        mov              r10, 38;                             jmp   n207_lit_string_α
n206_statement_begin_β: mov              r11, 207;                            jmp   n274_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:      sub              rsp, 16
                        mov              r11, 208
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx598_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n208_var_α
.Lx598_0:               .quad            .Lx598_0_s
.Lx598_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:             sub              rsp, 16
                        mov              r11, 209
                        mov              rax, qword ptr [r9 + 208]            # ZE
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n209_lit_integer_α
n208_var_β:             mov              r11, 209
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n206_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_integer_α:     sub              rsp, 16
                        mov              r11, 210
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n210_binop_α
n209_lit_integer_β:     mov              r11, 210
                        add              rsp, 16;                             jmp   n208_var_β
.Lx600_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n210_binop_α:           sub              rsp, 16
                        mov              r11, 211
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx601_240
                        add              rsp, 16;                             jmp   n209_lit_integer_β
.Lx601_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n211_binop_α
n210_binop_β:           mov              r11, 211
                        add              rsp, 16;                             jmp   n209_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n211_binop_α:           sub              rsp, 16
                        mov              r11, 212
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n212_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n212_assign_α:          mov              r11, 213
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx603_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n213_statement_end_α
.Lx603_0:               .quad            .Lx603_0_s
.Lx603_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n213_statement_end_α:   mov              r11, 214
                        mov              r10, 38
                        add              rsp, 80;                             jmp   n274_statement_begin_α
#=======================================================================================================================
# ZFIXRUN  <stmt 39, line 94: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n214_statement_begin_α: mov              r11, 215
                        mov              r10, 39;                             jmp   n215_var_α
n214_statement_begin_β: mov              r11, 215;                            jmp   n219_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n215_var_α:             sub              rsp, 16
                        mov              r11, 216
                        mov              rax, qword ptr [r9 + 176]            # ZK
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n216_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:      sub              rsp, 16
                        mov              r11, 217
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx609_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n217_differ_α
n216_lit_string_β:      mov              r11, 217
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n214_statement_begin_β
.Lx609_0:               .quad            .Lx609_0_s
.Lx609_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n217_differ_α:          sub              rsp, 16
                        mov              r11, 218
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
                        test             eax, eax;                            je    .Lx611_240
                        add              rsp, 16;                             jmp   n216_lit_string_β
.Lx611_240:                                                                   jmp   n218_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n218_statement_end_α:   mov              r11, 219
                        mov              r10, 39
                        add              rsp, 48;                             jmp   n223_statement_begin_α
#=======================================================================================================================
#         <stmt 40, line 95: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n219_statement_begin_α: mov              r11, 220
                        mov              r10, 40;                             jmp   n220_var_α
n219_statement_begin_β: mov              r11, 220;                            jmp   n223_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n220_var_α:             sub              rsp, 16
                        mov              r11, 221
                        mov              rax, qword ptr [r9 + 160]            # fixed_n
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n221_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n221_assign_α:          mov              r11, 222
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZK
                        mov              qword ptr [r9 + 184], rdx;           jmp   n222_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n222_statement_end_α:   mov              r11, 223
                        mov              r10, 40
                        add              rsp, 16;                             jmp   n223_statement_begin_α
#=======================================================================================================================
# ZFB  <stmt 41, line 96: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_begin_α: mov              r11, 224
                        mov              r10, 41;                             jmp   n224_call_α
n223_statement_begin_β: mov              r11, 224;                            jmp   n227_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n224_call_α:            sub              rsp, 16
                        mov              r11, 225
                        .section         .rodata
.Lrkfnzd623:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd623]
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
                        cmp              al, 104;                             jne   .Lx622_240
                        add              rsp, 16;                             jmp   n223_statement_begin_β
.Lx622_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n225_assign_α
n224_call_β:            mov              r11, 225
                        add              rsp, 16;                             jmp   n223_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n225_assign_α:          mov              r11, 226
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZT
                        mov              qword ptr [r9 + 200], rdx;           jmp   n226_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n226_statement_end_α:   mov              r11, 227
                        mov              r10, 41
                        add              rsp, 16;                             jmp   n227_statement_begin_α
#=======================================================================================================================
#         <stmt 42, line 97: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n227_statement_begin_α: mov              r11, 228
                        mov              r10, 42;                             jmp   n228_lit_integer_α
n227_statement_begin_β: mov              r11, 228;                            jmp   n231_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_integer_α:     sub              rsp, 16
                        mov              r11, 229
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx629_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n229_assign_α
.Lx629_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n229_assign_α:          mov              r11, 230
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # ZN
                        mov              qword ptr [r9 + 248], rdx;           jmp   n230_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n230_statement_end_α:   mov              r11, 231
                        mov              r10, 42
                        add              rsp, 16;                             jmp   n231_statement_begin_α
#=======================================================================================================================
# ZFL  <stmt 43, line 98: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n231_statement_begin_α: mov              r11, 232
                        mov              r10, 43;                             jmp   n232_var_α
n231_statement_begin_β: mov              r11, 232;                            jmp   n235_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n232_var_α:             sub              rsp, 16
                        mov              r11, 233
                        mov              rax, qword ptr [r9 + 176]            # ZK
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n233_call_α
#-----------------------------------------------------------------------------------------------------------------------
n233_call_α:            sub              rsp, 16
                        mov              r11, 234
                        lea              rcx, [rip + .Lsig637z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig637z:              .quad            1
                        .quad            .Lx637_2
                        .quad            .Lx637_2
                        .quad            16
.Lx637_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx637_29
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
.Lx637_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx637_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n231_statement_begin_β
.Lx637_240:                                                                   jmp   n234_statement_end_α
n233_call_β:            mov              r11, 234;                            jmp   n231_statement_begin_β
.Lx637_0:               .quad            .Lx637_0_s
.Lx637_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n234_statement_end_α:   mov              r11, 235
                        mov              r10, 43
                        add              rsp, 32;                             jmp   n235_statement_begin_α
#=======================================================================================================================
#         <stmt 44, line 99: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_begin_α: mov              r11, 236
                        mov              r10, 44;                             jmp   n236_var_α
n235_statement_begin_β: mov              r11, 236;                            jmp   n241_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:             sub              rsp, 16
                        mov              r11, 237
                        mov              rax, qword ptr [r9 + 240]            # ZN
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n237_var_α
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:             sub              rsp, 16
                        mov              r11, 238
                        mov              rax, qword ptr [r9 + 176]            # ZK
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n238_binop_α
n237_var_β:             mov              r11, 238
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n235_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n238_binop_α:           sub              rsp, 16
                        mov              r11, 239
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx644_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx644_7
.Lx644_2:               and              edx, 1;                              jz    .Lx644_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx644_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx644_4
.Lx644_3:               movq             xmm0, rsi
.Lx644_4:               cmp              cl, 5;                               je    .Lx644_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx644_6
.Lx644_5:               movq             xmm1, rdi
.Lx644_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx644_7:                                                                     jmp   n239_assign_α
.Lx644_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx644_240
                        add              rsp, 16;                             jmp   n237_var_β
.Lx644_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n239_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n239_assign_α:          mov              r11, 240
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # ZN
                        mov              qword ptr [r9 + 248], rdx;           jmp   n240_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n240_statement_end_α:   mov              r11, 241
                        mov              r10, 44
                        add              rsp, 48;                             jmp   n241_statement_begin_α
#=======================================================================================================================
#         <stmt 45, line 100: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n241_statement_begin_α: mov              r11, 242
                        mov              r10, 45;                             jmp   n242_var_α
n241_statement_begin_β: mov              r11, 242;                            jmp   n248_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:             sub              rsp, 16
                        mov              r11, 243
                        mov              rax, qword ptr [r9 + 240]            # ZN
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n243_var_α
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:             sub              rsp, 16
                        mov              r11, 244
                        mov              rax, qword ptr [r9 + 160]            # fixed_n
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n244_coerce_numeric_α
n243_var_β:             mov              r11, 244
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n241_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n244_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 245
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx653_1
                        cmp              al, 3;                               jne   .Lx653_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx653_0
.Lx653_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n245_coerce_numeric_α
.Lx653_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n245_coerce_numeric_α
n244_coerce_numeric_β:  mov              r11, 245
                        add              rsp, 16;                             jmp   n243_var_β
#-----------------------------------------------------------------------------------------------------------------------
n245_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 246
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx655_1
                        cmp              al, 3;                               jne   .Lx655_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx655_0
.Lx655_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n246_cmp_test_α
.Lx655_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n246_cmp_test_α
n245_coerce_numeric_β:  mov              r11, 246
                        add              rsp, 16;                             jmp   n244_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n246_cmp_test_α:        sub              rsp, 16
                        mov              r11, 247
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx657_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx657_239
                        add              rsp, 16;                             jmp   n245_coerce_numeric_β
.Lx657_239:                                                                   jmp   n247_statement_end_α
.Lx657_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx657_240
                        add              rsp, 16;                             jmp   n245_coerce_numeric_β
.Lx657_240:                                                                   jmp   n247_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_end_α:   mov              r11, 248
                        mov              r10, 45
                        add              rsp, 80;                             jmp   n231_statement_begin_α
#=======================================================================================================================
#         <stmt 46, line 101: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_begin_α: mov              r11, 249
                        mov              r10, 46;                             jmp   n249_call_α
n248_statement_begin_β: mov              r11, 249;                            jmp   n254_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n249_call_α:            sub              rsp, 16
                        mov              r11, 250
                        .section         .rodata
.Lrkfnzd663:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd663]
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
                        cmp              al, 104;                             jne   .Lx662_240
                        add              rsp, 16;                             jmp   n248_statement_begin_β
.Lx662_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n250_var_α
n249_call_β:            mov              r11, 250
                        add              rsp, 16;                             jmp   n248_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:             sub              rsp, 16
                        mov              r11, 251
                        mov              rax, qword ptr [r9 + 192]            # ZT
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_binop_α
n250_var_β:             mov              r11, 251
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n248_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n251_binop_α:           sub              rsp, 16
                        mov              r11, 252
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx665_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx665_7
.Lx665_2:               and              edx, 1;                              jz    .Lx665_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx665_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx665_4
.Lx665_3:               movq             xmm0, rsi
.Lx665_4:               cmp              cl, 5;                               je    .Lx665_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx665_6
.Lx665_5:               movq             xmm1, rdi
.Lx665_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx665_7:                                                                     jmp   n252_assign_α
.Lx665_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx665_240
                        add              rsp, 16;                             jmp   n250_var_β
.Lx665_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n252_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n252_assign_α:          mov              r11, 253
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZE
                        mov              qword ptr [r9 + 216], rdx;           jmp   n253_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n253_statement_end_α:   mov              r11, 254
                        mov              r10, 46
                        add              rsp, 48;                             jmp   n254_statement_begin_α
#=======================================================================================================================
#         <stmt 47, line 102: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n254_statement_begin_α: mov              r11, 255
                        mov              r10, 47;                             jmp   n255_lit_string_α
n254_statement_begin_β: mov              r11, 255;                            jmp   n260_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:      sub              rsp, 16
                        mov              r11, 256
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n256_var_α
.Lx671_0:               .quad            .Lx671_0_s
.Lx671_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:             sub              rsp, 16
                        mov              r11, 257
                        mov              rax, qword ptr [r9 + 240]            # ZN
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n257_binop_α
n256_var_β:             mov              r11, 257
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n254_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n257_binop_α:           sub              rsp, 16
                        mov              r11, 258
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n258_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n258_assign_α:          mov              r11, 259
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx674_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n259_statement_end_α
.Lx674_0:               .quad            .Lx674_0_s
.Lx674_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n259_statement_end_α:   mov              r11, 260
                        mov              r10, 47
                        add              rsp, 48;                             jmp   n260_statement_begin_α
#=======================================================================================================================
#         <stmt 48, line 103: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n260_statement_begin_α: mov              r11, 261
                        mov              r10, 48;                             jmp   n261_lit_string_α
n260_statement_begin_β: mov              r11, 261;                            jmp   n266_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_string_α:      sub              rsp, 16
                        mov              r11, 262
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx679_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n262_var_α
.Lx679_0:               .quad            .Lx679_0_s
.Lx679_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n262_var_α:             sub              rsp, 16
                        mov              r11, 263
                        mov              rax, qword ptr [r9 + 208]            # ZE
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n263_binop_α
n262_var_β:             mov              r11, 263
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n260_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n263_binop_α:           sub              rsp, 16
                        mov              r11, 264
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n264_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n264_assign_α:          mov              r11, 265
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx682_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n265_statement_end_α
.Lx682_0:               .quad            .Lx682_0_s
.Lx682_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n265_statement_end_α:   mov              r11, 266
                        mov              r10, 48
                        add              rsp, 48;                             jmp   n266_statement_begin_α
#=======================================================================================================================
#         <stmt 49, line 104: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n266_statement_begin_α: mov              r11, 267
                        mov              r10, 49;                             jmp   n267_lit_string_α
n266_statement_begin_β: mov              r11, 267;                            jmp   n274_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:      sub              rsp, 16
                        mov              r11, 268
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx687_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n268_var_α
.Lx687_0:               .quad            .Lx687_0_s
.Lx687_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n268_var_α:             sub              rsp, 16
                        mov              r11, 269
                        mov              rax, qword ptr [r9 + 208]            # ZE
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n269_lit_integer_α
n268_var_β:             mov              r11, 269
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n266_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_integer_α:     sub              rsp, 16
                        mov              r11, 270
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx689_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n270_binop_α
n269_lit_integer_β:     mov              r11, 270
                        add              rsp, 16;                             jmp   n268_var_β
.Lx689_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n270_binop_α:           sub              rsp, 16
                        mov              r11, 271
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx690_240
                        add              rsp, 16;                             jmp   n269_lit_integer_β
.Lx690_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n271_binop_α
n270_binop_β:           mov              r11, 271
                        add              rsp, 16;                             jmp   n269_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n271_binop_α:           sub              rsp, 16
                        mov              r11, 272
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n272_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n272_assign_α:          mov              r11, 273
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx692_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n273_statement_end_α
.Lx692_0:               .quad            .Lx692_0_s
.Lx692_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n273_statement_end_α:   mov              r11, 274
                        mov              r10, 49
                        add              rsp, 80;                             jmp   n274_statement_begin_α
#=======================================================================================================================
# ZEXIT  <stmt 50, line 105: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n274_statement_begin_α: mov              r11, 275
                        mov              r10, 50;                             jmp   n275_var_α
n274_statement_begin_β: mov              r11, 275;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n275_var_α:             sub              rsp, 16
                        mov              r11, 276
                        mov              rax, qword ptr [r9 + 208]            # ZE
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n276_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n276_assign_α:          mov              r11, 277
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZE
                        mov              qword ptr [r9 + 216], rdx;           jmp   n277_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n277_statement_end_α:   mov              r11, 278
                        mov              r10, 50
                        add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 279
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              r11, 280
                        add              rsp, 8
                        pop              rcx;                                 jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lseala2:               .string          "ROMAN"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ROMAN_α
                        lea              rdi, [rip + .Lseala2]
                        mov              rsi, qword ptr [rip + ROMAN_α@GOTPCREL]
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
                        .section         .rodata
.S0:                    .string          "T"
.S1:                    .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
