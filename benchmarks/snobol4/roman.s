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
                        sub              rsp, 0
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:                                                         jmp   n1_lit_integer_α
n0_statement_begin_β:                                                         jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_keyword_assign_snobol4_α
.Lx213_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx214_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx214_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx214_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_statement_end_α
.Lx214_0:               .quad            1
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
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_keyword_assign_snobol4_α
.Lx219_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx220_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx220_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lx220_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_statement_end_α
.Lx220_0:               .quad            0
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
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_unop_α
.Lx225_0:               .quad            1
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
                        mov              rdi, qword ptr [rip + .Lx227_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx227_240
                        add              rsp, 16;                             jmp   n10_unop_β
.Lx227_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n12_statement_end_α
.Lx227_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:    add              rsp, 48;                             jmp   n13_statement_begin_α
#=======================================================================================================================
#         ZCHK = 200
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:                                                        jmp   n14_lit_integer_α
n13_statement_begin_β:                                                        jmp   n17_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Lx232_0:               .quad            200
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZCHK
                        mov              qword ptr [r9 + 88], rdx;            jmp   n16_statement_end_α
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
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx238_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZBUD
                        mov              qword ptr [r9 + 104], rdx;           jmp   n20_statement_end_α
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
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_assign_α
.Lx244_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZFLR
                        mov              qword ptr [r9 + 120], rdx;           jmp   n24_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    add              rsp, 16;                             jmp   n25_statement_begin_α
#=======================================================================================================================
#         DEFINE('ROMAN(N)T')                             :(ROMAN_END)
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:                                                        jmp   n26_define_α
n25_statement_begin_β:                                                        jmp   n60_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_define_α:           mov              rdi, qword ptr [rip + .Lx251_0]
                        mov              rsi, qword ptr [rip + .Lx251_1]
                        mov              edx, 2
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n28_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx251_0]
                        lea              rsi, [rip + ROMAN_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_statement_end_α
n26_define_β:                                                                 jmp   n25_statement_begin_β
.Lx251_0:               .quad            .Lx251_0_s
.Lx251_0_s:             .string          "ROMAN"
.Lx251_1:               .quad            .Lx251_1_s
.Lx251_1_s:             .string          "N,T"
                                                                              jmp   .Lx252_245
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
                        mov              qword ptr [rsp + 32], r10
                        mov              qword ptr [rsp + 40], r11
                        mov              qword ptr [rsp + 48], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        cmp              rdx, 0;                              jbe   .Lx252_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx252_41
.Lx252_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx252_41:              lea              r10, [rip + ROMAN_γ]
                        lea              r11, [rip + ROMAN_ω]
                        push             r11
                        push             r10
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
                        cmp              rdx, 0;                              jbe   .Lx252_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx252_110
.Lx252_80:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 24], rax
.Lx252_110:             mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx252_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx252_180
.Lx252_150:             mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 24], rax
.Lx252_180:             mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx252_245:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:                                                          jmp   n60_statement_begin_α
#=======================================================================================================================
# ROMAN   N ? RPOS(1) LEN(1) . T =                        :F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:                                                        jmp   n29_var_α
n28_statement_begin_β:                                                        jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n30_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n30_match_begin_α:      mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx259_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx259_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n31_match_rpos_α
n30_match_begin_β:
.Lx259_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx259_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx259_1
                                                                              jmp   .Lx259_0
.Lx259_1:
n30_match_begin_af:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13                             # sig
                        mov              rsi, r15                             # len
                        call             rt_match_ctx_restore@PLT
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 16;                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n31_match_rpos_α:       mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n30_match_begin_β
                                                                              jmp   n32_match_assign_save_α
n31_match_rpos_β:                                                             jmp   n30_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n32_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n33_match_len_α
n32_match_assign_save_β:
                        add              rsp, 16;                             jmp   n30_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n33_match_len_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jle   .Lx263_240
                        add              rsp, 16;                             jmp   n30_match_begin_β
.Lx263_240:             add              r14d, 1;                             jmp   n34_match_assign_cond_α
n33_match_len_β:        sub              r14d, 1
                        add              rsp, 16;                             jmp   n30_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n34_match_assign_cond_α:
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
                        sub              r12, 24;                             jmp   n33_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n35_match_end_α:        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx267_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n30_match_begin_af
.Lx267_13:              add              rsp, 16
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
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_match_replace_α
.Lx268_0:               .quad            .Lx268_0_s
.Lx268_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n37_match_replace_α:    mov              rdi, qword ptr [rip + .Lx270_0]
                        mov              rsi, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              ecx, dword ptr [r12 + -16]           # repl_start
                        mov              r8, qword ptr [r12 + -8]             # repl_end
                        sub              r12, 16
                        lea              r9, [rsp + 0]                        # lit_string
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_match_replace@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16;                             jmp   .Lx270_1
.Lx270_0:               .quad            .Lx270_0_s
.Lx270_0_s:             .string          "N"
.Lx270_1:                                                                     jmp   n38_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_end_α:    add              rsp, 16;                             jmp   n39_statement_begin_α
#=======================================================================================================================
#         '0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' T BREAK(',') . T   :F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_begin_α:                                                        jmp   n40_lit_string_α
n39_statement_begin_β:                                                        jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 40
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_var_α
.Lx275_0:               .quad            .Lx275_0_s
.Lx275_0_s:             .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # T
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n42_assign_α
n41_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:           mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n43_match_begin_α
n42_assign_β:                                                                 jmp   n41_var_β
.Lx277_0:               .quad            .Lx277_0_s
.Lx277_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n43_match_begin_α:      mov              rdi, qword ptr [rsp + 16]            # lit_string
                        mov              rsi, qword ptr [rsp + 24]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx279_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx279_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n44_match_defer_α
n43_match_begin_β:
.Lx279_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx279_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx279_1
                                                                              jmp   .Lx279_0
.Lx279_1:
n43_match_begin_af:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13                             # sig
                        mov              rsi, r15                             # len
                        call             rt_match_ctx_restore@PLT
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n42_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n44_match_defer_α:      lea              rdi, [rip + .S1]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx280_14
                        mov              rax, qword ptr [rdx + 0]
.Lx280_14:              test             rax, rax;                            jz    .Lx280_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx280_5]
                        push             rcx
                        lea              rcx, [rip + .Lx280_4]
                        push             rcx;                                 jmp   rax
.Lx280_4:                                                                     jmp   n45_match_assign_save_α
.Lx280_5:                                                                     jmp   n43_match_begin_β
.Lx280_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n43_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx280_6]
                        push             rcx
                        push             rax;                                 jmp   n45_match_assign_save_α
.Lx280_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n43_match_begin_β
n44_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx280_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx280_12
                                                                              jmp   rax
.Lx280_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n45_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n46_match_break_α
n45_match_assign_save_β:
                        add              rsp, 16;                             jmp   n44_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n46_match_break_α:      sub              rsp, 16
                        movsxd           rcx, r14d
.Lx284_0:               cmp              ecx, r15d;                           jl    .Lx284_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n44_match_defer_β
.Lx284_240:             movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .Lx284_1
                        add              ecx, 1;                              jmp   .Lx284_0
.Lx284_1:               mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx;                           jmp   n47_match_assign_cond_α
n46_match_break_β:      mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n44_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n47_match_assign_cond_α:
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
                        sub              r12, 24;                             jmp   n46_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n48_match_end_α:        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx288_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n43_match_begin_af
.Lx288_13:              add              rsp, 16
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
n49_statement_end_α:    add              rsp, 32;                             jmp   n50_statement_begin_α
#=======================================================================================================================
#         ROMAN = REPLACE(ROMAN(N), 'IVXLCDM', 'XLCDM**') T   :S(RETURN)F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_begin_α:                                                        jmp   n51_var_α
n50_statement_begin_β:                                                        jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n52_call_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig295z]
                        lea              rax, [rip + ROMAN_α];                jmp   rax
.Lsig295z:              .quad            1
                        .quad            .Lx295_2
                        .quad            .Lx295_2
                        .quad            16
.Lx295_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx295_29
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
.Lx295_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx295_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n50_statement_begin_β
.Lx295_240:                                                                   jmp   n53_lit_string_α
n52_call_β:                                                                   jmp   n50_statement_begin_β
.Lx295_0:               .quad            .Lx295_0_s
.Lx295_0_s:             .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_lit_string_α
n53_lit_string_β:       add              rsp, 16
                        add              rsp, 32;                             jmp   n50_statement_begin_β
.Lx296_0:               .quad            .Lx296_0_s
.Lx296_0_s:             .string          "IVXLCDM"
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_call_α
n54_lit_string_β:       add              rsp, 16;                             jmp   n53_lit_string_β
.Lx297_0:               .quad            .Lx297_0_s
.Lx297_0_s:             .string          "XLCDM**"
#-----------------------------------------------------------------------------------------------------------------------
n55_call_α:             sub              rsp, 16
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
.Lrkfnzd299:            .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd299]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 48
                        cmp              eax, 104;                            jne   .Lx298_240
                        add              rsp, 16;                             jmp   n54_lit_string_β
.Lx298_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n56_var_α
n55_call_β:             add              rsp, 16;                             jmp   n54_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # T
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n57_binop_α
n56_var_β:              add              rsp, 32;                             jmp   n54_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n57_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n58_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ROMAN
                        mov              qword ptr [r9 + 8], rdx;             jmp   n59_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_end_α:    add              rsp, 112;                            jmp   RETURN
#=======================================================================================================================
# ROMAN_END  <stmt 11, line 19: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_begin_α:                                                        jmp   n61_statement_end_α
n60_statement_begin_β:                                                        jmp   n62_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:                                                          jmp   n62_statement_begin_α
#=======================================================================================================================
#         DEFINE('ZBODY(ZKN)')                            :(ZBODY_END)
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_begin_α:                                                        jmp   n63_define_α
n62_statement_begin_β:                                                        jmp   n98_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n63_define_α:           mov              rdi, qword ptr [rip + .Lx312_0]
                        mov              rsi, qword ptr [rip + .Lx312_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n65_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx312_0]
                        lea              rsi, [rip + ZBODY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n64_statement_end_α
n63_define_β:                                                                 jmp   n62_statement_begin_β
.Lx312_0:               .quad            .Lx312_0_s
.Lx312_0_s:             .string          "ZBODY"
.Lx312_1:               .quad            .Lx312_1_s
.Lx312_1_s:             .string          "ZKN"
                                                                              jmp   .Lx313_245
#-----------------------------------------------------------------------------------------------------------------------
ZBODY_α:                sub              rsp, 64
                        mov              rax, qword ptr [r9 + 48]             # ZBODY
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx313_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 64]             # ZKN
                        mov              qword ptr [r9 + 64], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 72]
                        mov              qword ptr [r9 + 72], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx313_41
.Lx313_10:              mov              rax, qword ptr [r9 + 64]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 64], 0
                        mov              qword ptr [r9 + 72], 0
.Lx313_41:              lea              r10, [rip + ZBODY_γ]
                        lea              r11, [rip + ZBODY_ω]
                        push             r11
                        push             r10
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
                        cmp              rdx, 0;                              jbe   .Lx313_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 64], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 72], rax;            jmp   .Lx313_110
.Lx313_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 72], rax
.Lx313_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx313_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 64], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 72], rax;            jmp   .Lx313_180
.Lx313_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 72], rax
.Lx313_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx313_245:
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:                                                          jmp   n98_statement_begin_α
#=======================================================================================================================
# ZBODY   ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:                                                        jmp   n66_lit_integer_α
n65_statement_begin_β:                                                        jmp   n69_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_assign_α
.Lx318_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZI
                        mov              qword ptr [r9 + 136], rdx;           jmp   n68_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    add              rsp, 16;                             jmp   n69_statement_begin_α
#=======================================================================================================================
#         ZS = 0
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:                                                        jmp   n70_lit_integer_α
n69_statement_begin_β:                                                        jmp   n73_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_assign_α
.Lx324_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n71_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZS
                        mov              qword ptr [r9 + 152], rdx;           jmp   n72_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_end_α:    add              rsp, 16;                             jmp   n73_statement_begin_α
#=======================================================================================================================
# ZBL     ZS = ZS + SIZE(ROMAN(1000 + ZI))
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_begin_α:                                                        jmp   n74_var_α
n73_statement_begin_β:                                                        jmp   n83_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZS
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n75_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n76_var_α
n75_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n73_statement_begin_β
.Lx331_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZI
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n77_binop_α
n76_var_β:              add              rsp, 16;                             jmp   n75_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n77_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              eax, 3;                              jne   .Lx333_2
                        mov              rax, 1000
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx333_7
.Lx333_2:               mov              ecx, eax
                        mov              edx, eax
                        and              edx, 1;                              jz    .Lx333_0
                        mov              rsi, 1000
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cvtsi2sd         xmm0, rsi
                        cmp              ecx, 5;                              je    .Lx333_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx333_6
.Lx333_5:               movq             xmm1, rdi
.Lx333_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx333_7:                                                                     jmp   n78_call_α
.Lx333_0:               mov              rdi, qword ptr [rsp + 32]            # lit_integer
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx333_240
                        add              rsp, 16;                             jmp   n76_var_β
.Lx333_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n78_call_α
n77_binop_β:            add              rsp, 16;                             jmp   n76_var_β
#-----------------------------------------------------------------------------------------------------------------------
n78_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lsig335z]
                        lea              rax, [rip + ROMAN_α];                jmp   rax
.Lsig335z:              .quad            1
                        .quad            .Lx335_2
                        .quad            .Lx335_2
                        .quad            16
.Lx335_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx335_29
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
.Lx335_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx335_240
                        add              rsp, 16;                             jmp   n77_binop_β
.Lx335_240:                                                                   jmp   n79_call_α
n78_call_β:                                                                   jmp   n77_binop_β
.Lx335_0:               .quad            .Lx335_0_s
.Lx335_0_s:             .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n79_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd337:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd337]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx336_240
                        add              rsp, 32;                             jmp   n77_binop_β
.Lx336_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_binop_α
n79_call_β:             add              rsp, 32;                             jmp   n77_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n80_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 96]            # var
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx338_2
                        mov              rax, qword ptr [rsp + 104]           # var
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx338_7
.Lx338_2:               and              edx, 1;                              jz    .Lx338_0
                        mov              rsi, qword ptr [rsp + 104]           # var
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              eax, 5;                              je    .Lx338_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx338_4
.Lx338_3:               movq             xmm0, rsi
.Lx338_4:               cmp              ecx, 5;                              je    .Lx338_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx338_6
.Lx338_5:               movq             xmm1, rdi
.Lx338_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx338_7:                                                                     jmp   n81_assign_α
.Lx338_0:               mov              rdi, qword ptr [rsp + 96]            # var
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx338_240
                        add              rsp, 48;                             jmp   n77_binop_β
.Lx338_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n81_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZS
                        mov              qword ptr [r9 + 152], rdx;           jmp   n82_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_end_α:    add              rsp, 112;                            jmp   n83_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_begin_α:                                                        jmp   n84_var_α
n83_statement_begin_β:                                                        jmp   n94_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZI
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZKN
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n86_coerce_numeric_α
n85_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n83_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n86_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx347_1
                        cmp              eax, 3;                              jne   .Lx347_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx347_0
.Lx347_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n87_coerce_numeric_α
.Lx347_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n87_coerce_numeric_α
n86_coerce_numeric_β:   add              rsp, 16;                             jmp   n85_var_β
#-----------------------------------------------------------------------------------------------------------------------
n87_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx349_1
                        cmp              eax, 3;                              jne   .Lx349_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx349_0
.Lx349_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n88_cmp_test_α
.Lx349_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n88_cmp_test_α
n87_coerce_numeric_β:   add              rsp, 16;                             jmp   n86_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n88_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx351_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx351_239
                        add              rsp, 16;                             jmp   n87_coerce_numeric_β
.Lx351_239:                                                                   jmp   n89_var_α
.Lx351_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx351_240
                        add              rsp, 16;                             jmp   n87_coerce_numeric_β
.Lx351_240:                                                                   jmp   n89_var_α
n88_cmp_test_β:         add              rsp, 16;                             jmp   n87_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # ZI
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n90_lit_integer_α
n89_var_β:              add              rsp, 16;                             jmp   n88_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n91_binop_α
n90_lit_integer_β:      add              rsp, 16;                             jmp   n89_var_β
.Lx353_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n91_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx354_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx354_7
.Lx354_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx354_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx354_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx354_4
.Lx354_3:               movq             xmm0, rsi
.Lx354_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx354_7:                                                                     jmp   n92_assign_α
.Lx354_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx354_240
                        add              rsp, 16;                             jmp   n90_lit_integer_β
.Lx354_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n92_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZI
                        mov              qword ptr [r9 + 136], rdx;           jmp   n93_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_end_α:    add              rsp, 128;                            jmp   n73_statement_begin_α
#=======================================================================================================================
#         ZBODY = ZS                                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_begin_α:                                                        jmp   n95_var_α
n94_statement_begin_β:                                                        jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # ZS
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n96_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBODY
                        mov              qword ptr [r9 + 56], rdx;            jmp   n97_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_end_α:    add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 18, line 26: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_begin_α:                                                        jmp   n99_statement_end_α
n98_statement_begin_β:                                                        jmp   n100_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_end_α:                                                          jmp   n100_statement_begin_α
#=======================================================================================================================
#         <stmt 19, line 51: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_begin_α:                                                       jmp   n101_lit_string_α
n100_statement_begin_β:                                                       jmp   n107_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n102_var_α
.Lx370_0:               .quad            .Lx370_0_s
.Lx370_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # ZCHK
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_call_α
n102_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n100_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n103_call_α:            sub              rsp, 16
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
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx373_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx373_240
                        add              rsp, 16;                             jmp   n102_var_β
.Lx373_240:                                                                   jmp   n104_binop_α
n103_call_β:                                                                  jmp   n102_var_β
.Lx373_0:               .quad            .Lx373_0_s
.Lx373_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n104_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n105_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n105_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n106_statement_end_α
.Lx375_0:               .quad            .Lx375_0_s
.Lx375_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_end_α:   add              rsp, 64;                             jmp   n107_statement_begin_α
#=======================================================================================================================
#         <stmt 20, line 52: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_begin_α:                                                       jmp   n108_var_α
n107_statement_begin_β:                                                       jmp   n113_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZFLR
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n110_binop_α
n109_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n107_statement_begin_β
.Lx381_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n110_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx382_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx382_7
.Lx382_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx382_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              eax, 5;                              je    .Lx382_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx382_4
.Lx382_3:               movq             xmm0, rsi
.Lx382_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx382_7:                                                                     jmp   n111_assign_α
.Lx382_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx382_240
                        add              rsp, 16;                             jmp   n109_lit_integer_β
.Lx382_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n111_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZFLR
                        mov              qword ptr [r9 + 120], rdx;           jmp   n112_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_end_α:   add              rsp, 48;                             jmp   n113_statement_begin_α
#=======================================================================================================================
#         <stmt 21, line 53: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_begin_α:                                                       jmp   n114_var_α
n113_statement_begin_β:                                                       jmp   n119_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # ZBUD
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n115_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n116_binop_α
n115_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n113_statement_begin_β
.Lx389_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n116_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx390_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx390_7
.Lx390_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx390_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              eax, 5;                              je    .Lx390_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx390_4
.Lx390_3:               movq             xmm0, rsi
.Lx390_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx390_7:                                                                     jmp   n117_assign_α
.Lx390_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx390_240
                        add              rsp, 16;                             jmp   n115_lit_integer_β
.Lx390_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n117_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n117_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZBUD
                        mov              qword ptr [r9 + 104], rdx;           jmp   n118_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n118_statement_end_α:   add              rsp, 48;                             jmp   n119_statement_begin_α
#=======================================================================================================================
#         <stmt 22, line 54: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n119_statement_begin_α:                                                       jmp   n120_var_α
n119_statement_begin_β:                                                       jmp   n123_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
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
.Lrkfnzd398:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd398]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx397_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n119_statement_begin_β
.Lx397_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n122_statement_end_α
n121_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n119_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_end_α:   add              rsp, 32;                             jmp   n152_statement_begin_α
#=======================================================================================================================
#         <stmt 23, line 55: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_begin_α:                                                       jmp   n124_lit_integer_α
n123_statement_begin_β:                                                       jmp   n127_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n125_assign_α
.Lx403_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n125_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZK
                        mov              qword ptr [r9 + 168], rdx;           jmp   n126_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_end_α:   add              rsp, 16;                             jmp   n127_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 24, line 56: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_begin_α:                                                       jmp   n128_call_α
n127_statement_begin_β:                                                       jmp   n131_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n128_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd410:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd410]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx409_240
                        add              rsp, 16;                             jmp   n127_statement_begin_β
.Lx409_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n129_assign_α
n128_call_β:            add              rsp, 16;                             jmp   n127_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n129_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZT
                        mov              qword ptr [r9 + 184], rdx;           jmp   n130_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_end_α:   add              rsp, 16;                             jmp   n131_statement_begin_α
#=======================================================================================================================
#         <stmt 25, line 57: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_begin_α:                                                       jmp   n132_var_α
n131_statement_begin_β:                                                       jmp   n135_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_call_α
#-----------------------------------------------------------------------------------------------------------------------
n133_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig418z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig418z:              .quad            1
                        .quad            .Lx418_2
                        .quad            .Lx418_2
                        .quad            16
.Lx418_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx418_29
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
.Lx418_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx418_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n131_statement_begin_β
.Lx418_240:                                                                   jmp   n134_statement_end_α
n133_call_β:                                                                  jmp   n131_statement_begin_β
.Lx418_0:               .quad            .Lx418_0_s
.Lx418_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_end_α:   add              rsp, 32;                             jmp   n135_statement_begin_α
#=======================================================================================================================
#         <stmt 26, line 58: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_begin_α:                                                       jmp   n136_call_α
n135_statement_begin_β:                                                       jmp   n141_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n136_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd424:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd424]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx423_240
                        add              rsp, 16;                             jmp   n135_statement_begin_β
.Lx423_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n137_var_α
n136_call_β:            add              rsp, 16;                             jmp   n135_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZT
                        mov              rdx, qword ptr [r9 + 184]
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
                        cmp              edx, 3;                              jne   .Lx426_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx426_7
.Lx426_2:               and              edx, 1;                              jz    .Lx426_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx426_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx426_4
.Lx426_3:               movq             xmm0, rsi
.Lx426_4:               cmp              ecx, 5;                              je    .Lx426_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx426_6
.Lx426_5:               movq             xmm1, rdi
.Lx426_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx426_7:                                                                     jmp   n139_assign_α
.Lx426_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx426_240
                        add              rsp, 16;                             jmp   n137_var_β
.Lx426_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n139_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n139_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZE
                        mov              qword ptr [r9 + 200], rdx;           jmp   n140_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_end_α:   add              rsp, 48;                             jmp   n141_statement_begin_α
#=======================================================================================================================
#         <stmt 27, line 59: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_begin_α:                                                       jmp   n142_var_α
n141_statement_begin_β:                                                       jmp   n152_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_var_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # ZFLR
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n144_coerce_numeric_α
n143_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n141_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n144_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx435_1
                        cmp              eax, 3;                              jne   .Lx435_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx435_0
.Lx435_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n145_coerce_numeric_α
.Lx435_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n145_coerce_numeric_α
n144_coerce_numeric_β:  add              rsp, 16;                             jmp   n143_var_β
#-----------------------------------------------------------------------------------------------------------------------
n145_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx437_1
                        cmp              eax, 3;                              jne   .Lx437_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx437_0
.Lx437_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_cmp_test_α
.Lx437_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n146_cmp_test_α
n145_coerce_numeric_β:  add              rsp, 16;                             jmp   n144_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n146_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx439_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx439_239
                        add              rsp, 16;                             jmp   n145_coerce_numeric_β
.Lx439_239:                                                                   jmp   n147_var_α
.Lx439_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx439_240
                        add              rsp, 16;                             jmp   n145_coerce_numeric_β
.Lx439_240:                                                                   jmp   n147_var_α
n146_cmp_test_β:        add              rsp, 16;                             jmp   n145_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_lit_integer_α
n147_var_β:             add              rsp, 16;                             jmp   n146_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n149_binop_α
n148_lit_integer_β:     add              rsp, 16;                             jmp   n147_var_β
.Lx441_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n149_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              ecx, 3;                              jne   .Lx442_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx442_7
.Lx442_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx442_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              eax, 5;                              je    .Lx442_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx442_4
.Lx442_3:               movq             xmm0, rsi
.Lx442_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx442_7:                                                                     jmp   n150_assign_α
.Lx442_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx442_240
                        add              rsp, 16;                             jmp   n148_lit_integer_β
.Lx442_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n150_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n150_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZK
                        mov              qword ptr [r9 + 168], rdx;           jmp   n151_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:   add              rsp, 128;                            jmp   n127_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 28, line 60: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_begin_α:                                                       jmp   n153_call_α
n152_statement_begin_β:                                                       jmp   n156_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n153_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd449:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd449]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx448_240
                        add              rsp, 16;                             jmp   n152_statement_begin_β
.Lx448_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_assign_α
n153_call_β:            add              rsp, 16;                             jmp   n152_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n154_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZT
                        mov              qword ptr [r9 + 184], rdx;           jmp   n155_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_end_α:   add              rsp, 16;                             jmp   n156_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 61: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_begin_α:                                                       jmp   n157_var_α
n156_statement_begin_β:                                                       jmp   n162_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n157_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZT
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n158_var_α
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # ZBUD
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_binop_α
n158_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n156_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n159_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx457_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx457_7
.Lx457_2:               and              edx, 1;                              jz    .Lx457_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx457_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx457_4
.Lx457_3:               movq             xmm0, rsi
.Lx457_4:               cmp              ecx, 5;                              je    .Lx457_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx457_6
.Lx457_5:               movq             xmm1, rdi
.Lx457_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx457_7:                                                                     jmp   n160_assign_α
.Lx457_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx457_240
                        add              rsp, 16;                             jmp   n158_var_β
.Lx457_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n160_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZD
                        mov              qword ptr [r9 + 216], rdx;           jmp   n161_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_end_α:   add              rsp, 48;                             jmp   n162_statement_begin_α
#=======================================================================================================================
#         <stmt 30, line 62: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_begin_α:                                                       jmp   n163_lit_integer_α
n162_statement_begin_β:                                                       jmp   n166_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n164_assign_α
.Lx463_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n164_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZN
                        mov              qword ptr [r9 + 232], rdx;           jmp   n165_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_end_α:   add              rsp, 16;                             jmp   n166_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 31, line 63: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_begin_α:                                                       jmp   n167_var_α
n166_statement_begin_β:                                                       jmp   n170_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n168_call_α
#-----------------------------------------------------------------------------------------------------------------------
n168_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig471z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig471z:              .quad            1
                        .quad            .Lx471_2
                        .quad            .Lx471_2
                        .quad            16
.Lx471_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx471_29
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
.Lx471_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx471_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n166_statement_begin_β
.Lx471_240:                                                                   jmp   n169_statement_end_α
n168_call_β:                                                                  jmp   n166_statement_begin_β
.Lx471_0:               .quad            .Lx471_0_s
.Lx471_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n169_statement_end_α:   add              rsp, 32;                             jmp   n170_statement_begin_α
#=======================================================================================================================
#         <stmt 32, line 64: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_begin_α:                                                       jmp   n171_var_α
n170_statement_begin_β:                                                       jmp   n176_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n171_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # ZN
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n172_var_α
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZK
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n173_binop_α
n172_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n170_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n173_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx478_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx478_7
.Lx478_2:               and              edx, 1;                              jz    .Lx478_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx478_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx478_4
.Lx478_3:               movq             xmm0, rsi
.Lx478_4:               cmp              ecx, 5;                              je    .Lx478_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx478_6
.Lx478_5:               movq             xmm1, rdi
.Lx478_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx478_7:                                                                     jmp   n174_assign_α
.Lx478_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx478_240
                        add              rsp, 16;                             jmp   n172_var_β
.Lx478_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n174_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n174_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZN
                        mov              qword ptr [r9 + 232], rdx;           jmp   n175_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_end_α:   add              rsp, 48;                             jmp   n176_statement_begin_α
#=======================================================================================================================
#         <stmt 33, line 65: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_begin_α:                                                       jmp   n177_call_α
n176_statement_begin_β:                                                       jmp   n183_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n177_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd485:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd485]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx484_240
                        add              rsp, 16;                             jmp   n176_statement_begin_β
.Lx484_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n178_var_α
n177_call_β:            add              rsp, 16;                             jmp   n176_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ZD
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_coerce_numeric_α
n178_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n176_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n179_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx488_1
                        cmp              eax, 3;                              jne   .Lx488_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              eax, 3;                              jne   .Lx488_0
.Lx488_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n180_coerce_numeric_α
.Lx488_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n180_coerce_numeric_α
n179_coerce_numeric_β:  add              rsp, 16;                             jmp   n178_var_β
#-----------------------------------------------------------------------------------------------------------------------
n180_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx490_1
                        cmp              eax, 3;                              jne   .Lx490_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx490_0
.Lx490_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n181_cmp_test_α
.Lx490_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n181_cmp_test_α
n180_coerce_numeric_β:  add              rsp, 16;                             jmp   n179_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n181_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx492_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx492_239
                        add              rsp, 16;                             jmp   n180_coerce_numeric_β
.Lx492_239:                                                                   jmp   n182_statement_end_α
.Lx492_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx492_240
                        add              rsp, 16;                             jmp   n180_coerce_numeric_β
.Lx492_240:                                                                   jmp   n182_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_end_α:   add              rsp, 80;                             jmp   n166_statement_begin_α
#=======================================================================================================================
#         <stmt 34, line 66: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_begin_α:                                                       jmp   n184_call_α
n183_statement_begin_β:                                                       jmp   n189_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n184_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd498:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd498]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx497_240
                        add              rsp, 16;                             jmp   n183_statement_begin_β
.Lx497_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n185_var_α
n184_call_β:            add              rsp, 16;                             jmp   n183_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZT
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_binop_α
n185_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n183_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n186_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx500_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx500_7
.Lx500_2:               and              edx, 1;                              jz    .Lx500_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx500_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx500_4
.Lx500_3:               movq             xmm0, rsi
.Lx500_4:               cmp              ecx, 5;                              je    .Lx500_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx500_6
.Lx500_5:               movq             xmm1, rdi
.Lx500_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx500_7:                                                                     jmp   n187_assign_α
.Lx500_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx500_240
                        add              rsp, 16;                             jmp   n185_var_β
.Lx500_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n187_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n187_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZE
                        mov              qword ptr [r9 + 200], rdx;           jmp   n188_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_end_α:   add              rsp, 48;                             jmp   n189_statement_begin_α
#=======================================================================================================================
#         <stmt 35, line 67: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_begin_α:                                                       jmp   n190_lit_string_α
n189_statement_begin_β:                                                       jmp   n195_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx506_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n191_var_α
.Lx506_0:               .quad            .Lx506_0_s
.Lx506_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # ZN
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n192_binop_α
n191_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n189_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n192_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n193_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n193_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n194_statement_end_α
.Lx509_0:               .quad            .Lx509_0_s
.Lx509_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_end_α:   add              rsp, 48;                             jmp   n195_statement_begin_α
#=======================================================================================================================
#         <stmt 36, line 68: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_begin_α:                                                       jmp   n196_lit_string_α
n195_statement_begin_β:                                                       jmp   n201_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n197_var_α
.Lx514_0:               .quad            .Lx514_0_s
.Lx514_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n198_binop_α
n197_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n195_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n198_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n199_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n199_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n200_statement_end_α
.Lx517_0:               .quad            .Lx517_0_s
.Lx517_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_end_α:   add              rsp, 48;                             jmp   n201_statement_begin_α
#=======================================================================================================================
#         <stmt 37, line 69: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_begin_α:                                                       jmp   n202_lit_string_α
n201_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx522_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n203_var_α
.Lx522_0:               .quad            .Lx522_0_s
.Lx522_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n203_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZE
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n204_lit_integer_α
n203_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n201_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx524_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n205_binop_α
n204_lit_integer_β:     add              rsp, 16;                             jmp   n203_var_β
.Lx524_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n205_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              eax, 104;                            jne   .Lx525_240
                        add              rsp, 16;                             jmp   n204_lit_integer_β
.Lx525_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n206_binop_α
n205_binop_β:           add              rsp, 16;                             jmp   n204_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n206_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n207_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n207_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n208_statement_end_α
.Lx527_0:               .quad            .Lx527_0_s
.Lx527_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n208_statement_end_α:   add              rsp, 80;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 pop              rcx
                        add              rsp, 8;                              jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                add              rsp, 8
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
