                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__EXPR$0:
EXPR$0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_define_α:            mov              r11, 1;                              jmp   n1_call_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_α:              sub              rsp, 16
                        mov              r11, 2
                        lea              rcx, [rip + .Lsig6z]
                        lea              rax, [rip + F_α];                    jmp   rax
.Lsig6z:                .quad            0
                        .quad            .Lx6_2
                        .quad            .Lx6_2
.Lx6_2:                 mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx6_29
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
.Lx6_29:                mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx6_240
                        add              rsp, 16;                             jmp   EXPR$0_ω
.Lx6_240:                                                                     jmp   n2_assign_α
n1_call_β:              mov              r11, 2;                              jmp   EXPR$0_ω
.Lx6_0:                 .quad            .Lx6_0_s
.Lx6_0_s:               .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              r11, 3
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # EXPR$0
                        mov              qword ptr [r9 + 56], rdx
                        add              rsp, 16;                             jmp   EXPR$0_γ
#-----------------------------------------------------------------------------------------------------------------------
EXPR$0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
EXPR$0_β:
                                                                              jmp   EXPR$0_ω
#-----------------------------------------------------------------------------------------------------------------------
EXPR$0_γ:
                                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
EXPR$0_ω:
                                                                              jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
FN__EXPR$1:
EXPR$1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n8_define_α:            mov              r11, 4;                              jmp   n9_call_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_α:              sub              rsp, 16
                        mov              r11, 5
                        lea              rcx, [rip + .Lsig14z]
                        lea              rax, [rip + F_α];                    jmp   rax
.Lsig14z:               .quad            0
                        .quad            .Lx14_2
                        .quad            .Lx14_2
.Lx14_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx14_29
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
.Lx14_29:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx14_240
                        add              rsp, 16;                             jmp   EXPR$1_ω
.Lx14_240:                                                                    jmp   n10_assign_α
n9_call_β:              mov              r11, 5;                              jmp   EXPR$1_ω
.Lx14_0:                .quad            .Lx14_0_s
.Lx14_0_s:              .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              r11, 6
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # EXPR$1
                        mov              qword ptr [r9 + 72], rdx
                        add              rsp, 16;                             jmp   EXPR$1_γ
#-----------------------------------------------------------------------------------------------------------------------
EXPR$1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
EXPR$1_β:
                                                                              jmp   EXPR$1_ω
#-----------------------------------------------------------------------------------------------------------------------
EXPR$1_γ:
                                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
EXPR$1_ω:
                                                                              jmp   qword ptr [rsp + 8]
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 5
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 5
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "F"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "JUNK"
.Lgvan3:                .string          "EXPR$0"
.Lgvan4:                .string          "EXPR$1"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         DEFINE('F()')                            :(MAIN)
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:  mov              r11, 7
                        mov              r10, 1;                              jmp   n17_define_α
n16_statement_begin_β:  mov              r11, 7;                              jmp   n39_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n17_define_α:           mov              r11, 8
                        mov              rdi, qword ptr [rip + .Lx91_0]
                        mov              rsi, qword ptr [rip + .Lx91_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n19_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx91_0]
                        lea              rsi, [rip + F_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n18_statement_end_α
n17_define_β:           mov              r11, 8;                              jmp   n16_statement_begin_β
.Lx91_0:                .quad            .Lx91_0_s
.Lx91_0_s:              .string          "F"
.Lx91_1:                .quad            .Lx91_1_s
.Lx91_1_s:              .string          ""
                                                                              jmp   .Lx92_245
#-----------------------------------------------------------------------------------------------------------------------
F_α:                    sub              rsp, 48
                        mov              rax, qword ptr [r9 + 0]              # F
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              rcx, [rip + F_γ]
                        lea              rax, [rip + F_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n19_statement_begin_α];  jmp   rax
F_γ:                    mov              rdi, qword ptr [r9 + 0]
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
F_ω:                    mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx92_245:
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_end_α:    mov              r11, 9
                        mov              r10, 1;                              jmp   n39_statement_begin_α
#=======================================================================================================================
# F       N = N + 1
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_begin_α:  mov              r11, 10
                        mov              r10, 2;                              jmp   n20_var_α
n19_statement_begin_β:  mov              r11, 10;                             jmp   n25_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              sub              rsp, 16
                        mov              r11, 11
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n21_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      sub              rsp, 16
                        mov              r11, 12
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_binop_α
n21_lit_integer_β:      mov              r11, 12
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n19_statement_begin_β
.Lx98_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:            sub              rsp, 16
                        mov              r11, 13
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx99_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx99_7
.Lx99_2:                mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx99_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx99_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx99_4
.Lx99_3:                movq             xmm0, rsi
.Lx99_4:                cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx99_7:                                                                      jmp   n23_assign_α
.Lx99_0:                mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx99_240
                        add              rsp, 16;                             jmp   n21_lit_integer_β
.Lx99_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              r11, 14
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              qword ptr [r9 + 24], rdx;            jmp   n24_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    mov              r11, 15
                        mov              r10, 2
                        add              rsp, 48;                             jmp   n25_statement_begin_α
#=======================================================================================================================
#         JUNK = 'xxyy'
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:  mov              r11, 16
                        mov              r10, 3;                              jmp   n26_lit_string_α
n25_statement_begin_β:  mov              r11, 16;                             jmp   n29_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_assign_α
.Lx105_0:               .quad            .Lx105_0_s
.Lx105_0_s:             .string          "xxyy"
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:           mov              r11, 18
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # JUNK
                        mov              qword ptr [r9 + 40], rdx;            jmp   n28_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_end_α:    mov              r11, 19
                        mov              r10, 3
                        add              rsp, 16;                             jmp   n29_statement_begin_α
#=======================================================================================================================
#         JUNK ? 'xx'
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_begin_α:  mov              r11, 20
                        mov              r10, 4;                              jmp   n30_var_α
n29_statement_begin_β:  mov              r11, 20;                             jmp   n35_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              sub              rsp, 16
                        mov              r11, 21
                        mov              rax, qword ptr [r9 + 32]             # JUNK
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n31_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n31_match_begin_α:      mov              r11, 22
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
.Lx113_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx113_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n32_match_lit_α
n31_match_begin_β:      mov              r11, 22
.Lx113_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx113_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx113_1
                                                                              jmp   .Lx113_0
.Lx113_1:
n31_match_begin_af:     mov              r11, 22
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
                        pop              rbp;                                 jmp   n34_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n32_match_lit_α:        mov              r11, 23
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n31_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 120;                            jne   n31_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 120;                            jne   n31_match_begin_β
                        add              r14d, 2;                             jmp   n33_match_end_α
n32_match_lit_β:        mov              r11, 23
                        sub              r14d, 2;                             jmp   n31_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n33_match_end_α:        mov              r11, 24
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
                        test             rax, rax;                            je    .Lx117_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n31_match_begin_af
.Lx117_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n34_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_end_α:    mov              r11, 25
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n35_statement_begin_α
#=======================================================================================================================
#         F = 'AB'                                 :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_begin_α:  mov              r11, 26
                        mov              r10, 5;                              jmp   n36_lit_string_α
n35_statement_begin_β:  mov              r11, 26;                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       sub              rsp, 16
                        mov              r11, 27
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_assign_α
.Lx122_0:               .quad            .Lx122_0_s
.Lx122_0_s:             .string          "AB"
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:           mov              r11, 28
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # F
                        mov              qword ptr [r9 + 8], rdx;             jmp   n38_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_end_α:    mov              r11, 29
                        mov              r10, 5
                        add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# MAIN    N = 0
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_begin_α:  mov              r11, 30
                        mov              r10, 6;                              jmp   n40_lit_integer_α
n39_statement_begin_β:  mov              r11, 30;                             jmp   n43_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_assign_α
.Lx128_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:           mov              r11, 32
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              qword ptr [r9 + 24], rdx;            jmp   n42_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:    mov              r11, 33
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n43_statement_begin_α
#=======================================================================================================================
#         'ABC' ? 'A' *F() 'C'                     :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:  mov              r11, 34
                        mov              r10, 7;                              jmp   n44_lit_string_α
n43_statement_begin_β:  mov              r11, 34;                             jmp   n55_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:       sub              rsp, 16
                        mov              r11, 35
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_match_begin_α
.Lx134_0:               .quad            .Lx134_0_s
.Lx134_0_s:             .string          "ABC"
#-----------------------------------------------------------------------------------------------------------------------
n45_match_begin_α:      mov              r11, 36
                        mov              rdi, qword ptr [rsp + 0]             # lit_string
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
.Lx136_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx136_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n46_match_lit_α
n45_match_begin_β:      mov              r11, 36
.Lx136_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx136_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx136_1
                                                                              jmp   .Lx136_0
.Lx136_1:
n45_match_begin_af:     mov              r11, 36
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
                        add              rsp, 16;                             jmp   n55_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n46_match_lit_α:        mov              r11, 37
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n45_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65;                             jne   n45_match_begin_β
                        add              r14d, 1;                             jmp   n47_match_defer_α
n46_match_lit_β:        mov              r11, 37
                        sub              r14d, 1;                             jmp   n45_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n47_match_defer_α:      sub              rsp, 16
                        mov              r11, 38
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S0]
                        cmp              rax, rdx;                            jne   .Lx139_30
                        mov              rax, qword ptr [rcx + 8]
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              jne   .Lx139_30
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lx139_30
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lx139_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lx139_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lx139_0
.Lx139_31:              mov              edx, -1;                             jmp   .Lx139_0
.Lx139_30:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        mov              esi, r14d
                        mov              rdx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_probe_run@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             rax, rax;                            jz    .Lx139_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx139_5]
                        push             rcx
                        lea              rcx, [rip + .Lx139_4]
                        push             rcx;                                 jmp   rax
.Lx139_4:                                                                     jmp   n48_match_lit_α
.Lx139_5:               add              rsp, 16;                             jmp   n46_match_lit_β
.Lx139_0:               mov              eax, edx
                        test             eax, eax;                            jns   .Lx139_240
                        add              rsp, 16;                             jmp   n46_match_lit_β
.Lx139_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx139_6]
                        push             rcx
                        push             rax;                                 jmp   n48_match_lit_α
.Lx139_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n46_match_lit_β
n47_match_defer_β:      mov              r11, 38
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx139_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx139_12
                                                                              jmp   rax
.Lx139_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n48_match_lit_α:        mov              r11, 39
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n47_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 67;                             jne   n47_match_defer_β
                        add              r14d, 1;                             jmp   n49_match_end_α
n48_match_lit_β:        mov              r11, 39
                        sub              r14d, 1;                             jmp   n47_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n49_match_end_α:        mov              r11, 40
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
                        test             rax, rax;                            je    .Lx143_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n45_match_begin_af
.Lx143_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n50_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_end_α:    mov              r11, 41
                        mov              r10, 7
                        add              rsp, 16;                             jmp   n51_statement_begin_α
#=======================================================================================================================
# YES     OUTPUT = 'match'                         :(NEXT)
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_begin_α:  mov              r11, 42
                        mov              r10, 8;                              jmp   n52_lit_string_α
n51_statement_begin_β:  mov              r11, 42;                             jmp   n59_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       sub              rsp, 16
                        mov              r11, 43
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_assign_α
.Lx148_0:               .quad            .Lx148_0_s
.Lx148_0_s:             .string          "match"
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:           mov              r11, 44
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n54_statement_end_α
.Lx149_0:               .quad            .Lx149_0_s
.Lx149_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_end_α:    mov              r11, 45
                        mov              r10, 8
                        add              rsp, 16;                             jmp   n59_statement_begin_α
#=======================================================================================================================
# NO      OUTPUT = 'fail'
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_begin_α:  mov              r11, 46
                        mov              r10, 9;                              jmp   n56_lit_string_α
n55_statement_begin_β:  mov              r11, 46;                             jmp   n59_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:       sub              rsp, 16
                        mov              r11, 47
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n57_assign_α
.Lx154_0:               .quad            .Lx154_0_s
.Lx154_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:           mov              r11, 48
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n58_statement_end_α
.Lx155_0:               .quad            .Lx155_0_s
.Lx155_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:    mov              r11, 49
                        mov              r10, 9
                        add              rsp, 16;                             jmp   n59_statement_begin_α
#=======================================================================================================================
# NEXT    OUTPUT = 'calls=' N
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_begin_α:  mov              r11, 50
                        mov              r10, 10;                             jmp   n60_lit_string_α
n59_statement_begin_β:  mov              r11, 50;                             jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       sub              rsp, 16
                        mov              r11, 51
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n61_var_α
.Lx160_0:               .quad            .Lx160_0_s
.Lx160_0_s:             .string          "calls="
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              sub              rsp, 16
                        mov              r11, 52
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n62_binop_α
n61_var_β:              mov              r11, 52
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n59_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n62_binop_α:            sub              rsp, 16
                        mov              r11, 53
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n63_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:           mov              r11, 54
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n64_statement_end_α
.Lx163_0:               .quad            .Lx163_0_s
.Lx163_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    mov              r11, 55
                        mov              r10, 10
                        add              rsp, 48;                             jmp   n65_statement_begin_α
#=======================================================================================================================
#         'AABZ' ? 'A' *F() 'Z'                    :S(Y2)F(N2)
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:  mov              r11, 56
                        mov              r10, 11;                             jmp   n66_lit_string_α
n65_statement_begin_β:  mov              r11, 56;                             jmp   n77_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       sub              rsp, 16
                        mov              r11, 57
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_match_begin_α
.Lx168_0:               .quad            .Lx168_0_s
.Lx168_0_s:             .string          "AABZ"
#-----------------------------------------------------------------------------------------------------------------------
n67_match_begin_α:      mov              r11, 58
                        mov              rdi, qword ptr [rsp + 0]             # lit_string
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
.Lx170_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx170_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n68_match_lit_α
n67_match_begin_β:      mov              r11, 58
.Lx170_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx170_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx170_1
                                                                              jmp   .Lx170_0
.Lx170_1:
n67_match_begin_af:     mov              r11, 58
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
                        add              rsp, 16;                             jmp   n77_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n68_match_lit_α:        mov              r11, 59
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n67_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65;                             jne   n67_match_begin_β
                        add              r14d, 1;                             jmp   n69_match_defer_α
n68_match_lit_β:        mov              r11, 59
                        sub              r14d, 1;                             jmp   n67_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n69_match_defer_α:      sub              rsp, 16
                        mov              r11, 60
                        lea              rcx, [rip + g_sno_defer_cells+16400]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S1]
                        cmp              rax, rdx;                            jne   .Lx173_30
                        mov              rax, qword ptr [rcx + 8]
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              jne   .Lx173_30
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lx173_30
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lx173_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lx173_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lx173_0
.Lx173_31:              mov              edx, -1;                             jmp   .Lx173_0
.Lx173_30:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        mov              esi, r14d
                        mov              rdx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_probe_run@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             rax, rax;                            jz    .Lx173_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx173_5]
                        push             rcx
                        lea              rcx, [rip + .Lx173_4]
                        push             rcx;                                 jmp   rax
.Lx173_4:                                                                     jmp   n70_match_lit_α
.Lx173_5:               add              rsp, 16;                             jmp   n68_match_lit_β
.Lx173_0:               mov              eax, edx
                        test             eax, eax;                            jns   .Lx173_240
                        add              rsp, 16;                             jmp   n68_match_lit_β
.Lx173_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx173_6]
                        push             rcx
                        push             rax;                                 jmp   n70_match_lit_α
.Lx173_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n68_match_lit_β
n69_match_defer_β:      mov              r11, 60
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx173_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx173_12
                                                                              jmp   rax
.Lx173_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n70_match_lit_α:        mov              r11, 61
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n69_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 90;                             jne   n69_match_defer_β
                        add              r14d, 1;                             jmp   n71_match_end_α
n70_match_lit_β:        mov              r11, 61
                        sub              r14d, 1;                             jmp   n69_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n71_match_end_α:        mov              r11, 62
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
                        test             rax, rax;                            je    .Lx177_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n67_match_begin_af
.Lx177_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n72_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_end_α:    mov              r11, 63
                        mov              r10, 11
                        add              rsp, 16;                             jmp   n73_statement_begin_α
#=======================================================================================================================
# Y2      OUTPUT = 'match2'                        :(DONE)
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_begin_α:  mov              r11, 64
                        mov              r10, 12;                             jmp   n74_lit_string_α
n73_statement_begin_β:  mov              r11, 64;                             jmp   n81_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       sub              rsp, 16
                        mov              r11, 65
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n75_assign_α
.Lx182_0:               .quad            .Lx182_0_s
.Lx182_0_s:             .string          "match2"
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:           mov              r11, 66
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n76_statement_end_α
.Lx183_0:               .quad            .Lx183_0_s
.Lx183_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_end_α:    mov              r11, 67
                        mov              r10, 12
                        add              rsp, 16;                             jmp   n81_statement_begin_α
#=======================================================================================================================
# N2      OUTPUT = 'fail2'
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_begin_α:  mov              r11, 68
                        mov              r10, 13;                             jmp   n78_lit_string_α
n77_statement_begin_β:  mov              r11, 68;                             jmp   n81_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       sub              rsp, 16
                        mov              r11, 69
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_assign_α
.Lx188_0:               .quad            .Lx188_0_s
.Lx188_0_s:             .string          "fail2"
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              r11, 70
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n80_statement_end_α
.Lx189_0:               .quad            .Lx189_0_s
.Lx189_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    mov              r11, 71
                        mov              r10, 13
                        add              rsp, 16;                             jmp   n81_statement_begin_α
#=======================================================================================================================
# DONE    OUTPUT = 'calls=' N
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:  mov              r11, 72
                        mov              r10, 14;                             jmp   n82_lit_string_α
n81_statement_begin_β:  mov              r11, 72;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       sub              rsp, 16
                        mov              r11, 73
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_var_α
.Lx194_0:               .quad            .Lx194_0_s
.Lx194_0_s:             .string          "calls="
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              sub              rsp, 16
                        mov              r11, 74
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n84_binop_α
n83_var_β:              mov              r11, 74
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n81_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n84_binop_α:            sub              rsp, 16
                        mov              r11, 75
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n85_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:           mov              r11, 76
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n86_statement_end_α
.Lx197_0:               .quad            .Lx197_0_s
.Lx197_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:    mov              r11, 77
                        mov              r10, 14
                        add              rsp, 48;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 78
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
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
.Lseala1:               .string          "F"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            F_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + F_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "EXPR$0"
                        .align           8
.Lstartup_pnames2:
                        .quad            0
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__EXPR$0
                        .quad            0
                        .quad            0
                        .quad            .Lstartup_pnames2
                        .long            0
                        .long            0
                        .long            64
                        .long            17
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "EXPR$1"
                        .align           8
.Lstartup_pnames3:
                        .quad            0
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__EXPR$1
                        .quad            0
                        .quad            0
                        .quad            .Lstartup_pnames3
                        .long            0
                        .long            0
                        .long            64
                        .long            17
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "*EXPR$0"
.S1:                    .string          "*EXPR$1"
                        .text
                        .section         .note.GNU-stack,"",@progbits
