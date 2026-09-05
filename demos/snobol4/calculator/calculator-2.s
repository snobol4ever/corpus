                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/calculator/calculator-2.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 40
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n0_match_assign_save_bx, @function
n0_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_assign_save_α: sub              rsp, 16
                        mov              r11, 1
                        mov              dword ptr [rsp + 0], r14d;           jmp   n1_match_any_α
n0_match_assign_save_β: mov              r11, 1
                        add              rsp, 16;                             jmp   PAT$0_ω
                        .size            n0_match_assign_save_bx, .-n0_match_assign_save_bx
                        .type            n1_match_any_bx, @function
n1_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_match_any_α:         mov              r11, 2
                        mov              eax, r14d
                        cmp              eax, r15d;                           jl    .Lmatch_any_α_6_239
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lmatch_any_α_6_239:    movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               jne   .Lmatch_any_α_6_240
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lmatch_any_α_6_240:    add              r14d, 1;                             jmp   n2_match_assign_cond_α
n1_match_any_β:         mov              r11, 2
                        sub              r14d, 1
                        add              rsp, 16;                             jmp   PAT$0_ω
                        .size            n1_match_any_bx, .-n1_match_any_bx
                        .type            n2_match_assign_cond_bx, @function
n2_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_match_assign_cond_α: mov              r11, 3
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   PAT$0_γ
n2_match_assign_cond_β: mov              r11, 3
                        sub              r12, 24;                             jmp   n1_match_any_β
                        .size            n2_match_assign_cond_bx, .-n2_match_assign_cond_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n2_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$0_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$1:
PAT$1_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 72
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n9_match_assign_save_bx, @function
n9_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_match_assign_save_α: sub              rsp, 16
                        mov              r11, 4
                        mov              dword ptr [rsp + 0], r14d;           jmp   n10_match_span_α
n9_match_assign_save_β: mov              r11, 4
                        add              rsp, 16;                             jmp   PAT$1_ω
                        .size            n9_match_assign_save_bx, .-n9_match_assign_save_bx
                        .type            n10_match_span_bx, @function
n10_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_match_span_α:       sub              rsp, 16
                        mov              r11, 5
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lmatch_span_α_15_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_15_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_15_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_15_0
.Lmatch_span_α_15_1:    cmp              ecx, r14d;                           jg    .Lmatch_span_α_15_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$1_ω
.Lmatch_span_α_15_240:  mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   n11_match_assign_cond_α
n10_match_span_β:       mov              r11, 5
                        mov              r14d, dword ptr [rbp + -60]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$1_ω
                        .size            n10_match_span_bx, .-n10_match_span_bx
                        .type            n11_match_assign_cond_bx, @function
n11_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_match_assign_cond_α:
                        mov              r11, 6
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   PAT$1_γ
n11_match_assign_cond_β:
                        mov              r11, 6
                        sub              r12, 24;                             jmp   n10_match_span_β
                        .size            n11_match_assign_cond_bx, .-n11_match_assign_cond_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   n11_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$1_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$2:
PAT$2_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 72
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n18_match_alternate_bx, @function
n18_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_match_alternate_α:  mov              r11, 7
                        mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_25_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n23_match_defer_α
.Lmatch_alternate_α_25_21:
                        lea              rax, [rip + .Lmatch_alternate_α_25_22]
                        mov              qword ptr [rbp + -56], rax;          jmp   n22_match_defer_α
.Lmatch_alternate_α_25_22:
                        lea              rax, [rip + .Lmatch_alternate_α_25_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n19_match_lit_α
.Lmatch_alternate_γ_18_s0:
                        mov              r11, 7
                        lea              rax, [rip + .Lmatch_alternate_α_25_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_18_as
.Lmatch_alternate_γ_18_s1:
                        mov              r11, 7
                        lea              rax, [rip + .Lmatch_alternate_α_25_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_18_as
.Lmatch_alternate_γ_18_s2:
                        mov              r11, 7
                        lea              rax, [rip + .Lmatch_alternate_α_25_42]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_18_as
.Lmatch_alternate_α_25_40:
                                                                              jmp   n23_match_defer_β
.Lmatch_alternate_α_25_41:
                                                                              jmp   n22_match_defer_β
.Lmatch_alternate_α_25_42:
                                                                              jmp   n21_match_lit_β
.Lmatch_alternate_γ_18_as:
                        mov              r11, 7;                              jmp   PAT$2_γ
n18_match_alternate_β:  mov              r11, 7
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
.Lmatch_alternate_γ_18_af:
                        mov              r11, 7
.Lmatch_alternate_ω_18_af:
                        mov              r11, 7
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lmatch_alternate_α_25_19:
                                                                              jmp   PAT$2_ω
                        .size            n18_match_alternate_bx, .-n18_match_alternate_bx
                        .type            n19_match_lit_bx, @function
n19_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_match_lit_α:        mov              r11, 8
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_18_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   .Lmatch_alternate_ω_18_af
                        add              r14d, 1;                             jmp   n20_match_defer_α
n19_match_lit_β:        mov              r11, 8
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_18_af
                        .size            n19_match_lit_bx, .-n19_match_lit_bx
                        .type            n20_match_defer_bx, @function
n20_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_match_defer_α:      mov              r11, 9
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_28_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_28_11
.Lmatch_defer_α_28_13:  mov              rax, qword ptr [r9 + 336]            # X
                        mov              rdx, qword ptr [r9 + 344]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_28_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_28_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 344];           jmp   .Lmatch_defer_α_28_10
.Lmatch_defer_α_28_9:   cmp              al, 88;                              jne   .Lmatch_defer_α_28_21
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_xpat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_28_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_28_10
.Lmatch_defer_α_28_21:  xor              eax, eax
.Lmatch_defer_α_28_10:  test             rax, rax;                            je    .Lmatch_defer_α_28_15
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rdx
.Lmatch_defer_α_28_15:
.Lmatch_defer_α_28_11:  test             rax, rax;                            jz    .Lmatch_defer_α_28_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_28_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_28_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_28_4:                                                         jmp   n21_match_lit_α
.Lmatch_defer_α_28_5:                                                         jmp   n19_match_lit_β
.Lmatch_defer_α_28_0:   push             r14
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
                        test             eax, eax;                            js    n19_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_28_6]
                        push             rcx
                        push             rax;                                 jmp   n21_match_lit_α
.Lmatch_defer_α_28_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n19_match_lit_β
n20_match_defer_β:      mov              r11, 9
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_28_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_28_12
                                                                              jmp   rax
.Lmatch_defer_β_28_12:                                                        jmp   qword ptr [rsp]
                        .size            n20_match_defer_bx, .-n20_match_defer_bx
                        .type            n21_match_lit_bx, @function
n21_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_match_lit_α:        mov              r11, 10
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n20_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n20_match_defer_β
                        add              r14d, 1;                             jmp   .Lmatch_alternate_γ_18_s2
n21_match_lit_β:        mov              r11, 10
                        sub              r14d, 1;                             jmp   n20_match_defer_β
                        .size            n21_match_lit_bx, .-n21_match_lit_bx
                        .type            n22_match_defer_bx, @function
n22_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_match_defer_α:      mov              r11, 11
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_31_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_31_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_31_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_31_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_31_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_31_18
.Lmatch_defer_α_31_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S2]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_31_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_31_16:
.Lmatch_defer_α_31_18:  test             rax, rax;                            jz    .Lmatch_defer_α_31_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_31_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_31_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_31_4:                                                         jmp   .Lmatch_alternate_γ_18_s1
.Lmatch_defer_α_31_5:                                                         jmp   .Lmatch_alternate_ω_18_af
.Lmatch_defer_α_31_0:   push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S2]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    .Lmatch_alternate_ω_18_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_31_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_18_s1
.Lmatch_defer_α_31_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_18_af
n22_match_defer_β:      mov              r11, 11
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_31_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_31_12
                                                                              jmp   rax
.Lmatch_defer_β_31_12:                                                        jmp   qword ptr [rsp]
                        .size            n22_match_defer_bx, .-n22_match_defer_bx
                        .type            n23_match_defer_bx, @function
n23_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_match_defer_α:      mov              r11, 12
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_32_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_32_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_32_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_32_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_32_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_32_18
.Lmatch_defer_α_32_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S3]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_32_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_32_16:
.Lmatch_defer_α_32_18:  test             rax, rax;                            jz    .Lmatch_defer_α_32_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_32_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_32_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_32_4:                                                         jmp   .Lmatch_alternate_γ_18_s0
.Lmatch_defer_α_32_5:                                                         jmp   .Lmatch_alternate_ω_18_af
.Lmatch_defer_α_32_0:   push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S3]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    .Lmatch_alternate_ω_18_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_32_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_18_s0
.Lmatch_defer_α_32_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_18_af
n23_match_defer_β:      mov              r11, 12
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_32_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_32_12
                                                                              jmp   rax
.Lmatch_defer_β_32_12:                                                        jmp   qword ptr [rsp]
                        .size            n23_match_defer_bx, .-n23_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_β:
                                                                              jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$2_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$3:
PAT$3_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 120
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n33_match_alternate_bx, @function
n33_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_match_alternate_α:  mov              r11, 13
                        mov              dword ptr [rbp + -120], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_42_21]
                        mov              qword ptr [rbp + -104], rax;         jmp   n40_match_defer_α
.Lmatch_alternate_α_42_21:
                        lea              rax, [rip + .Lmatch_alternate_α_42_19]
                        mov              qword ptr [rbp + -104], rax;         jmp   n34_match_assign_save_α
.Lmatch_alternate_γ_33_s0:
                        mov              r11, 13
                        lea              rax, [rip + .Lmatch_alternate_α_42_40]
                        mov              qword ptr [rbp + -112], rax;         jmp   .Lmatch_alternate_γ_33_as
.Lmatch_alternate_γ_33_s1:
                        mov              r11, 13
                        lea              rax, [rip + .Lmatch_alternate_α_42_41]
                        mov              qword ptr [rbp + -112], rax;         jmp   .Lmatch_alternate_γ_33_as
.Lmatch_alternate_α_42_40:
                                                                              jmp   n40_match_defer_β
.Lmatch_alternate_α_42_41:
                                                                              jmp   n39_match_assign_cond_β
.Lmatch_alternate_γ_33_as:
                        mov              r11, 13;                             jmp   PAT$3_γ
n33_match_alternate_β:  mov              r11, 13
                        mov              rax, qword ptr [rbp + -112];         jmp   rax
.Lmatch_alternate_γ_33_af:
                        mov              r11, 13
.Lmatch_alternate_ω_33_af:
                        mov              r11, 13
                        mov              r14d, dword ptr [rbp + -120]
                        mov              rax, qword ptr [rbp + -104];         jmp   rax
.Lmatch_alternate_α_42_19:
                                                                              jmp   PAT$3_ω
                        .size            n33_match_alternate_bx, .-n33_match_alternate_bx
                        .type            n34_match_assign_save_bx, @function
n34_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 14
                        mov              dword ptr [rbp + -48], r14d;         jmp   n35_match_any_α
n34_match_assign_save_β:
                        mov              r11, 14
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_33_af
                        .size            n34_match_assign_save_bx, .-n34_match_assign_save_bx
                        .type            n35_match_any_bx, @function
n35_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_match_any_α:        mov              r11, 15
                        mov              eax, r14d
                        cmp              eax, r15d;                           jl    .Lmatch_any_α_46_240
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_33_af
.Lmatch_any_α_46_240:   movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43;                             je    .Lmatch_any_α_46_0
                        cmp              esi, 45;                             je    .Lmatch_any_α_46_0
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_33_af
.Lmatch_any_α_46_0:     add              r14d, 1;                             jmp   n36_match_assign_cond_α
n35_match_any_β:        mov              r11, 15
                        sub              r14d, 1
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_33_af
                        .size            n35_match_any_bx, .-n35_match_any_bx
                        .type            n36_match_assign_cond_bx, @function
n36_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_match_assign_cond_α:
                        mov              r11, 16
                        mov              eax, dword ptr [rbp + -48]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n37_match_assign_save_α
n36_match_assign_cond_β:
                        mov              r11, 16
                        sub              r12, 24;                             jmp   n35_match_any_β
                        .size            n36_match_assign_cond_bx, .-n36_match_assign_cond_bx
                        .type            n37_match_assign_save_bx, @function
n37_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_match_assign_save_α:
                        mov              r11, 17
                        mov              dword ptr [rbp + -64], r14d;         jmp   n38_match_defer_α
n37_match_assign_save_β:
                        mov              r11, 17;                             jmp   n36_match_assign_cond_β
                        .size            n37_match_assign_save_bx, .-n37_match_assign_save_bx
                        .type            n38_match_defer_bx, @function
n38_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_match_defer_α:      mov              r11, 18
                        push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_51_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_51_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 312];           jmp   .Lmatch_defer_α_51_10
.Lmatch_defer_α_51_9:   cmp              al, 88;                              jne   .Lmatch_defer_α_51_21
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_xpat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_51_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_51_10
.Lmatch_defer_α_51_21:  xor              eax, eax
.Lmatch_defer_α_51_10:  test             rax, rax;                            jz    .Lmatch_defer_α_51_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_51_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_51_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_51_4:   mov              rsp, rbp
                        pop              rbp;                                 jmp   n39_match_assign_cond_α
.Lmatch_defer_α_51_5:   mov              rsp, rbp
                        pop              rbp;                                 jmp   n37_match_assign_save_β
.Lmatch_defer_α_51_0:   push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
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
                        test             eax, eax;                            js    n37_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_51_6]
                        push             rcx
                        push             rax;                                 jmp   n39_match_assign_cond_α
.Lmatch_defer_α_51_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n37_match_assign_save_β
n38_match_defer_β:      mov              r11, 18
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n37_match_assign_save_β
                        .size            n38_match_defer_bx, .-n38_match_defer_bx
                        .type            n39_match_assign_cond_bx, @function
n39_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_match_assign_cond_α:
                        mov              r11, 19
                        mov              eax, dword ptr [rbp + -64]
                        lea              rcx, [rip + .S5]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   .Lmatch_alternate_γ_33_s1
n39_match_assign_cond_β:
                        mov              r11, 19
                        sub              r12, 24;                             jmp   n38_match_defer_β
                        .size            n39_match_assign_cond_bx, .-n39_match_assign_cond_bx
                        .type            n40_match_defer_bx, @function
n40_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_match_defer_α:      mov              r11, 20
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_54_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_54_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_54_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_54_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_54_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_54_18
.Lmatch_defer_α_54_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S6]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_54_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_54_16:
.Lmatch_defer_α_54_18:  test             rax, rax;                            jz    .Lmatch_defer_α_54_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_54_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_54_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_54_4:                                                         jmp   .Lmatch_alternate_γ_33_s0
.Lmatch_defer_α_54_5:                                                         jmp   .Lmatch_alternate_ω_33_af
.Lmatch_defer_α_54_0:   push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S6]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    .Lmatch_alternate_ω_33_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_54_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_33_s0
.Lmatch_defer_α_54_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_33_af
n40_match_defer_β:      mov              r11, 20
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_54_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_54_12
                                                                              jmp   rax
.Lmatch_defer_β_54_12:                                                        jmp   qword ptr [rsp]
                        .size            n40_match_defer_bx, .-n40_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_β:
                                                                              jmp   PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$3_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$4:
PAT$4_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 152
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n55_match_defer_bx, @function
n55_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_match_defer_α:      sub              rsp, 16
                        mov              r11, 21
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_66_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_66_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_66_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_66_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_66_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_66_18
.Lmatch_defer_α_66_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S7]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_66_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_66_16:
.Lmatch_defer_α_66_18:  test             rax, rax;                            jz    .Lmatch_defer_α_66_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_66_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_66_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_66_4:                                                         jmp   n56_match_arbno_α
.Lmatch_defer_α_66_5:   add              rsp, 16;                             jmp   PAT$4_ω
.Lmatch_defer_α_66_0:   push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S7]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            jns   .Lmatch_defer_α_66_240
                        add              rsp, 16;                             jmp   PAT$4_ω
.Lmatch_defer_α_66_240: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_66_6]
                        push             rcx
                        push             rax;                                 jmp   n56_match_arbno_α
.Lmatch_defer_α_66_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$4_ω
n55_match_defer_β:      mov              r11, 21
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_66_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_66_12
                                                                              jmp   rax
.Lmatch_defer_β_66_12:                                                        jmp   qword ptr [rsp]
                        .size            n55_match_defer_bx, .-n55_match_defer_bx
                        .type            n56_match_arbno_bx, @function
n56_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_match_arbno_α:      mov              r11, 22
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   PAT$4_γ
n56_match_arbno_β:      mov              r11, 22
                        mov              r12, qword ptr [rbp + -40];          jmp   n57_match_alternate_α
.Lmatch_arbno_γ_56_as:  mov              r11, 22
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n57_match_alternate_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   PAT$4_γ
.Lmatch_arbno_γ_56_af:  mov              r11, 22
.Lmatch_arbno_ω_56_af:  mov              r11, 22
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n55_match_defer_β
                        .size            n56_match_arbno_bx, .-n56_match_arbno_bx
                        .type            n57_match_alternate_bx, @function
n57_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_match_alternate_α:  mov              r11, 23
                        mov              dword ptr [rbp + -152], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_70_21]
                        mov              qword ptr [rbp + -136], rax;         jmp   n62_match_lit_α
.Lmatch_alternate_α_70_21:
                        lea              rax, [rip + .Lmatch_alternate_α_70_19]
                        mov              qword ptr [rbp + -136], rax;         jmp   n58_match_lit_α
.Lmatch_alternate_γ_57_s0:
                        mov              r11, 23
                        lea              rax, [rip + .Lmatch_alternate_α_70_40]
                        mov              qword ptr [rbp + -144], rax;         jmp   .Lmatch_alternate_γ_57_as
.Lmatch_alternate_γ_57_s1:
                        mov              r11, 23
                        lea              rax, [rip + .Lmatch_alternate_α_70_41]
                        mov              qword ptr [rbp + -144], rax;         jmp   .Lmatch_alternate_γ_57_as
.Lmatch_alternate_α_70_40:
                                                                              jmp   n65_match_assign_cond_β
.Lmatch_alternate_α_70_41:
                                                                              jmp   n61_match_assign_cond_β
.Lmatch_alternate_γ_57_as:
                        mov              r11, 23;                             jmp   .Lmatch_arbno_γ_56_as
n57_match_alternate_β:  mov              r11, 23
                        mov              rax, qword ptr [rbp + -144];         jmp   rax
.Lmatch_alternate_γ_57_af:
                        mov              r11, 23
.Lmatch_alternate_ω_57_af:
                        mov              r11, 23
                        mov              r14d, dword ptr [rbp + -152]
                        mov              rax, qword ptr [rbp + -136];         jmp   rax
.Lmatch_alternate_α_70_19:
                                                                              jmp   .Lmatch_arbno_ω_56_af
                        .size            n57_match_alternate_bx, .-n57_match_alternate_bx
                        .type            n58_match_lit_bx, @function
n58_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_match_lit_α:        mov              r11, 24
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_57_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47;                             jne   .Lmatch_alternate_ω_57_af
                        add              r14d, 1;                             jmp   n59_match_assign_save_α
n58_match_lit_β:        mov              r11, 24
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_57_af
                        .size            n58_match_lit_bx, .-n58_match_lit_bx
                        .type            n59_match_assign_save_bx, @function
n59_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_match_assign_save_α:
                        mov              r11, 25
                        mov              dword ptr [rbp + -96], r14d;         jmp   n60_match_defer_α
n59_match_assign_save_β:
                        mov              r11, 25;                             jmp   n58_match_lit_β
                        .size            n59_match_assign_save_bx, .-n59_match_assign_save_bx
                        .type            n60_match_defer_bx, @function
n60_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_match_defer_α:      mov              r11, 26
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_75_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_75_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_75_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_75_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_75_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_75_18
.Lmatch_defer_α_75_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_75_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_75_16:
.Lmatch_defer_α_75_18:  test             rax, rax;                            jz    .Lmatch_defer_α_75_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_75_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_75_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_75_4:                                                         jmp   n61_match_assign_cond_α
.Lmatch_defer_α_75_5:                                                         jmp   n59_match_assign_save_β
.Lmatch_defer_α_75_0:   push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S8]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n59_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_75_6]
                        push             rcx
                        push             rax;                                 jmp   n61_match_assign_cond_α
.Lmatch_defer_α_75_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n59_match_assign_save_β
n60_match_defer_β:      mov              r11, 26
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_75_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_75_12
                                                                              jmp   rax
.Lmatch_defer_β_75_12:                                                        jmp   qword ptr [rsp]
                        .size            n60_match_defer_bx, .-n60_match_defer_bx
                        .type            n61_match_assign_cond_bx, @function
n61_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_match_assign_cond_α:
                        mov              r11, 27
                        mov              eax, dword ptr [rbp + -96]
                        lea              rcx, [rip + .S9]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   .Lmatch_alternate_γ_57_s1
n61_match_assign_cond_β:
                        mov              r11, 27
                        sub              r12, 24;                             jmp   n60_match_defer_β
                        .size            n61_match_assign_cond_bx, .-n61_match_assign_cond_bx
                        .type            n62_match_lit_bx, @function
n62_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_match_lit_α:        mov              r11, 28
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_57_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42;                             jne   .Lmatch_alternate_ω_57_af
                        add              r14d, 1;                             jmp   n63_match_assign_save_α
n62_match_lit_β:        mov              r11, 28
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_57_af
                        .size            n62_match_lit_bx, .-n62_match_lit_bx
                        .type            n63_match_assign_save_bx, @function
n63_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_match_assign_save_α:
                        mov              r11, 29
                        mov              dword ptr [rbp + -64], r14d;         jmp   n64_match_defer_α
n63_match_assign_save_β:
                        mov              r11, 29;                             jmp   n62_match_lit_β
                        .size            n63_match_assign_save_bx, .-n63_match_assign_save_bx
                        .type            n64_match_defer_bx, @function
n64_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_match_defer_α:      mov              r11, 30
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_82_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_82_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_82_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_82_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_82_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_82_18
.Lmatch_defer_α_82_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S10]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_82_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_82_16:
.Lmatch_defer_α_82_18:  test             rax, rax;                            jz    .Lmatch_defer_α_82_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_82_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_82_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_82_4:                                                         jmp   n65_match_assign_cond_α
.Lmatch_defer_α_82_5:                                                         jmp   n63_match_assign_save_β
.Lmatch_defer_α_82_0:   push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S10]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n63_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_82_6]
                        push             rcx
                        push             rax;                                 jmp   n65_match_assign_cond_α
.Lmatch_defer_α_82_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n63_match_assign_save_β
n64_match_defer_β:      mov              r11, 30
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_82_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_82_12
                                                                              jmp   rax
.Lmatch_defer_β_82_12:                                                        jmp   qword ptr [rsp]
                        .size            n64_match_defer_bx, .-n64_match_defer_bx
                        .type            n65_match_assign_cond_bx, @function
n65_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_match_assign_cond_α:
                        mov              r11, 31
                        mov              eax, dword ptr [rbp + -64]
                        lea              rcx, [rip + .S11]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   .Lmatch_alternate_γ_57_s0
n65_match_assign_cond_β:
                        mov              r11, 31
                        sub              r12, 24;                             jmp   n64_match_defer_β
                        .size            n65_match_assign_cond_bx, .-n65_match_assign_cond_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_β:
                                                                              jmp   n56_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$4_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$5:
PAT$5_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 152
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n85_match_defer_bx, @function
n85_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_match_defer_α:      sub              rsp, 16
                        mov              r11, 32
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_96_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_96_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_96_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_96_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_96_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_96_18
.Lmatch_defer_α_96_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S12]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_96_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_96_16:
.Lmatch_defer_α_96_18:  test             rax, rax;                            jz    .Lmatch_defer_α_96_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_96_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_96_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_96_4:                                                         jmp   n86_match_arbno_α
.Lmatch_defer_α_96_5:   add              rsp, 16;                             jmp   PAT$5_ω
.Lmatch_defer_α_96_0:   push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S12]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            jns   .Lmatch_defer_α_96_240
                        add              rsp, 16;                             jmp   PAT$5_ω
.Lmatch_defer_α_96_240: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_96_6]
                        push             rcx
                        push             rax;                                 jmp   n86_match_arbno_α
.Lmatch_defer_α_96_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$5_ω
n85_match_defer_β:      mov              r11, 32
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_96_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_96_12
                                                                              jmp   rax
.Lmatch_defer_β_96_12:                                                        jmp   qword ptr [rsp]
                        .size            n85_match_defer_bx, .-n85_match_defer_bx
                        .type            n86_match_arbno_bx, @function
n86_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_match_arbno_α:      mov              r11, 33
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   PAT$5_γ
n86_match_arbno_β:      mov              r11, 33
                        mov              r12, qword ptr [rbp + -40];          jmp   n87_match_alternate_α
.Lmatch_arbno_γ_86_as:  mov              r11, 33
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n87_match_alternate_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   PAT$5_γ
.Lmatch_arbno_γ_86_af:  mov              r11, 33
.Lmatch_arbno_ω_86_af:  mov              r11, 33
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n85_match_defer_β
                        .size            n86_match_arbno_bx, .-n86_match_arbno_bx
                        .type            n87_match_alternate_bx, @function
n87_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_match_alternate_α:  mov              r11, 34
                        mov              dword ptr [rbp + -152], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_100_21]
                        mov              qword ptr [rbp + -136], rax;         jmp   n92_match_lit_α
.Lmatch_alternate_α_100_21:
                        lea              rax, [rip + .Lmatch_alternate_α_100_19]
                        mov              qword ptr [rbp + -136], rax;         jmp   n88_match_lit_α
.Lmatch_alternate_γ_87_s0:
                        mov              r11, 34
                        lea              rax, [rip + .Lmatch_alternate_α_100_40]
                        mov              qword ptr [rbp + -144], rax;         jmp   .Lmatch_alternate_γ_87_as
.Lmatch_alternate_γ_87_s1:
                        mov              r11, 34
                        lea              rax, [rip + .Lmatch_alternate_α_100_41]
                        mov              qword ptr [rbp + -144], rax;         jmp   .Lmatch_alternate_γ_87_as
.Lmatch_alternate_α_100_40:
                                                                              jmp   n95_match_assign_cond_β
.Lmatch_alternate_α_100_41:
                                                                              jmp   n91_match_assign_cond_β
.Lmatch_alternate_γ_87_as:
                        mov              r11, 34;                             jmp   .Lmatch_arbno_γ_86_as
n87_match_alternate_β:  mov              r11, 34
                        mov              rax, qword ptr [rbp + -144];         jmp   rax
.Lmatch_alternate_γ_87_af:
                        mov              r11, 34
.Lmatch_alternate_ω_87_af:
                        mov              r11, 34
                        mov              r14d, dword ptr [rbp + -152]
                        mov              rax, qword ptr [rbp + -136];         jmp   rax
.Lmatch_alternate_α_100_19:
                                                                              jmp   .Lmatch_arbno_ω_86_af
                        .size            n87_match_alternate_bx, .-n87_match_alternate_bx
                        .type            n88_match_lit_bx, @function
n88_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_match_lit_α:        mov              r11, 35
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_87_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   .Lmatch_alternate_ω_87_af
                        add              r14d, 1;                             jmp   n89_match_assign_save_α
n88_match_lit_β:        mov              r11, 35
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_87_af
                        .size            n88_match_lit_bx, .-n88_match_lit_bx
                        .type            n89_match_assign_save_bx, @function
n89_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_match_assign_save_α:
                        mov              r11, 36
                        mov              dword ptr [rbp + -96], r14d;         jmp   n90_match_defer_α
n89_match_assign_save_β:
                        mov              r11, 36;                             jmp   n88_match_lit_β
                        .size            n89_match_assign_save_bx, .-n89_match_assign_save_bx
                        .type            n90_match_defer_bx, @function
n90_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_match_defer_α:      mov              r11, 37
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_105_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_105_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_105_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_105_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_105_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_105_18
.Lmatch_defer_α_105_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S13]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_105_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_105_16:
.Lmatch_defer_α_105_18: test             rax, rax;                            jz    .Lmatch_defer_α_105_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_105_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_105_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_105_4:                                                        jmp   n91_match_assign_cond_α
.Lmatch_defer_α_105_5:                                                        jmp   n89_match_assign_save_β
.Lmatch_defer_α_105_0:  push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S13]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n89_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_105_6]
                        push             rcx
                        push             rax;                                 jmp   n91_match_assign_cond_α
.Lmatch_defer_α_105_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n89_match_assign_save_β
n90_match_defer_β:      mov              r11, 37
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_105_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_105_12
                                                                              jmp   rax
.Lmatch_defer_β_105_12:                                                       jmp   qword ptr [rsp]
                        .size            n90_match_defer_bx, .-n90_match_defer_bx
                        .type            n91_match_assign_cond_bx, @function
n91_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_match_assign_cond_α:
                        mov              r11, 38
                        mov              eax, dword ptr [rbp + -96]
                        lea              rcx, [rip + .S14]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   .Lmatch_alternate_γ_87_s1
n91_match_assign_cond_β:
                        mov              r11, 38
                        sub              r12, 24;                             jmp   n90_match_defer_β
                        .size            n91_match_assign_cond_bx, .-n91_match_assign_cond_bx
                        .type            n92_match_lit_bx, @function
n92_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_match_lit_α:        mov              r11, 39
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_87_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   .Lmatch_alternate_ω_87_af
                        add              r14d, 1;                             jmp   n93_match_assign_save_α
n92_match_lit_β:        mov              r11, 39
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_87_af
                        .size            n92_match_lit_bx, .-n92_match_lit_bx
                        .type            n93_match_assign_save_bx, @function
n93_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_match_assign_save_α:
                        mov              r11, 40
                        mov              dword ptr [rbp + -64], r14d;         jmp   n94_match_defer_α
n93_match_assign_save_β:
                        mov              r11, 40;                             jmp   n92_match_lit_β
                        .size            n93_match_assign_save_bx, .-n93_match_assign_save_bx
                        .type            n94_match_defer_bx, @function
n94_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_match_defer_α:      mov              r11, 41
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_112_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_112_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_112_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_112_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_112_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_112_18
.Lmatch_defer_α_112_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S15]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_112_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_112_16:
.Lmatch_defer_α_112_18: test             rax, rax;                            jz    .Lmatch_defer_α_112_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_112_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_112_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_112_4:                                                        jmp   n95_match_assign_cond_α
.Lmatch_defer_α_112_5:                                                        jmp   n93_match_assign_save_β
.Lmatch_defer_α_112_0:  push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S15]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n93_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_112_6]
                        push             rcx
                        push             rax;                                 jmp   n95_match_assign_cond_α
.Lmatch_defer_α_112_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n93_match_assign_save_β
n94_match_defer_β:      mov              r11, 41
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_112_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_112_12
                                                                              jmp   rax
.Lmatch_defer_β_112_12:                                                       jmp   qword ptr [rsp]
                        .size            n94_match_defer_bx, .-n94_match_defer_bx
                        .type            n95_match_assign_cond_bx, @function
n95_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_match_assign_cond_α:
                        mov              r11, 42
                        mov              eax, dword ptr [rbp + -64]
                        lea              rcx, [rip + .S16]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   .Lmatch_alternate_γ_87_s0
n95_match_assign_cond_β:
                        mov              r11, 42
                        sub              r12, 24;                             jmp   n94_match_defer_β
                        .size            n95_match_assign_cond_bx, .-n95_match_assign_cond_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_β:
                                                                              jmp   n86_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$5_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$6:
PAT$6_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 40
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n115_match_defer_bx, @function
n115_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_match_defer_α:     sub              rsp, 16
                        mov              r11, 43
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_117_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_117_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_117_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_117_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_117_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_117_18
.Lmatch_defer_α_117_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S17]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_117_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_117_16:
.Lmatch_defer_α_117_18: test             rax, rax;                            jz    .Lmatch_defer_α_117_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_117_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_117_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_117_4:                                                        jmp   n116_match_fence0_α
.Lmatch_defer_α_117_5:  add              rsp, 16;                             jmp   PAT$6_ω
.Lmatch_defer_α_117_0:  push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S17]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            jns   .Lmatch_defer_α_117_240
                        add              rsp, 16;                             jmp   PAT$6_ω
.Lmatch_defer_α_117_240:
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_117_6]
                        push             rcx
                        push             rax;                                 jmp   n116_match_fence0_α
.Lmatch_defer_α_117_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$6_ω
n115_match_defer_β:     mov              r11, 43
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_117_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_117_12
                                                                              jmp   rax
.Lmatch_defer_β_117_12:                                                       jmp   qword ptr [rsp]
                        .size            n115_match_defer_bx, .-n115_match_defer_bx
                        .type            n116_match_fence0_bx, @function
n116_match_fence0_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_match_fence0_α:    mov              r11, 44
                        mov              rsp, rbp
                        sub              rsp, 40;                             jmp   PAT$6_γ
n116_match_fence0_β:    mov              r11, 44;                             jmp   PAT$6_ω
                        .size            n116_match_fence0_bx, .-n116_match_fence0_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_β:
                                                                              jmp   PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$6_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$7:
PAT$7_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 88
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n120_match_pos_bx, @function
n120_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_match_pos_α:       mov              r11, 45
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$7_ω
                                                                              jmp   n121_match_arbno_α
n120_match_pos_β:       mov              r11, 45;                             jmp   PAT$7_ω
                        .size            n120_match_pos_bx, .-n120_match_pos_bx
                        .type            n121_match_arbno_bx, @function
n121_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_match_arbno_α:     mov              r11, 46
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n122_match_rpos_α
n121_match_arbno_β:     mov              r11, 46
                        mov              r12, qword ptr [rbp + -40];          jmp   n123_match_defer_α
.Lmatch_arbno_γ_121_as: mov              r11, 46
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n123_match_defer_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n122_match_rpos_α
.Lmatch_arbno_γ_121_af: mov              r11, 46
.Lmatch_arbno_ω_121_af: mov              r11, 46
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n120_match_pos_β
                        .size            n121_match_arbno_bx, .-n121_match_arbno_bx
                        .type            n122_match_rpos_bx, @function
n122_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_match_rpos_α:      mov              r11, 47
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n121_match_arbno_β
                                                                              jmp   PAT$7_γ
n122_match_rpos_β:      mov              r11, 47;                             jmp   n121_match_arbno_β
                        .size            n122_match_rpos_bx, .-n122_match_rpos_bx
                        .type            n123_match_defer_bx, @function
n123_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_match_defer_α:     mov              r11, 48
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_132_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_132_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_132_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_132_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_132_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_132_18
.Lmatch_defer_α_132_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S18]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_132_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_132_16:
.Lmatch_defer_α_132_18: test             rax, rax;                            jz    .Lmatch_defer_α_132_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_132_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_132_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_132_4:                                                        jmp   n124_match_defer_α
.Lmatch_defer_α_132_5:                                                        jmp   .Lmatch_arbno_ω_121_af
.Lmatch_defer_α_132_0:  push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S18]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    .Lmatch_arbno_ω_121_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_132_6]
                        push             rcx
                        push             rax;                                 jmp   n124_match_defer_α
.Lmatch_defer_α_132_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_arbno_ω_121_af
n123_match_defer_β:     mov              r11, 48
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_132_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_132_12
                                                                              jmp   rax
.Lmatch_defer_β_132_12:                                                       jmp   qword ptr [rsp]
                        .size            n123_match_defer_bx, .-n123_match_defer_bx
                        .type            n124_match_defer_bx, @function
n124_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_match_defer_α:     mov              r11, 49
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_133_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_133_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_133_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_133_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_133_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_133_18
.Lmatch_defer_α_133_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S19]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_133_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_133_16:
.Lmatch_defer_α_133_18: test             rax, rax;                            jz    .Lmatch_defer_α_133_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_133_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_133_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_133_4:                                                        jmp   n125_match_assign_save_α
.Lmatch_defer_α_133_5:                                                        jmp   n123_match_defer_β
.Lmatch_defer_α_133_0:  push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S19]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n123_match_defer_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_133_6]
                        push             rcx
                        push             rax;                                 jmp   n125_match_assign_save_α
.Lmatch_defer_α_133_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n123_match_defer_β
n124_match_defer_β:     mov              r11, 49
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_133_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_133_12
                                                                              jmp   rax
.Lmatch_defer_β_133_12:                                                       jmp   qword ptr [rsp]
                        .size            n124_match_defer_bx, .-n124_match_defer_bx
                        .type            n125_match_assign_save_bx, @function
n125_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_match_assign_save_α:
                        mov              r11, 50
                        mov              dword ptr [rbp + -80], r14d;         jmp   n126_match_defer_α
n125_match_assign_save_β:
                        mov              r11, 50;                             jmp   n124_match_defer_β
                        .size            n125_match_assign_save_bx, .-n125_match_assign_save_bx
                        .type            n126_match_defer_bx, @function
n126_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_match_defer_α:     mov              r11, 51
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_136_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_136_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_136_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_136_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_136_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_136_18
.Lmatch_defer_α_136_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S20]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_136_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_136_16:
.Lmatch_defer_α_136_18: test             rax, rax;                            jz    .Lmatch_defer_α_136_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_136_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_136_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_136_4:                                                        jmp   n127_match_assign_cond_α
.Lmatch_defer_α_136_5:                                                        jmp   n125_match_assign_save_β
.Lmatch_defer_α_136_0:  push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S20]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n125_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_136_6]
                        push             rcx
                        push             rax;                                 jmp   n127_match_assign_cond_α
.Lmatch_defer_α_136_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n125_match_assign_save_β
n126_match_defer_β:     mov              r11, 51
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_136_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_136_12
                                                                              jmp   rax
.Lmatch_defer_β_136_12:                                                       jmp   qword ptr [rsp]
                        .size            n126_match_defer_bx, .-n126_match_defer_bx
                        .type            n127_match_assign_cond_bx, @function
n127_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_match_assign_cond_α:
                        mov              r11, 52
                        mov              eax, dword ptr [rbp + -80]
                        lea              rcx, [rip + .S21]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   .Lmatch_arbno_γ_121_as
n127_match_assign_cond_β:
                        mov              r11, 52
                        sub              r12, 24;                             jmp   n126_match_defer_β
                        .size            n127_match_assign_cond_bx, .-n127_match_assign_cond_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_β:
                                                                              jmp   n122_match_rpos_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$7_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 41
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 41
                        call             gva_register@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "EMIT"
.Lgvan1:                .string          "PSH"
.Lgvan2:                .string          "DRF"
.Lgvan3:                .string          "nm"
.Lgvan4:                .string          "ADD"
.Lgvan5:                .string          "SUB"
.Lgvan6:                .string          "MUL"
.Lgvan7:                .string          "DIV"
.Lgvan8:                .string          "SGN"
.Lgvan9:                .string          "p1"
.Lgvan10:               .string          "S"
.Lgvan11:               .string          "sp"
.Lgvan12:               .string          "dm"
.Lgvan13:               .string          "vars"
.Lgvan14:               .string          "LCASE"
.Lgvan15:               .string          "DIGITS"
.Lgvan16:               .string          "V"
.Lgvan17:               .string          "I"
.Lgvan18:               .string          "A"
.Lgvan19:               .string          "F"
.Lgvan20:               .string          "T"
.Lgvan21:               .string          "X"
.Lgvan22:               .string          "eol"
.Lgvan23:               .string          "C"
.Lgvan24:               .string          "epsilon"
.Lgvan25:               .string          "src"
.Lgvan26:               .string          "t0"
.Lgvan27:               .string          "t1"
.Lgvan28:               .string          "PAT$2$V0"
.Lgvan29:               .string          "PAT$2$V1"
.Lgvan30:               .string          "PAT$3$V0"
.Lgvan31:               .string          "PAT$4$V0"
.Lgvan32:               .string          "PAT$4$V1"
.Lgvan33:               .string          "PAT$4$V2"
.Lgvan34:               .string          "PAT$5$V0"
.Lgvan35:               .string          "PAT$5$V1"
.Lgvan36:               .string          "PAT$5$V2"
.Lgvan37:               .string          "PAT$6$V0"
.Lgvan38:               .string          "PAT$7$V0"
.Lgvan39:               .string          "PAT$7$V1"
.Lgvan40:               .string          "PAT$7$V2"
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
                        .quad            .Lgvan16
                        .quad            .Lgvan17
                        .quad            .Lgvan18
                        .quad            .Lgvan19
                        .quad            .Lgvan20
                        .quad            .Lgvan21
                        .quad            .Lgvan22
                        .quad            .Lgvan23
                        .quad            .Lgvan24
                        .quad            .Lgvan25
                        .quad            .Lgvan26
                        .quad            .Lgvan27
                        .quad            .Lgvan28
                        .quad            .Lgvan29
                        .quad            .Lgvan30
                        .quad            .Lgvan31
                        .quad            .Lgvan32
                        .quad            .Lgvan33
                        .quad            .Lgvan34
                        .quad            .Lgvan35
                        .quad            .Lgvan36
                        .quad            .Lgvan37
                        .quad            .Lgvan38
                        .quad            .Lgvan39
                        .quad            .Lgvan40
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
                        .type            n139_statement_begin_bx, @function
n139_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('EMIT()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n139_statement_begin_α: mov              r11, 53
                        mov              r10, 1;                              jmp   n140_define_α
n139_statement_begin_β: mov              r11, 53;                             jmp   n142_statement_begin_α
                        .size            n139_statement_begin_bx, .-n139_statement_begin_bx
                        .type            n140_define_bx, @function
n140_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_define_α:          mov              r11, 54
                        mov              rdi, qword ptr [rip + .Ldefine_α_523_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_523_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + EMIT_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_523_0]
                        lea              rsi, [rip + EMIT_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n141_statement_end_α
n140_define_β:          mov              r11, 54;                             jmp   n139_statement_begin_β
.Ldefine_α_523_0:       .quad            .Ldefine_α_523_0_s
.Ldefine_α_523_0_s:     .string          "EMIT"
.Ldefine_α_523_1:       .quad            .Ldefine_α_523_1_s
.Ldefine_α_523_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_524_245
#-----------------------------------------------------------------------------------------------------------------------
EMIT_α:                 sub              rsp, 48
                        mov              rax, qword ptr [r9 + 0]              # EMIT
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              rcx, [rip + EMIT_γ]
                        lea              rax, [rip + EMIT_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n163_statement_begin_α]; jmp   rax
EMIT_γ:                 mov              rdi, qword ptr [r9 + 0]
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
EMIT_ω:                 mov              rcx, qword ptr [rsp + 32]
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
.Ldefine_α_524_245:
                        .size            n140_define_bx, .-n140_define_bx
                        .type            n141_statement_end_bx, @function
n141_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_end_α:   mov              r11, 55
                        mov              r10, 1;                              jmp   n142_statement_begin_α
                        .size            n141_statement_end_bx, .-n141_statement_end_bx
                        .type            n142_statement_begin_bx, @function
n142_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('PSH()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 29 0
n142_statement_begin_α: mov              r11, 56
                        mov              r10, 2;                              jmp   n143_define_α
n142_statement_begin_β: mov              r11, 56;                             jmp   n145_statement_begin_α
                        .size            n142_statement_begin_bx, .-n142_statement_begin_bx
                        .type            n143_define_bx, @function
n143_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_define_α:          mov              r11, 57
                        mov              rdi, qword ptr [rip + .Ldefine_α_530_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_530_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + PSH_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_530_0]
                        lea              rsi, [rip + PSH_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n144_statement_end_α
n143_define_β:          mov              r11, 57;                             jmp   n142_statement_begin_β
.Ldefine_α_530_0:       .quad            .Ldefine_α_530_0_s
.Ldefine_α_530_0_s:     .string          "PSH"
.Ldefine_α_530_1:       .quad            .Ldefine_α_530_1_s
.Ldefine_α_530_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_531_245
#-----------------------------------------------------------------------------------------------------------------------
PSH_α:                  sub              rsp, 48
                        mov              rax, qword ptr [r9 + 16]             # PSH
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              rcx, [rip + PSH_γ]
                        lea              rax, [rip + PSH_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n179_statement_begin_α]; jmp   rax
PSH_γ:                  mov              rdi, qword ptr [r9 + 16]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 24], rax
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
PSH_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 24], rax
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_531_245:
                        .size            n143_define_bx, .-n143_define_bx
                        .type            n144_statement_end_bx, @function
n144_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_end_α:   mov              r11, 58
                        mov              r10, 2;                              jmp   n145_statement_begin_α
                        .size            n144_statement_end_bx, .-n144_statement_end_bx
                        .type            n145_statement_begin_bx, @function
n145_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('DRF(nm)')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n145_statement_begin_α: mov              r11, 59
                        mov              r10, 3;                              jmp   n146_define_α
n145_statement_begin_β: mov              r11, 59;                             jmp   n148_statement_begin_α
                        .size            n145_statement_begin_bx, .-n145_statement_begin_bx
                        .type            n146_define_bx, @function
n146_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_define_α:          mov              r11, 60
                        mov              rdi, qword ptr [rip + .Ldefine_α_537_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_537_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + DRF_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_537_0]
                        lea              rsi, [rip + DRF_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n147_statement_end_α
n146_define_β:          mov              r11, 60;                             jmp   n145_statement_begin_β
.Ldefine_α_537_0:       .quad            .Ldefine_α_537_0_s
.Ldefine_α_537_0_s:     .string          "DRF"
.Ldefine_α_537_1:       .quad            .Ldefine_α_537_1_s
.Ldefine_α_537_1_s:     .string          "nm"
                                                                              jmp   .Ldefine_α_538_245
#-----------------------------------------------------------------------------------------------------------------------
DRF_α:                  sub              rsp, 64
                        mov              rax, qword ptr [r9 + 32]             # DRF
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_538_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # nm
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_538_41
.Ldefine_α_538_10:      mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Ldefine_α_538_41:      lea              rcx, [rip + DRF_γ]
                        lea              rax, [rip + DRF_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n188_statement_begin_α]; jmp   rax
DRF_γ:                  mov              rdi, qword ptr [r9 + 32]             # DRF
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_538_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Ldefine_α_538_110
.Ldefine_α_538_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Ldefine_α_538_110:     mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
DRF_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_538_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Ldefine_α_538_180
.Ldefine_α_538_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Ldefine_α_538_180:     mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_538_245:
                        .size            n146_define_bx, .-n146_define_bx
                        .type            n147_statement_end_bx, @function
n147_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_end_α:   mov              r11, 61
                        mov              r10, 3;                              jmp   n148_statement_begin_α
                        .size            n147_statement_end_bx, .-n147_statement_end_bx
                        .type            n148_statement_begin_bx, @function
n148_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('ADD()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n148_statement_begin_α: mov              r11, 62
                        mov              r10, 4;                              jmp   n149_define_α
n148_statement_begin_β: mov              r11, 62;                             jmp   n151_statement_begin_α
                        .size            n148_statement_begin_bx, .-n148_statement_begin_bx
                        .type            n149_define_bx, @function
n149_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_define_α:          mov              r11, 63
                        mov              rdi, qword ptr [rip + .Ldefine_α_544_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_544_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + ADD_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_544_0]
                        lea              rsi, [rip + ADD_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n150_statement_end_α
n149_define_β:          mov              r11, 63;                             jmp   n148_statement_begin_β
.Ldefine_α_544_0:       .quad            .Ldefine_α_544_0_s
.Ldefine_α_544_0_s:     .string          "ADD"
.Ldefine_α_544_1:       .quad            .Ldefine_α_544_1_s
.Ldefine_α_544_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_545_245
#-----------------------------------------------------------------------------------------------------------------------
ADD_α:                  sub              rsp, 48
                        mov              rax, qword ptr [r9 + 64]             # ADD
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 64], 0
                        mov              qword ptr [r9 + 72], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              rcx, [rip + ADD_γ]
                        lea              rax, [rip + ADD_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n207_statement_begin_α]; jmp   rax
ADD_γ:                  mov              rdi, qword ptr [r9 + 64]
                        mov              rsi, qword ptr [r9 + 72]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ADD_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_545_245:
                        .size            n149_define_bx, .-n149_define_bx
                        .type            n150_statement_end_bx, @function
n150_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_end_α:   mov              r11, 64
                        mov              r10, 4;                              jmp   n151_statement_begin_α
                        .size            n150_statement_end_bx, .-n150_statement_end_bx
                        .type            n151_statement_begin_bx, @function
n151_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('SUB()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 32 0
n151_statement_begin_α: mov              r11, 65
                        mov              r10, 5;                              jmp   n152_define_α
n151_statement_begin_β: mov              r11, 65;                             jmp   n154_statement_begin_α
                        .size            n151_statement_begin_bx, .-n151_statement_begin_bx
                        .type            n152_define_bx, @function
n152_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_define_α:          mov              r11, 66
                        mov              rdi, qword ptr [rip + .Ldefine_α_551_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_551_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + SUB_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_551_0]
                        lea              rsi, [rip + SUB_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n153_statement_end_α
n152_define_β:          mov              r11, 66;                             jmp   n151_statement_begin_β
.Ldefine_α_551_0:       .quad            .Ldefine_α_551_0_s
.Ldefine_α_551_0_s:     .string          "SUB"
.Ldefine_α_551_1:       .quad            .Ldefine_α_551_1_s
.Ldefine_α_551_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_552_245
#-----------------------------------------------------------------------------------------------------------------------
SUB_α:                  sub              rsp, 48
                        mov              rax, qword ptr [r9 + 80]             # SUB
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              rcx, [rip + SUB_γ]
                        lea              rax, [rip + SUB_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n232_statement_begin_α]; jmp   rax
SUB_γ:                  mov              rdi, qword ptr [r9 + 80]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 88], rax
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
SUB_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 88], rax
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_552_245:
                        .size            n152_define_bx, .-n152_define_bx
                        .type            n153_statement_end_bx, @function
n153_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_end_α:   mov              r11, 67
                        mov              r10, 5;                              jmp   n154_statement_begin_α
                        .size            n153_statement_end_bx, .-n153_statement_end_bx
                        .type            n154_statement_begin_bx, @function
n154_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('MUL()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n154_statement_begin_α: mov              r11, 68
                        mov              r10, 6;                              jmp   n155_define_α
n154_statement_begin_β: mov              r11, 68;                             jmp   n157_statement_begin_α
                        .size            n154_statement_begin_bx, .-n154_statement_begin_bx
                        .type            n155_define_bx, @function
n155_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_define_α:          mov              r11, 69
                        mov              rdi, qword ptr [rip + .Ldefine_α_558_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_558_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + MUL_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_558_0]
                        lea              rsi, [rip + MUL_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n156_statement_end_α
n155_define_β:          mov              r11, 69;                             jmp   n154_statement_begin_β
.Ldefine_α_558_0:       .quad            .Ldefine_α_558_0_s
.Ldefine_α_558_0_s:     .string          "MUL"
.Ldefine_α_558_1:       .quad            .Ldefine_α_558_1_s
.Ldefine_α_558_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_559_245
#-----------------------------------------------------------------------------------------------------------------------
MUL_α:                  sub              rsp, 48
                        mov              rax, qword ptr [r9 + 96]             # MUL
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 96], 0
                        mov              qword ptr [r9 + 104], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              rcx, [rip + MUL_γ]
                        lea              rax, [rip + MUL_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n257_statement_begin_α]; jmp   rax
MUL_γ:                  mov              rdi, qword ptr [r9 + 96]
                        mov              rsi, qword ptr [r9 + 104]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
MUL_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_559_245:
                        .size            n155_define_bx, .-n155_define_bx
                        .type            n156_statement_end_bx, @function
n156_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_end_α:   mov              r11, 70
                        mov              r10, 6;                              jmp   n157_statement_begin_α
                        .size            n156_statement_end_bx, .-n156_statement_end_bx
                        .type            n157_statement_begin_bx, @function
n157_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('DIV()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n157_statement_begin_α: mov              r11, 71
                        mov              r10, 7;                              jmp   n158_define_α
n157_statement_begin_β: mov              r11, 71;                             jmp   n160_statement_begin_α
                        .size            n157_statement_begin_bx, .-n157_statement_begin_bx
                        .type            n158_define_bx, @function
n158_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_define_α:          mov              r11, 72
                        mov              rdi, qword ptr [rip + .Ldefine_α_565_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_565_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + DIV_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_565_0]
                        lea              rsi, [rip + DIV_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n159_statement_end_α
n158_define_β:          mov              r11, 72;                             jmp   n157_statement_begin_β
.Ldefine_α_565_0:       .quad            .Ldefine_α_565_0_s
.Ldefine_α_565_0_s:     .string          "DIV"
.Ldefine_α_565_1:       .quad            .Ldefine_α_565_1_s
.Ldefine_α_565_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_566_245
#-----------------------------------------------------------------------------------------------------------------------
DIV_α:                  sub              rsp, 48
                        mov              rax, qword ptr [r9 + 112]            # DIV
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 112], 0
                        mov              qword ptr [r9 + 120], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              rcx, [rip + DIV_γ]
                        lea              rax, [rip + DIV_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n282_statement_begin_α]; jmp   rax
DIV_γ:                  mov              rdi, qword ptr [r9 + 112]
                        mov              rsi, qword ptr [r9 + 120]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
DIV_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_566_245:
                        .size            n158_define_bx, .-n158_define_bx
                        .type            n159_statement_end_bx, @function
n159_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_end_α:   mov              r11, 73
                        mov              r10, 7;                              jmp   n160_statement_begin_α
                        .size            n159_statement_end_bx, .-n159_statement_end_bx
                        .type            n160_statement_begin_bx, @function
n160_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('SGN()p1')                       :(FNS_end)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n160_statement_begin_α: mov              r11, 74
                        mov              r10, 8;                              jmp   n161_define_α
n160_statement_begin_β: mov              r11, 74;                             jmp   n339_statement_begin_α
                        .size            n160_statement_begin_bx, .-n160_statement_begin_bx
                        .type            n161_define_bx, @function
n161_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_define_α:          mov              r11, 75
                        mov              rdi, qword ptr [rip + .Ldefine_α_572_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_572_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + SGN_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_572_0]
                        lea              rsi, [rip + SGN_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n162_statement_end_α
n161_define_β:          mov              r11, 75;                             jmp   n160_statement_begin_β
.Ldefine_α_572_0:       .quad            .Ldefine_α_572_0_s
.Ldefine_α_572_0_s:     .string          "SGN"
.Ldefine_α_572_1:       .quad            .Ldefine_α_572_1_s
.Ldefine_α_572_1_s:     .string          "p1"
                                                                              jmp   .Ldefine_α_573_245
#-----------------------------------------------------------------------------------------------------------------------
SGN_α:                  sub              rsp, 64
                        mov              rax, qword ptr [r9 + 128]            # SGN
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 128], 0
                        mov              qword ptr [r9 + 136], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_573_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 144]            # p1
                        mov              qword ptr [r9 + 144], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 152]
                        mov              qword ptr [r9 + 152], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_573_41
.Ldefine_α_573_10:      mov              rax, qword ptr [r9 + 144]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 144], 0
                        mov              qword ptr [r9 + 152], 0
.Ldefine_α_573_41:      lea              rcx, [rip + SGN_γ]
                        lea              rax, [rip + SGN_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n307_statement_begin_α]; jmp   rax
SGN_γ:                  mov              rdi, qword ptr [r9 + 128]            # SGN
                        mov              rsi, qword ptr [r9 + 136]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_573_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 144], rax            # p1
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 152], rax;           jmp   .Ldefine_α_573_110
.Ldefine_α_573_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 152], rax
.Ldefine_α_573_110:     mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
SGN_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax            # SGN
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_573_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 144], rax            # p1
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 152], rax;           jmp   .Ldefine_α_573_180
.Ldefine_α_573_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 152], rax
.Ldefine_α_573_180:     mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_573_245:
                        .size            n161_define_bx, .-n161_define_bx
                        .type            n162_statement_end_bx, @function
n162_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_end_α:   mov              r11, 76
                        mov              r10, 8;                              jmp   n339_statement_begin_α
                        .size            n162_statement_end_bx, .-n162_statement_end_bx
                        .type            n163_statement_begin_bx, @function
n163_statement_begin_bx:
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 36 0
n163_statement_begin_α: mov              r11, 77
                        mov              r10, 9;                              jmp   n164_var_α
n163_statement_begin_β: mov              r11, 77;                             jmp   n171_statement_begin_α
                        .size            n163_statement_begin_bx, .-n163_statement_begin_bx
                        .type            n164_var_bx, @function
n164_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:             sub              rsp, 16
                        mov              r11, 78
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n165_lit_integer_α
                        .size            n164_var_bx, .-n164_var_bx
                        .type            n165_lit_integer_bx, @function
n165_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:     sub              rsp, 16
                        mov              r11, 79
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_579_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n166_subscript_α
n165_lit_integer_β:     mov              r11, 79
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n163_statement_begin_β
.Llit_integer_α_579_0:  .quad            1
                        .size            n165_lit_integer_bx, .-n165_lit_integer_bx
                        .type            n166_subscript_bx, @function
n166_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_subscript_α:       sub              rsp, 16
                        mov              r11, 80
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_580_240
                        add              rsp, 16;                             jmp   n165_lit_integer_β
.Lsubscript_α_580_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n167_deref_α
n166_subscript_β:       mov              r11, 80
                        add              rsp, 16;                             jmp   n165_lit_integer_β
                        .size            n166_subscript_bx, .-n166_subscript_bx
                        .type            n167_deref_bx, @function
n167_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_deref_α:           sub              rsp, 16
                        mov              r11, 81
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_581_240
                        add              rsp, 16;                             jmp   n166_subscript_β
.Lderef_α_581_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n168_call_α
n167_deref_β:           mov              r11, 81
                        add              rsp, 16;                             jmp   n166_subscript_β
                        .size            n167_deref_bx, .-n167_deref_bx
                        .type            n168_call_bx, @function
n168_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_call_α:            sub              rsp, 16
                        mov              r11, 82
                        lea              rcx, [rip + .Lcall_α_sig583z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig583z:       .quad            1
                        .quad            .Lcall_α_583_2
                        .quad            .Lcall_α_583_2
                        .quad            16
.Lcall_α_583_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_583_29
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
.Lcall_α_583_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_583_240
                        add              rsp, 16;                             jmp   n167_deref_β
.Lcall_α_583_240:                                                             jmp   n169_assign_α
n168_call_β:            mov              r11, 82;                             jmp   n167_deref_β
.Lcall_β_583_0:         .quad            .Lcall_β_583_0_s
.Lcall_β_583_0_s:       .string          "DRF"
                        .size            n168_call_bx, .-n168_call_bx
                        .type            n169_assign_bx, @function
n169_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_α:          mov              r11, 83
                        mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_584_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n170_statement_end_α
.Lassign_α_584_0:       .quad            .Lassign_α_584_0_s
.Lassign_α_584_0_s:     .string          "OUTPUT"
                        .size            n169_assign_bx, .-n169_assign_bx
                        .type            n170_statement_end_bx, @function
n170_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   mov              r11, 84
                        mov              r10, 9
                        add              rsp, 80;                             jmp   n171_statement_begin_α
                        .size            n170_statement_end_bx, .-n170_statement_end_bx
                        .type            n171_statement_begin_bx, @function
n171_statement_begin_bx:
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n171_statement_begin_α: mov              r11, 85
                        mov              r10, 10;                             jmp   n172_lit_integer_α
n171_statement_begin_β: mov              r11, 85;                             jmp   n175_statement_begin_α
                        .size            n171_statement_begin_bx, .-n171_statement_begin_bx
                        .type            n172_lit_integer_bx, @function
n172_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:     sub              rsp, 16
                        mov              r11, 86
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_589_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n173_assign_α
.Llit_integer_α_589_0:  .quad            0
                        .size            n172_lit_integer_bx, .-n172_lit_integer_bx
                        .type            n173_assign_bx, @function
n173_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_assign_α:          mov              r11, 87
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n174_statement_end_α
                        .size            n173_assign_bx, .-n173_assign_bx
                        .type            n174_statement_end_bx, @function
n174_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_end_α:   mov              r11, 88
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n175_statement_begin_α
                        .size            n174_statement_end_bx, .-n174_statement_end_bx
                        .type            n175_statement_begin_bx, @function
n175_statement_begin_bx:
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 38 0
n175_statement_begin_α: mov              r11, 89
                        mov              r10, 11;                             jmp   n176_lit_name_α
n175_statement_begin_β: mov              r11, 89;                             jmp   NRETURN
                        .size            n175_statement_begin_bx, .-n175_statement_begin_bx
                        .type            n176_lit_name_bx, @function
n176_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_name_α:        sub              rsp, 16
                        mov              r11, 90
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_595_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n177_assign_α
.Llit_name_α_595_0:     .quad            .Llit_name_α_595_0_s
.Llit_name_α_595_0_s:   .string          "dm"
                        .size            n176_lit_name_bx, .-n176_lit_name_bx
                        .type            n177_assign_bx, @function
n177_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_assign_α:          mov              r11, 91
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # EMIT
                        mov              qword ptr [r9 + 8], rdx;             jmp   n178_statement_end_α
                        .size            n177_assign_bx, .-n177_assign_bx
                        .type            n178_statement_end_bx, @function
n178_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_end_α:   mov              r11, 92
                        mov              r10, 11
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n178_statement_end_bx, .-n178_statement_end_bx
                        .type            n179_statement_begin_bx, @function
n179_statement_begin_bx:
#=======================================================================================================================
# PSH     PSH = .S[sp = sp + 1]                   :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 39 0
n179_statement_begin_α: mov              r11, 93
                        mov              r10, 12;                             jmp   n180_var_α
n179_statement_begin_β: mov              r11, 93;                             jmp   NRETURN
                        .size            n179_statement_begin_bx, .-n179_statement_begin_bx
                        .type            n180_var_bx, @function
n180_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:             sub              rsp, 16
                        mov              r11, 94
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n181_var_α
                        .size            n180_var_bx, .-n180_var_bx
                        .type            n181_var_bx, @function
n181_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_var_α:             sub              rsp, 16
                        mov              r11, 95
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n182_lit_integer_α
n181_var_β:             mov              r11, 95
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n179_statement_begin_β
                        .size            n181_var_bx, .-n181_var_bx
                        .type            n182_lit_integer_bx, @function
n182_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_integer_α:     sub              rsp, 16
                        mov              r11, 96
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_603_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n183_binop_α
n182_lit_integer_β:     mov              r11, 96
                        add              rsp, 16;                             jmp   n181_var_β
.Llit_integer_α_603_0:  .quad            1
                        .size            n182_lit_integer_bx, .-n182_lit_integer_bx
                        .type            n183_binop_bx, @function
n183_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_binop_α:           sub              rsp, 16
                        mov              r11, 97
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_604_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_604_7
.Lbinop_α_604_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_604_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_604_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_604_4
.Lbinop_α_604_3:        movq             xmm0, rsi
.Lbinop_α_604_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_604_7:                                                              jmp   n184_assign_α
.Lbinop_α_604_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_604_240
                        add              rsp, 16;                             jmp   n182_lit_integer_β
.Lbinop_α_604_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n184_assign_α
n183_binop_β:           mov              r11, 97
                        add              rsp, 16;                             jmp   n182_lit_integer_β
                        .size            n183_binop_bx, .-n183_binop_bx
                        .type            n184_assign_bx, @function
n184_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_assign_α:          mov              r11, 98
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n185_subscript_α
                        .size            n184_assign_bx, .-n184_assign_bx
                        .type            n185_subscript_bx, @function
n185_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_subscript_α:       sub              rsp, 16
                        mov              r11, 99
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # assign
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_606_240
                        add              rsp, 16;                             jmp   n183_binop_β
.Lsubscript_α_606_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_assign_α
                        .size            n185_subscript_bx, .-n185_subscript_bx
                        .type            n186_assign_bx, @function
n186_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_assign_α:          mov              r11, 100
                        mov              rax, qword ptr [rsp + 0]             # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # PSH
                        mov              qword ptr [r9 + 24], rdx;            jmp   n187_statement_end_α
                        .size            n186_assign_bx, .-n186_assign_bx
                        .type            n187_statement_end_bx, @function
n187_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_end_α:   mov              r11, 101
                        mov              r10, 12
                        add              rsp, 80;                             jmp   NRETURN
                        .size            n187_statement_end_bx, .-n187_statement_end_bx
                        .type            n188_statement_begin_bx, @function
n188_statement_begin_bx:
#=======================================================================================================================
# DRF     DRF = nm
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 40 0
n188_statement_begin_α: mov              r11, 102
                        mov              r10, 13;                             jmp   n189_var_α
n188_statement_begin_β: mov              r11, 102;                            jmp   n192_statement_begin_α
                        .size            n188_statement_begin_bx, .-n188_statement_begin_bx
                        .type            n189_var_bx, @function
n189_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:             sub              rsp, 16
                        mov              r11, 103
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n190_assign_α
                        .size            n189_var_bx, .-n189_var_bx
                        .type            n190_assign_bx, @function
n190_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_assign_α:          mov              r11, 104
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx;            jmp   n191_statement_end_α
                        .size            n190_assign_bx, .-n190_assign_bx
                        .type            n191_statement_end_bx, @function
n191_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_end_α:   mov              r11, 105
                        mov              r10, 13
                        add              rsp, 16;                             jmp   n192_statement_begin_α
                        .size            n191_statement_end_bx, .-n191_statement_end_bx
                        .type            n192_statement_begin_bx, @function
n192_statement_begin_bx:
#=======================================================================================================================
#         nm POS(0) ANY(&LCASE) RPOS(0)           :F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 41 0
n192_statement_begin_α: mov              r11, 106
                        mov              r10, 14;                             jmp   n193_var_α
n192_statement_begin_β: mov              r11, 106;                            jmp   RETURN
                        .size            n192_statement_begin_bx, .-n192_statement_begin_bx
                        .type            n193_var_bx, @function
n193_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:             sub              rsp, 16
                        mov              r11, 107
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n194_match_begin_α
                        .size            n193_var_bx, .-n193_var_bx
                        .type            n194_match_begin_bx, @function
n194_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_match_begin_α:     mov              r11, 108
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
.Lmatch_begin_α_620_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_620_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n195_match_pos_α
n194_match_begin_β:     mov              r11, 108
.Lmatch_begin_α_620_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_620_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_620_1
                                                                              jmp   .Lmatch_begin_α_620_0
.Lmatch_begin_β_620_1:
.Lmatch_begin_γ_194_af: mov              r11, 108
.Lmatch_begin_ω_194_af: mov              r11, 108
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
                        .size            n194_match_begin_bx, .-n194_match_begin_bx
                        .type            n195_match_pos_bx, @function
n195_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_match_pos_α:       mov              r11, 109
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n194_match_begin_β
                                                                              jmp   n196_match_any_α
n195_match_pos_β:       mov              r11, 109;                            jmp   n194_match_begin_β
                        .size            n195_match_pos_bx, .-n195_match_pos_bx
                        .type            n196_match_any_bx, @function
n196_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_match_any_α:       mov              r11, 110
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n194_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n194_match_begin_β
                        add              r14d, 1;                             jmp   n197_match_rpos_α
n196_match_any_β:       mov              r11, 110
                        sub              r14d, 1;                             jmp   n194_match_begin_β
                        .size            n196_match_any_bx, .-n196_match_any_bx
                        .type            n197_match_rpos_bx, @function
n197_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_match_rpos_α:      mov              r11, 111
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n196_match_any_β
                                                                              jmp   n198_match_end_α
                        .size            n197_match_rpos_bx, .-n197_match_rpos_bx
                        .type            n198_match_end_bx, @function
n198_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_match_end_α:       mov              r11, 112
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
                        test             rax, rax;                            je    .Lmatch_end_α_626_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_194_af
.Lmatch_end_α_626_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n199_statement_end_α
                        .size            n198_match_end_bx, .-n198_match_end_bx
                        .type            n199_statement_end_bx, @function
n199_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_end_α:   mov              r11, 113
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n200_statement_begin_α
                        .size            n199_statement_end_bx, .-n199_statement_end_bx
                        .type            n200_statement_begin_bx, @function
n200_statement_begin_bx:
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 42 0
n200_statement_begin_α: mov              r11, 114
                        mov              r10, 15;                             jmp   n201_var_α
n200_statement_begin_β: mov              r11, 114;                            jmp   RETURN
                        .size            n200_statement_begin_bx, .-n200_statement_begin_bx
                        .type            n201_var_bx, @function
n201_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:             sub              rsp, 16
                        mov              r11, 115
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_var_α
                        .size            n201_var_bx, .-n201_var_bx
                        .type            n202_var_bx, @function
n202_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_var_α:             sub              rsp, 16
                        mov              r11, 116
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n203_subscript_α
n202_var_β:             mov              r11, 116
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n200_statement_begin_β
                        .size            n202_var_bx, .-n202_var_bx
                        .type            n203_subscript_bx, @function
n203_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_subscript_α:       sub              rsp, 16
                        mov              r11, 117
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_633_240
                        add              rsp, 16;                             jmp   n202_var_β
.Lsubscript_α_633_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n204_deref_α
n203_subscript_β:       mov              r11, 117
                        add              rsp, 16;                             jmp   n202_var_β
                        .size            n203_subscript_bx, .-n203_subscript_bx
                        .type            n204_deref_bx, @function
n204_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_deref_α:           sub              rsp, 16
                        mov              r11, 118
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_634_240
                        add              rsp, 16;                             jmp   n203_subscript_β
.Lderef_α_634_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n205_assign_α
                        .size            n204_deref_bx, .-n204_deref_bx
                        .type            n205_assign_bx, @function
n205_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_assign_α:          mov              r11, 119
                        mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx;            jmp   n206_statement_end_α
                        .size            n205_assign_bx, .-n205_assign_bx
                        .type            n206_statement_end_bx, @function
n206_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_end_α:   mov              r11, 120
                        mov              r10, 15
                        add              rsp, 64;                             jmp   RETURN
                        .size            n206_statement_end_bx, .-n206_statement_end_bx
                        .type            n207_statement_begin_bx, @function
n207_statement_begin_bx:
#=======================================================================================================================
# ADD     S[sp = sp - 1] = DRF(S[sp]) + DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 43 0
n207_statement_begin_α: mov              r11, 121
                        mov              r10, 16;                             jmp   n208_var_α
n207_statement_begin_β: mov              r11, 121;                            jmp   n228_statement_begin_α
                        .size            n207_statement_begin_bx, .-n207_statement_begin_bx
                        .type            n208_var_bx, @function
n208_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:             sub              rsp, 16
                        mov              r11, 122
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n209_var_α
                        .size            n208_var_bx, .-n208_var_bx
                        .type            n209_var_bx, @function
n209_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_var_α:             sub              rsp, 16
                        mov              r11, 123
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n210_lit_integer_α
n209_var_β:             mov              r11, 123
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n207_statement_begin_β
                        .size            n209_var_bx, .-n209_var_bx
                        .type            n210_lit_integer_bx, @function
n210_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_integer_α:     sub              rsp, 16
                        mov              r11, 124
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_642_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n211_binop_α
n210_lit_integer_β:     mov              r11, 124
                        add              rsp, 16;                             jmp   n209_var_β
.Llit_integer_α_642_0:  .quad            1
                        .size            n210_lit_integer_bx, .-n210_lit_integer_bx
                        .type            n211_binop_bx, @function
n211_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_binop_α:           sub              rsp, 16
                        mov              r11, 125
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_643_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_643_7
.Lbinop_α_643_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_643_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_643_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_643_4
.Lbinop_α_643_3:        movq             xmm0, rsi
.Lbinop_α_643_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_643_7:                                                              jmp   n212_assign_α
.Lbinop_α_643_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_643_240
                        add              rsp, 16;                             jmp   n210_lit_integer_β
.Lbinop_α_643_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n212_assign_α
n211_binop_β:           mov              r11, 125
                        add              rsp, 16;                             jmp   n210_lit_integer_β
                        .size            n211_binop_bx, .-n211_binop_bx
                        .type            n212_assign_bx, @function
n212_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_assign_α:          mov              r11, 126
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n213_var_α
                        .size            n212_assign_bx, .-n212_assign_bx
                        .type            n213_var_bx, @function
n213_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_var_α:             sub              rsp, 16
                        mov              r11, 127
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n214_var_α
n213_var_β:             mov              r11, 127
                        add              rsp, 16;                             jmp   n211_binop_β
                        .size            n213_var_bx, .-n213_var_bx
                        .type            n214_var_bx, @function
n214_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:             sub              rsp, 16
                        mov              r11, 128
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n215_subscript_α
n214_var_β:             mov              r11, 128
                        add              rsp, 16;                             jmp   n213_var_β
                        .size            n214_var_bx, .-n214_var_bx
                        .type            n215_subscript_bx, @function
n215_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_subscript_α:       sub              rsp, 16
                        mov              r11, 129
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_647_240
                        add              rsp, 16;                             jmp   n214_var_β
.Lsubscript_α_647_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n216_deref_α
n215_subscript_β:       mov              r11, 129
                        add              rsp, 16;                             jmp   n214_var_β
                        .size            n215_subscript_bx, .-n215_subscript_bx
                        .type            n216_deref_bx, @function
n216_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_deref_α:           sub              rsp, 16
                        mov              r11, 130
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_648_240
                        add              rsp, 16;                             jmp   n215_subscript_β
.Lderef_α_648_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n217_call_α
n216_deref_β:           mov              r11, 130
                        add              rsp, 16;                             jmp   n215_subscript_β
                        .size            n216_deref_bx, .-n216_deref_bx
                        .type            n217_call_bx, @function
n217_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_call_α:            sub              rsp, 16
                        mov              r11, 131
                        lea              rcx, [rip + .Lcall_α_sig650z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig650z:       .quad            1
                        .quad            .Lcall_α_650_2
                        .quad            .Lcall_α_650_2
                        .quad            16
.Lcall_α_650_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_650_29
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
.Lcall_α_650_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_650_240
                        add              rsp, 16;                             jmp   n216_deref_β
.Lcall_α_650_240:                                                             jmp   n218_var_α
n217_call_β:            mov              r11, 131;                            jmp   n216_deref_β
.Lcall_β_650_0:         .quad            .Lcall_β_650_0_s
.Lcall_β_650_0_s:       .string          "DRF"
                        .size            n217_call_bx, .-n217_call_bx
                        .type            n218_var_bx, @function
n218_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:             sub              rsp, 16
                        mov              r11, 132
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n219_var_α
n218_var_β:             mov              r11, 132
                        add              rsp, 32;                             jmp   n216_deref_β
                        .size            n218_var_bx, .-n218_var_bx
                        .type            n219_var_bx, @function
n219_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             sub              rsp, 16
                        mov              r11, 133
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_lit_integer_α
n219_var_β:             mov              r11, 133
                        add              rsp, 16;                             jmp   n218_var_β
                        .size            n219_var_bx, .-n219_var_bx
                        .type            n220_lit_integer_bx, @function
n220_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_integer_α:     sub              rsp, 16
                        mov              r11, 134
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_653_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n221_binop_α
n220_lit_integer_β:     mov              r11, 134
                        add              rsp, 16;                             jmp   n219_var_β
.Llit_integer_α_653_0:  .quad            1
                        .size            n220_lit_integer_bx, .-n220_lit_integer_bx
                        .type            n221_binop_bx, @function
n221_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_binop_α:           sub              rsp, 16
                        mov              r11, 135
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_654_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_654_7
.Lbinop_α_654_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_654_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_654_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_654_4
.Lbinop_α_654_3:        movq             xmm0, rsi
.Lbinop_α_654_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_654_7:                                                              jmp   n222_subscript_α
.Lbinop_α_654_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_654_240
                        add              rsp, 16;                             jmp   n220_lit_integer_β
.Lbinop_α_654_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n222_subscript_α
n221_binop_β:           mov              r11, 135
                        add              rsp, 16;                             jmp   n220_lit_integer_β
                        .size            n221_binop_bx, .-n221_binop_bx
                        .type            n222_subscript_bx, @function
n222_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_subscript_α:       sub              rsp, 16
                        mov              r11, 136
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_655_240
                        add              rsp, 16;                             jmp   n221_binop_β
.Lsubscript_α_655_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n223_deref_α
n222_subscript_β:       mov              r11, 136
                        add              rsp, 16;                             jmp   n221_binop_β
                        .size            n222_subscript_bx, .-n222_subscript_bx
                        .type            n223_deref_bx, @function
n223_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_deref_α:           sub              rsp, 16
                        mov              r11, 137
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_656_240
                        add              rsp, 16;                             jmp   n222_subscript_β
.Lderef_α_656_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n224_call_α
n223_deref_β:           mov              r11, 137
                        add              rsp, 16;                             jmp   n222_subscript_β
                        .size            n223_deref_bx, .-n223_deref_bx
                        .type            n224_call_bx, @function
n224_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_call_α:            sub              rsp, 16
                        mov              r11, 138
                        lea              rcx, [rip + .Lcall_α_sig658z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig658z:       .quad            1
                        .quad            .Lcall_α_658_2
                        .quad            .Lcall_α_658_2
                        .quad            16
.Lcall_α_658_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_658_29
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
.Lcall_α_658_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_658_240
                        add              rsp, 16;                             jmp   n223_deref_β
.Lcall_α_658_240:                                                             jmp   n225_binop_α
n224_call_β:            mov              r11, 138;                            jmp   n223_deref_β
.Lcall_β_658_0:         .quad            .Lcall_β_658_0_s
.Lcall_β_658_0_s:       .string          "DRF"
                        .size            n224_call_bx, .-n224_call_bx
                        .type            n225_binop_bx, @function
n225_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_binop_α:           sub              rsp, 16
                        mov              r11, 139
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_659_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_659_7
.Lbinop_α_659_2:        and              edx, 1;                              jz    .Lbinop_α_659_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_659_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_659_4
.Lbinop_α_659_3:        movq             xmm0, rsi
.Lbinop_α_659_4:        cmp              cl, 5;                               je    .Lbinop_α_659_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_659_6
.Lbinop_α_659_5:        movq             xmm1, rdi
.Lbinop_α_659_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_659_7:                                                              jmp   n226_assign_var_α
.Lbinop_α_659_0:        mov              rdi, qword ptr [rsp + 128]           # call
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_659_240
                        add              rsp, 32;                             jmp   n223_deref_β
.Lbinop_α_659_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n226_assign_var_α
n225_binop_β:           mov              r11, 139
                        add              rsp, 32;                             jmp   n223_deref_β
                        .size            n225_binop_bx, .-n225_binop_bx
                        .type            n226_assign_var_bx, @function
n226_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_assign_var_α:      sub              rsp, 16
                        mov              r11, 140
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lassign_var_α_661_0
                        test             rsi, rsi;                            je    .Lassign_var_α_661_0
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_661_238
                        add              rsp, 16;                             jmp   n225_binop_β
.Lassign_var_α_661_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_statement_end_α
.Lassign_var_α_661_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_661_239
                        add              rsp, 16;                             jmp   n225_binop_β
.Lassign_var_α_661_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_661_240
                        add              rsp, 16;                             jmp   n225_binop_β
.Lassign_var_α_661_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_statement_end_α
                        .size            n226_assign_var_bx, .-n226_assign_var_bx
                        .type            n227_statement_end_bx, @function
n227_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_statement_end_α:   mov              r11, 141
                        mov              r10, 16
                        add              rsp, 288;                            jmp   n228_statement_begin_α
                        .size            n227_statement_end_bx, .-n227_statement_end_bx
                        .type            n228_statement_begin_bx, @function
n228_statement_begin_bx:
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 44 0
n228_statement_begin_α: mov              r11, 142
                        mov              r10, 17;                             jmp   n229_lit_name_α
n228_statement_begin_β: mov              r11, 142;                            jmp   NRETURN
                        .size            n228_statement_begin_bx, .-n228_statement_begin_bx
                        .type            n229_lit_name_bx, @function
n229_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_name_α:        sub              rsp, 16
                        mov              r11, 143
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_666_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n230_assign_α
.Llit_name_α_666_0:     .quad            .Llit_name_α_666_0_s
.Llit_name_α_666_0_s:   .string          "dm"
                        .size            n229_lit_name_bx, .-n229_lit_name_bx
                        .type            n230_assign_bx, @function
n230_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_assign_α:          mov              r11, 144
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ADD
                        mov              qword ptr [r9 + 72], rdx;            jmp   n231_statement_end_α
                        .size            n230_assign_bx, .-n230_assign_bx
                        .type            n231_statement_end_bx, @function
n231_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_statement_end_α:   mov              r11, 145
                        mov              r10, 17
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n231_statement_end_bx, .-n231_statement_end_bx
                        .type            n232_statement_begin_bx, @function
n232_statement_begin_bx:
#=======================================================================================================================
# SUB     S[sp = sp - 1] = DRF(S[sp]) - DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 45 0
n232_statement_begin_α: mov              r11, 146
                        mov              r10, 18;                             jmp   n233_var_α
n232_statement_begin_β: mov              r11, 146;                            jmp   n253_statement_begin_α
                        .size            n232_statement_begin_bx, .-n232_statement_begin_bx
                        .type            n233_var_bx, @function
n233_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:             sub              rsp, 16
                        mov              r11, 147
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n234_var_α
                        .size            n233_var_bx, .-n233_var_bx
                        .type            n234_var_bx, @function
n234_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_var_α:             sub              rsp, 16
                        mov              r11, 148
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n235_lit_integer_α
n234_var_β:             mov              r11, 148
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n232_statement_begin_β
                        .size            n234_var_bx, .-n234_var_bx
                        .type            n235_lit_integer_bx, @function
n235_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_integer_α:     sub              rsp, 16
                        mov              r11, 149
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_674_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n236_binop_α
n235_lit_integer_β:     mov              r11, 149
                        add              rsp, 16;                             jmp   n234_var_β
.Llit_integer_α_674_0:  .quad            1
                        .size            n235_lit_integer_bx, .-n235_lit_integer_bx
                        .type            n236_binop_bx, @function
n236_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_binop_α:           sub              rsp, 16
                        mov              r11, 150
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_675_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_675_7
.Lbinop_α_675_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_675_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_675_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_675_4
.Lbinop_α_675_3:        movq             xmm0, rsi
.Lbinop_α_675_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_675_7:                                                              jmp   n237_assign_α
.Lbinop_α_675_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_675_240
                        add              rsp, 16;                             jmp   n235_lit_integer_β
.Lbinop_α_675_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n237_assign_α
n236_binop_β:           mov              r11, 150
                        add              rsp, 16;                             jmp   n235_lit_integer_β
                        .size            n236_binop_bx, .-n236_binop_bx
                        .type            n237_assign_bx, @function
n237_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_assign_α:          mov              r11, 151
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n238_var_α
                        .size            n237_assign_bx, .-n237_assign_bx
                        .type            n238_var_bx, @function
n238_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:             sub              rsp, 16
                        mov              r11, 152
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n239_var_α
n238_var_β:             mov              r11, 152
                        add              rsp, 16;                             jmp   n236_binop_β
                        .size            n238_var_bx, .-n238_var_bx
                        .type            n239_var_bx, @function
n239_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_var_α:             sub              rsp, 16
                        mov              r11, 153
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n240_subscript_α
n239_var_β:             mov              r11, 153
                        add              rsp, 16;                             jmp   n238_var_β
                        .size            n239_var_bx, .-n239_var_bx
                        .type            n240_subscript_bx, @function
n240_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_subscript_α:       sub              rsp, 16
                        mov              r11, 154
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_679_240
                        add              rsp, 16;                             jmp   n239_var_β
.Lsubscript_α_679_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n241_deref_α
n240_subscript_β:       mov              r11, 154
                        add              rsp, 16;                             jmp   n239_var_β
                        .size            n240_subscript_bx, .-n240_subscript_bx
                        .type            n241_deref_bx, @function
n241_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_deref_α:           sub              rsp, 16
                        mov              r11, 155
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_680_240
                        add              rsp, 16;                             jmp   n240_subscript_β
.Lderef_α_680_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_call_α
n241_deref_β:           mov              r11, 155
                        add              rsp, 16;                             jmp   n240_subscript_β
                        .size            n241_deref_bx, .-n241_deref_bx
                        .type            n242_call_bx, @function
n242_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_call_α:            sub              rsp, 16
                        mov              r11, 156
                        lea              rcx, [rip + .Lcall_α_sig682z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig682z:       .quad            1
                        .quad            .Lcall_α_682_2
                        .quad            .Lcall_α_682_2
                        .quad            16
.Lcall_α_682_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_682_29
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
.Lcall_α_682_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_682_240
                        add              rsp, 16;                             jmp   n241_deref_β
.Lcall_α_682_240:                                                             jmp   n243_var_α
n242_call_β:            mov              r11, 156;                            jmp   n241_deref_β
.Lcall_β_682_0:         .quad            .Lcall_β_682_0_s
.Lcall_β_682_0_s:       .string          "DRF"
                        .size            n242_call_bx, .-n242_call_bx
                        .type            n243_var_bx, @function
n243_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:             sub              rsp, 16
                        mov              r11, 157
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n244_var_α
n243_var_β:             mov              r11, 157
                        add              rsp, 32;                             jmp   n241_deref_β
                        .size            n243_var_bx, .-n243_var_bx
                        .type            n244_var_bx, @function
n244_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_var_α:             sub              rsp, 16
                        mov              r11, 158
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n245_lit_integer_α
n244_var_β:             mov              r11, 158
                        add              rsp, 16;                             jmp   n243_var_β
                        .size            n244_var_bx, .-n244_var_bx
                        .type            n245_lit_integer_bx, @function
n245_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_integer_α:     sub              rsp, 16
                        mov              r11, 159
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_685_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n246_binop_α
n245_lit_integer_β:     mov              r11, 159
                        add              rsp, 16;                             jmp   n244_var_β
.Llit_integer_α_685_0:  .quad            1
                        .size            n245_lit_integer_bx, .-n245_lit_integer_bx
                        .type            n246_binop_bx, @function
n246_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_binop_α:           sub              rsp, 16
                        mov              r11, 160
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_686_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_686_7
.Lbinop_α_686_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_686_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_686_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_686_4
.Lbinop_α_686_3:        movq             xmm0, rsi
.Lbinop_α_686_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_686_7:                                                              jmp   n247_subscript_α
.Lbinop_α_686_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_686_240
                        add              rsp, 16;                             jmp   n245_lit_integer_β
.Lbinop_α_686_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n247_subscript_α
n246_binop_β:           mov              r11, 160
                        add              rsp, 16;                             jmp   n245_lit_integer_β
                        .size            n246_binop_bx, .-n246_binop_bx
                        .type            n247_subscript_bx, @function
n247_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_subscript_α:       sub              rsp, 16
                        mov              r11, 161
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_687_240
                        add              rsp, 16;                             jmp   n246_binop_β
.Lsubscript_α_687_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n248_deref_α
n247_subscript_β:       mov              r11, 161
                        add              rsp, 16;                             jmp   n246_binop_β
                        .size            n247_subscript_bx, .-n247_subscript_bx
                        .type            n248_deref_bx, @function
n248_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_deref_α:           sub              rsp, 16
                        mov              r11, 162
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_688_240
                        add              rsp, 16;                             jmp   n247_subscript_β
.Lderef_α_688_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n249_call_α
n248_deref_β:           mov              r11, 162
                        add              rsp, 16;                             jmp   n247_subscript_β
                        .size            n248_deref_bx, .-n248_deref_bx
                        .type            n249_call_bx, @function
n249_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_call_α:            sub              rsp, 16
                        mov              r11, 163
                        lea              rcx, [rip + .Lcall_α_sig690z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig690z:       .quad            1
                        .quad            .Lcall_α_690_2
                        .quad            .Lcall_α_690_2
                        .quad            16
.Lcall_α_690_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_690_29
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
.Lcall_α_690_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_690_240
                        add              rsp, 16;                             jmp   n248_deref_β
.Lcall_α_690_240:                                                             jmp   n250_binop_α
n249_call_β:            mov              r11, 163;                            jmp   n248_deref_β
.Lcall_β_690_0:         .quad            .Lcall_β_690_0_s
.Lcall_β_690_0_s:       .string          "DRF"
                        .size            n249_call_bx, .-n249_call_bx
                        .type            n250_binop_bx, @function
n250_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_binop_α:           sub              rsp, 16
                        mov              r11, 164
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_691_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_691_7
.Lbinop_α_691_2:        and              edx, 1;                              jz    .Lbinop_α_691_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_691_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_691_4
.Lbinop_α_691_3:        movq             xmm0, rsi
.Lbinop_α_691_4:        cmp              cl, 5;                               je    .Lbinop_α_691_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_691_6
.Lbinop_α_691_5:        movq             xmm1, rdi
.Lbinop_α_691_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_691_7:                                                              jmp   n251_assign_var_α
.Lbinop_α_691_0:        mov              rdi, qword ptr [rsp + 128]           # call
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_691_240
                        add              rsp, 32;                             jmp   n248_deref_β
.Lbinop_α_691_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_assign_var_α
n250_binop_β:           mov              r11, 164
                        add              rsp, 32;                             jmp   n248_deref_β
                        .size            n250_binop_bx, .-n250_binop_bx
                        .type            n251_assign_var_bx, @function
n251_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_assign_var_α:      sub              rsp, 16
                        mov              r11, 165
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lassign_var_α_693_0
                        test             rsi, rsi;                            je    .Lassign_var_α_693_0
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_693_238
                        add              rsp, 16;                             jmp   n250_binop_β
.Lassign_var_α_693_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n252_statement_end_α
.Lassign_var_α_693_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_693_239
                        add              rsp, 16;                             jmp   n250_binop_β
.Lassign_var_α_693_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_693_240
                        add              rsp, 16;                             jmp   n250_binop_β
.Lassign_var_α_693_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n252_statement_end_α
                        .size            n251_assign_var_bx, .-n251_assign_var_bx
                        .type            n252_statement_end_bx, @function
n252_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_statement_end_α:   mov              r11, 166
                        mov              r10, 18
                        add              rsp, 288;                            jmp   n253_statement_begin_α
                        .size            n252_statement_end_bx, .-n252_statement_end_bx
                        .type            n253_statement_begin_bx, @function
n253_statement_begin_bx:
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 46 0
n253_statement_begin_α: mov              r11, 167
                        mov              r10, 19;                             jmp   n254_lit_name_α
n253_statement_begin_β: mov              r11, 167;                            jmp   NRETURN
                        .size            n253_statement_begin_bx, .-n253_statement_begin_bx
                        .type            n254_lit_name_bx, @function
n254_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_name_α:        sub              rsp, 16
                        mov              r11, 168
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_698_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n255_assign_α
.Llit_name_α_698_0:     .quad            .Llit_name_α_698_0_s
.Llit_name_α_698_0_s:   .string          "dm"
                        .size            n254_lit_name_bx, .-n254_lit_name_bx
                        .type            n255_assign_bx, @function
n255_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_assign_α:          mov              r11, 169
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # SUB
                        mov              qword ptr [r9 + 88], rdx;            jmp   n256_statement_end_α
                        .size            n255_assign_bx, .-n255_assign_bx
                        .type            n256_statement_end_bx, @function
n256_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_end_α:   mov              r11, 170
                        mov              r10, 19
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n256_statement_end_bx, .-n256_statement_end_bx
                        .type            n257_statement_begin_bx, @function
n257_statement_begin_bx:
#=======================================================================================================================
# MUL     S[sp = sp - 1] = DRF(S[sp]) * DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 47 0
n257_statement_begin_α: mov              r11, 171
                        mov              r10, 20;                             jmp   n258_var_α
n257_statement_begin_β: mov              r11, 171;                            jmp   n278_statement_begin_α
                        .size            n257_statement_begin_bx, .-n257_statement_begin_bx
                        .type            n258_var_bx, @function
n258_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:             sub              rsp, 16
                        mov              r11, 172
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n259_var_α
                        .size            n258_var_bx, .-n258_var_bx
                        .type            n259_var_bx, @function
n259_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_var_α:             sub              rsp, 16
                        mov              r11, 173
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n260_lit_integer_α
n259_var_β:             mov              r11, 173
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n257_statement_begin_β
                        .size            n259_var_bx, .-n259_var_bx
                        .type            n260_lit_integer_bx, @function
n260_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_integer_α:     sub              rsp, 16
                        mov              r11, 174
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_706_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n261_binop_α
n260_lit_integer_β:     mov              r11, 174
                        add              rsp, 16;                             jmp   n259_var_β
.Llit_integer_α_706_0:  .quad            1
                        .size            n260_lit_integer_bx, .-n260_lit_integer_bx
                        .type            n261_binop_bx, @function
n261_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_binop_α:           sub              rsp, 16
                        mov              r11, 175
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_707_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_707_7
.Lbinop_α_707_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_707_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_707_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_707_4
.Lbinop_α_707_3:        movq             xmm0, rsi
.Lbinop_α_707_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_707_7:                                                              jmp   n262_assign_α
.Lbinop_α_707_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_707_240
                        add              rsp, 16;                             jmp   n260_lit_integer_β
.Lbinop_α_707_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n262_assign_α
n261_binop_β:           mov              r11, 175
                        add              rsp, 16;                             jmp   n260_lit_integer_β
                        .size            n261_binop_bx, .-n261_binop_bx
                        .type            n262_assign_bx, @function
n262_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_assign_α:          mov              r11, 176
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n263_var_α
                        .size            n262_assign_bx, .-n262_assign_bx
                        .type            n263_var_bx, @function
n263_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_var_α:             sub              rsp, 16
                        mov              r11, 177
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n264_var_α
n263_var_β:             mov              r11, 177
                        add              rsp, 16;                             jmp   n261_binop_β
                        .size            n263_var_bx, .-n263_var_bx
                        .type            n264_var_bx, @function
n264_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_var_α:             sub              rsp, 16
                        mov              r11, 178
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n265_subscript_α
n264_var_β:             mov              r11, 178
                        add              rsp, 16;                             jmp   n263_var_β
                        .size            n264_var_bx, .-n264_var_bx
                        .type            n265_subscript_bx, @function
n265_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_subscript_α:       sub              rsp, 16
                        mov              r11, 179
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_711_240
                        add              rsp, 16;                             jmp   n264_var_β
.Lsubscript_α_711_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n266_deref_α
n265_subscript_β:       mov              r11, 179
                        add              rsp, 16;                             jmp   n264_var_β
                        .size            n265_subscript_bx, .-n265_subscript_bx
                        .type            n266_deref_bx, @function
n266_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_deref_α:           sub              rsp, 16
                        mov              r11, 180
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_712_240
                        add              rsp, 16;                             jmp   n265_subscript_β
.Lderef_α_712_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n267_call_α
n266_deref_β:           mov              r11, 180
                        add              rsp, 16;                             jmp   n265_subscript_β
                        .size            n266_deref_bx, .-n266_deref_bx
                        .type            n267_call_bx, @function
n267_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_call_α:            sub              rsp, 16
                        mov              r11, 181
                        lea              rcx, [rip + .Lcall_α_sig714z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig714z:       .quad            1
                        .quad            .Lcall_α_714_2
                        .quad            .Lcall_α_714_2
                        .quad            16
.Lcall_α_714_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_714_29
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
.Lcall_α_714_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_714_240
                        add              rsp, 16;                             jmp   n266_deref_β
.Lcall_α_714_240:                                                             jmp   n268_var_α
n267_call_β:            mov              r11, 181;                            jmp   n266_deref_β
.Lcall_β_714_0:         .quad            .Lcall_β_714_0_s
.Lcall_β_714_0_s:       .string          "DRF"
                        .size            n267_call_bx, .-n267_call_bx
                        .type            n268_var_bx, @function
n268_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_var_α:             sub              rsp, 16
                        mov              r11, 182
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n269_var_α
n268_var_β:             mov              r11, 182
                        add              rsp, 32;                             jmp   n266_deref_β
                        .size            n268_var_bx, .-n268_var_bx
                        .type            n269_var_bx, @function
n269_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:             sub              rsp, 16
                        mov              r11, 183
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n270_lit_integer_α
n269_var_β:             mov              r11, 183
                        add              rsp, 16;                             jmp   n268_var_β
                        .size            n269_var_bx, .-n269_var_bx
                        .type            n270_lit_integer_bx, @function
n270_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_integer_α:     sub              rsp, 16
                        mov              r11, 184
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_717_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n271_binop_α
n270_lit_integer_β:     mov              r11, 184
                        add              rsp, 16;                             jmp   n269_var_β
.Llit_integer_α_717_0:  .quad            1
                        .size            n270_lit_integer_bx, .-n270_lit_integer_bx
                        .type            n271_binop_bx, @function
n271_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_binop_α:           sub              rsp, 16
                        mov              r11, 185
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_718_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_718_7
.Lbinop_α_718_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_718_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_718_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_718_4
.Lbinop_α_718_3:        movq             xmm0, rsi
.Lbinop_α_718_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_718_7:                                                              jmp   n272_subscript_α
.Lbinop_α_718_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_718_240
                        add              rsp, 16;                             jmp   n270_lit_integer_β
.Lbinop_α_718_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n272_subscript_α
n271_binop_β:           mov              r11, 185
                        add              rsp, 16;                             jmp   n270_lit_integer_β
                        .size            n271_binop_bx, .-n271_binop_bx
                        .type            n272_subscript_bx, @function
n272_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_subscript_α:       sub              rsp, 16
                        mov              r11, 186
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_719_240
                        add              rsp, 16;                             jmp   n271_binop_β
.Lsubscript_α_719_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n273_deref_α
n272_subscript_β:       mov              r11, 186
                        add              rsp, 16;                             jmp   n271_binop_β
                        .size            n272_subscript_bx, .-n272_subscript_bx
                        .type            n273_deref_bx, @function
n273_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_deref_α:           sub              rsp, 16
                        mov              r11, 187
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_720_240
                        add              rsp, 16;                             jmp   n272_subscript_β
.Lderef_α_720_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n274_call_α
n273_deref_β:           mov              r11, 187
                        add              rsp, 16;                             jmp   n272_subscript_β
                        .size            n273_deref_bx, .-n273_deref_bx
                        .type            n274_call_bx, @function
n274_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_call_α:            sub              rsp, 16
                        mov              r11, 188
                        lea              rcx, [rip + .Lcall_α_sig722z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig722z:       .quad            1
                        .quad            .Lcall_α_722_2
                        .quad            .Lcall_α_722_2
                        .quad            16
.Lcall_α_722_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_722_29
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
.Lcall_α_722_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_722_240
                        add              rsp, 16;                             jmp   n273_deref_β
.Lcall_α_722_240:                                                             jmp   n275_binop_α
n274_call_β:            mov              r11, 188;                            jmp   n273_deref_β
.Lcall_β_722_0:         .quad            .Lcall_β_722_0_s
.Lcall_β_722_0_s:       .string          "DRF"
                        .size            n274_call_bx, .-n274_call_bx
                        .type            n275_binop_bx, @function
n275_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_binop_α:           sub              rsp, 16
                        mov              r11, 189
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_723_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_723_7
.Lbinop_α_723_2:        and              edx, 1;                              jz    .Lbinop_α_723_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_723_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_723_4
.Lbinop_α_723_3:        movq             xmm0, rsi
.Lbinop_α_723_4:        cmp              cl, 5;                               je    .Lbinop_α_723_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_723_6
.Lbinop_α_723_5:        movq             xmm1, rdi
.Lbinop_α_723_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_723_7:                                                              jmp   n276_assign_var_α
.Lbinop_α_723_0:        mov              rdi, qword ptr [rsp + 128]           # call
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_723_240
                        add              rsp, 32;                             jmp   n273_deref_β
.Lbinop_α_723_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n276_assign_var_α
n275_binop_β:           mov              r11, 189
                        add              rsp, 32;                             jmp   n273_deref_β
                        .size            n275_binop_bx, .-n275_binop_bx
                        .type            n276_assign_var_bx, @function
n276_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_assign_var_α:      sub              rsp, 16
                        mov              r11, 190
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lassign_var_α_725_0
                        test             rsi, rsi;                            je    .Lassign_var_α_725_0
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_725_238
                        add              rsp, 16;                             jmp   n275_binop_β
.Lassign_var_α_725_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n277_statement_end_α
.Lassign_var_α_725_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_725_239
                        add              rsp, 16;                             jmp   n275_binop_β
.Lassign_var_α_725_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_725_240
                        add              rsp, 16;                             jmp   n275_binop_β
.Lassign_var_α_725_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n277_statement_end_α
                        .size            n276_assign_var_bx, .-n276_assign_var_bx
                        .type            n277_statement_end_bx, @function
n277_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_statement_end_α:   mov              r11, 191
                        mov              r10, 20
                        add              rsp, 288;                            jmp   n278_statement_begin_α
                        .size            n277_statement_end_bx, .-n277_statement_end_bx
                        .type            n278_statement_begin_bx, @function
n278_statement_begin_bx:
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 48 0
n278_statement_begin_α: mov              r11, 192
                        mov              r10, 21;                             jmp   n279_lit_name_α
n278_statement_begin_β: mov              r11, 192;                            jmp   NRETURN
                        .size            n278_statement_begin_bx, .-n278_statement_begin_bx
                        .type            n279_lit_name_bx, @function
n279_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_name_α:        sub              rsp, 16
                        mov              r11, 193
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_730_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n280_assign_α
.Llit_name_α_730_0:     .quad            .Llit_name_α_730_0_s
.Llit_name_α_730_0_s:   .string          "dm"
                        .size            n279_lit_name_bx, .-n279_lit_name_bx
                        .type            n280_assign_bx, @function
n280_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_assign_α:          mov              r11, 194
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # MUL
                        mov              qword ptr [r9 + 104], rdx;           jmp   n281_statement_end_α
                        .size            n280_assign_bx, .-n280_assign_bx
                        .type            n281_statement_end_bx, @function
n281_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_statement_end_α:   mov              r11, 195
                        mov              r10, 21
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n281_statement_end_bx, .-n281_statement_end_bx
                        .type            n282_statement_begin_bx, @function
n282_statement_begin_bx:
#=======================================================================================================================
# DIV     S[sp = sp - 1] = DRF(S[sp]) / DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 49 0
n282_statement_begin_α: mov              r11, 196
                        mov              r10, 22;                             jmp   n283_var_α
n282_statement_begin_β: mov              r11, 196;                            jmp   n303_statement_begin_α
                        .size            n282_statement_begin_bx, .-n282_statement_begin_bx
                        .type            n283_var_bx, @function
n283_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:             sub              rsp, 16
                        mov              r11, 197
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n284_var_α
                        .size            n283_var_bx, .-n283_var_bx
                        .type            n284_var_bx, @function
n284_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:             sub              rsp, 16
                        mov              r11, 198
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n285_lit_integer_α
n284_var_β:             mov              r11, 198
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n282_statement_begin_β
                        .size            n284_var_bx, .-n284_var_bx
                        .type            n285_lit_integer_bx, @function
n285_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_integer_α:     sub              rsp, 16
                        mov              r11, 199
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_738_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n286_binop_α
n285_lit_integer_β:     mov              r11, 199
                        add              rsp, 16;                             jmp   n284_var_β
.Llit_integer_α_738_0:  .quad            1
                        .size            n285_lit_integer_bx, .-n285_lit_integer_bx
                        .type            n286_binop_bx, @function
n286_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_binop_α:           sub              rsp, 16
                        mov              r11, 200
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_739_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_739_7
.Lbinop_α_739_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_739_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_739_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_739_4
.Lbinop_α_739_3:        movq             xmm0, rsi
.Lbinop_α_739_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_739_7:                                                              jmp   n287_assign_α
.Lbinop_α_739_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_739_240
                        add              rsp, 16;                             jmp   n285_lit_integer_β
.Lbinop_α_739_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n287_assign_α
n286_binop_β:           mov              r11, 200
                        add              rsp, 16;                             jmp   n285_lit_integer_β
                        .size            n286_binop_bx, .-n286_binop_bx
                        .type            n287_assign_bx, @function
n287_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_assign_α:          mov              r11, 201
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n288_var_α
                        .size            n287_assign_bx, .-n287_assign_bx
                        .type            n288_var_bx, @function
n288_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:             sub              rsp, 16
                        mov              r11, 202
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n289_var_α
n288_var_β:             mov              r11, 202
                        add              rsp, 16;                             jmp   n286_binop_β
                        .size            n288_var_bx, .-n288_var_bx
                        .type            n289_var_bx, @function
n289_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_var_α:             sub              rsp, 16
                        mov              r11, 203
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n290_subscript_α
n289_var_β:             mov              r11, 203
                        add              rsp, 16;                             jmp   n288_var_β
                        .size            n289_var_bx, .-n289_var_bx
                        .type            n290_subscript_bx, @function
n290_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_subscript_α:       sub              rsp, 16
                        mov              r11, 204
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_743_240
                        add              rsp, 16;                             jmp   n289_var_β
.Lsubscript_α_743_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n291_deref_α
n290_subscript_β:       mov              r11, 204
                        add              rsp, 16;                             jmp   n289_var_β
                        .size            n290_subscript_bx, .-n290_subscript_bx
                        .type            n291_deref_bx, @function
n291_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_deref_α:           sub              rsp, 16
                        mov              r11, 205
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_744_240
                        add              rsp, 16;                             jmp   n290_subscript_β
.Lderef_α_744_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n292_call_α
n291_deref_β:           mov              r11, 205
                        add              rsp, 16;                             jmp   n290_subscript_β
                        .size            n291_deref_bx, .-n291_deref_bx
                        .type            n292_call_bx, @function
n292_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_call_α:            sub              rsp, 16
                        mov              r11, 206
                        lea              rcx, [rip + .Lcall_α_sig746z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig746z:       .quad            1
                        .quad            .Lcall_α_746_2
                        .quad            .Lcall_α_746_2
                        .quad            16
.Lcall_α_746_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_746_29
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
.Lcall_α_746_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_746_240
                        add              rsp, 16;                             jmp   n291_deref_β
.Lcall_α_746_240:                                                             jmp   n293_var_α
n292_call_β:            mov              r11, 206;                            jmp   n291_deref_β
.Lcall_β_746_0:         .quad            .Lcall_β_746_0_s
.Lcall_β_746_0_s:       .string          "DRF"
                        .size            n292_call_bx, .-n292_call_bx
                        .type            n293_var_bx, @function
n293_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_var_α:             sub              rsp, 16
                        mov              r11, 207
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n294_var_α
n293_var_β:             mov              r11, 207
                        add              rsp, 32;                             jmp   n291_deref_β
                        .size            n293_var_bx, .-n293_var_bx
                        .type            n294_var_bx, @function
n294_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:             sub              rsp, 16
                        mov              r11, 208
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_lit_integer_α
n294_var_β:             mov              r11, 208
                        add              rsp, 16;                             jmp   n293_var_β
                        .size            n294_var_bx, .-n294_var_bx
                        .type            n295_lit_integer_bx, @function
n295_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_integer_α:     sub              rsp, 16
                        mov              r11, 209
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_749_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n296_binop_α
n295_lit_integer_β:     mov              r11, 209
                        add              rsp, 16;                             jmp   n294_var_β
.Llit_integer_α_749_0:  .quad            1
                        .size            n295_lit_integer_bx, .-n295_lit_integer_bx
                        .type            n296_binop_bx, @function
n296_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_binop_α:           sub              rsp, 16
                        mov              r11, 210
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_750_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_750_7
.Lbinop_α_750_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_750_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_750_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_750_4
.Lbinop_α_750_3:        movq             xmm0, rsi
.Lbinop_α_750_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_750_7:                                                              jmp   n297_subscript_α
.Lbinop_α_750_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_750_240
                        add              rsp, 16;                             jmp   n295_lit_integer_β
.Lbinop_α_750_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n297_subscript_α
n296_binop_β:           mov              r11, 210
                        add              rsp, 16;                             jmp   n295_lit_integer_β
                        .size            n296_binop_bx, .-n296_binop_bx
                        .type            n297_subscript_bx, @function
n297_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_subscript_α:       sub              rsp, 16
                        mov              r11, 211
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_751_240
                        add              rsp, 16;                             jmp   n296_binop_β
.Lsubscript_α_751_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n298_deref_α
n297_subscript_β:       mov              r11, 211
                        add              rsp, 16;                             jmp   n296_binop_β
                        .size            n297_subscript_bx, .-n297_subscript_bx
                        .type            n298_deref_bx, @function
n298_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_deref_α:           sub              rsp, 16
                        mov              r11, 212
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_752_240
                        add              rsp, 16;                             jmp   n297_subscript_β
.Lderef_α_752_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n299_call_α
n298_deref_β:           mov              r11, 212
                        add              rsp, 16;                             jmp   n297_subscript_β
                        .size            n298_deref_bx, .-n298_deref_bx
                        .type            n299_call_bx, @function
n299_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_call_α:            sub              rsp, 16
                        mov              r11, 213
                        lea              rcx, [rip + .Lcall_α_sig754z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig754z:       .quad            1
                        .quad            .Lcall_α_754_2
                        .quad            .Lcall_α_754_2
                        .quad            16
.Lcall_α_754_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_754_29
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
.Lcall_α_754_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_754_240
                        add              rsp, 16;                             jmp   n298_deref_β
.Lcall_α_754_240:                                                             jmp   n300_binop_α
n299_call_β:            mov              r11, 213;                            jmp   n298_deref_β
.Lcall_β_754_0:         .quad            .Lcall_β_754_0_s
.Lcall_β_754_0_s:       .string          "DRF"
                        .size            n299_call_bx, .-n299_call_bx
                        .type            n300_binop_bx, @function
n300_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_binop_α:           sub              rsp, 16
                        mov              r11, 214
                        mov              rdi, qword ptr [rsp + 128]           # call
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_755_240
                        add              rsp, 32;                             jmp   n298_deref_β
.Lbinop_α_755_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n301_assign_var_α
n300_binop_β:           mov              r11, 214
                        add              rsp, 32;                             jmp   n298_deref_β
                        .size            n300_binop_bx, .-n300_binop_bx
                        .type            n301_assign_var_bx, @function
n301_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_assign_var_α:      sub              rsp, 16
                        mov              r11, 215
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lassign_var_α_757_0
                        test             rsi, rsi;                            je    .Lassign_var_α_757_0
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_757_238
                        add              rsp, 16;                             jmp   n300_binop_β
.Lassign_var_α_757_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n302_statement_end_α
.Lassign_var_α_757_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_757_239
                        add              rsp, 16;                             jmp   n300_binop_β
.Lassign_var_α_757_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_757_240
                        add              rsp, 16;                             jmp   n300_binop_β
.Lassign_var_α_757_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n302_statement_end_α
                        .size            n301_assign_var_bx, .-n301_assign_var_bx
                        .type            n302_statement_end_bx, @function
n302_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_statement_end_α:   mov              r11, 216
                        mov              r10, 22
                        add              rsp, 288;                            jmp   n303_statement_begin_α
                        .size            n302_statement_end_bx, .-n302_statement_end_bx
                        .type            n303_statement_begin_bx, @function
n303_statement_begin_bx:
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 50 0
n303_statement_begin_α: mov              r11, 217
                        mov              r10, 23;                             jmp   n304_lit_name_α
n303_statement_begin_β: mov              r11, 217;                            jmp   NRETURN
                        .size            n303_statement_begin_bx, .-n303_statement_begin_bx
                        .type            n304_lit_name_bx, @function
n304_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_name_α:        sub              rsp, 16
                        mov              r11, 218
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_762_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n305_assign_α
.Llit_name_α_762_0:     .quad            .Llit_name_α_762_0_s
.Llit_name_α_762_0_s:   .string          "dm"
                        .size            n304_lit_name_bx, .-n304_lit_name_bx
                        .type            n305_assign_bx, @function
n305_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_assign_α:          mov              r11, 219
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # DIV
                        mov              qword ptr [r9 + 120], rdx;           jmp   n306_statement_end_α
                        .size            n305_assign_bx, .-n305_assign_bx
                        .type            n306_statement_end_bx, @function
n306_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_statement_end_α:   mov              r11, 220
                        mov              r10, 23
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n306_statement_end_bx, .-n306_statement_end_bx
                        .type            n307_statement_begin_bx, @function
n307_statement_begin_bx:
#=======================================================================================================================
# SGN     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 51 0
n307_statement_begin_α: mov              r11, 221
                        mov              r10, 24;                             jmp   n308_var_α
n307_statement_begin_β: mov              r11, 221;                            jmp   n315_statement_begin_α
                        .size            n307_statement_begin_bx, .-n307_statement_begin_bx
                        .type            n308_var_bx, @function
n308_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:             sub              rsp, 16
                        mov              r11, 222
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n309_var_α
                        .size            n308_var_bx, .-n308_var_bx
                        .type            n309_var_bx, @function
n309_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:             sub              rsp, 16
                        mov              r11, 223
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n310_subscript_α
n309_var_β:             mov              r11, 223
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n307_statement_begin_β
                        .size            n309_var_bx, .-n309_var_bx
                        .type            n310_subscript_bx, @function
n310_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_subscript_α:       sub              rsp, 16
                        mov              r11, 224
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_770_240
                        add              rsp, 16;                             jmp   n309_var_β
.Lsubscript_α_770_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n311_deref_α
n310_subscript_β:       mov              r11, 224
                        add              rsp, 16;                             jmp   n309_var_β
                        .size            n310_subscript_bx, .-n310_subscript_bx
                        .type            n311_deref_bx, @function
n311_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_deref_α:           sub              rsp, 16
                        mov              r11, 225
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_771_240
                        add              rsp, 16;                             jmp   n310_subscript_β
.Lderef_α_771_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n312_call_α
n311_deref_β:           mov              r11, 225
                        add              rsp, 16;                             jmp   n310_subscript_β
                        .size            n311_deref_bx, .-n311_deref_bx
                        .type            n312_call_bx, @function
n312_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_call_α:            sub              rsp, 16
                        mov              r11, 226
                        lea              rcx, [rip + .Lcall_α_sig773z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig773z:       .quad            1
                        .quad            .Lcall_α_773_2
                        .quad            .Lcall_α_773_2
                        .quad            16
.Lcall_α_773_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_773_29
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
.Lcall_α_773_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_773_240
                        add              rsp, 16;                             jmp   n311_deref_β
.Lcall_α_773_240:                                                             jmp   n313_assign_α
n312_call_β:            mov              r11, 226;                            jmp   n311_deref_β
.Lcall_β_773_0:         .quad            .Lcall_β_773_0_s
.Lcall_β_773_0_s:       .string          "DRF"
                        .size            n312_call_bx, .-n312_call_bx
                        .type            n313_assign_bx, @function
n313_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_assign_α:          mov              r11, 227
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # p1
                        mov              qword ptr [r9 + 152], rdx;           jmp   n314_statement_end_α
                        .size            n313_assign_bx, .-n313_assign_bx
                        .type            n314_statement_end_bx, @function
n314_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_statement_end_α:   mov              r11, 228
                        mov              r10, 24
                        add              rsp, 80;                             jmp   n315_statement_begin_α
                        .size            n314_statement_end_bx, .-n314_statement_end_bx
                        .type            n315_statement_begin_bx, @function
n315_statement_begin_bx:
#=======================================================================================================================
#         p1 = IDENT(S[sp = sp - 1], '-') -p1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 52 0
n315_statement_begin_α: mov              r11, 229
                        mov              r10, 25;                             jmp   n316_var_α
n315_statement_begin_β: mov              r11, 229;                            jmp   n329_statement_begin_α
                        .size            n315_statement_begin_bx, .-n315_statement_begin_bx
                        .type            n316_var_bx, @function
n316_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_var_α:             sub              rsp, 16
                        mov              r11, 230
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n317_var_α
                        .size            n316_var_bx, .-n316_var_bx
                        .type            n317_var_bx, @function
n317_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_var_α:             sub              rsp, 16
                        mov              r11, 231
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n318_lit_integer_α
n317_var_β:             mov              r11, 231
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n315_statement_begin_β
                        .size            n317_var_bx, .-n317_var_bx
                        .type            n318_lit_integer_bx, @function
n318_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_integer_α:     sub              rsp, 16
                        mov              r11, 232
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_781_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n319_binop_α
n318_lit_integer_β:     mov              r11, 232
                        add              rsp, 16;                             jmp   n317_var_β
.Llit_integer_α_781_0:  .quad            1
                        .size            n318_lit_integer_bx, .-n318_lit_integer_bx
                        .type            n319_binop_bx, @function
n319_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_binop_α:           sub              rsp, 16
                        mov              r11, 233
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_782_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_782_7
.Lbinop_α_782_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_782_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_782_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_782_4
.Lbinop_α_782_3:        movq             xmm0, rsi
.Lbinop_α_782_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_782_7:                                                              jmp   n320_assign_α
.Lbinop_α_782_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_782_240
                        add              rsp, 16;                             jmp   n318_lit_integer_β
.Lbinop_α_782_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n320_assign_α
n319_binop_β:           mov              r11, 233
                        add              rsp, 16;                             jmp   n318_lit_integer_β
                        .size            n319_binop_bx, .-n319_binop_bx
                        .type            n320_assign_bx, @function
n320_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_assign_α:          mov              r11, 234
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n321_subscript_α
                        .size            n320_assign_bx, .-n320_assign_bx
                        .type            n321_subscript_bx, @function
n321_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_subscript_α:       sub              rsp, 16
                        mov              r11, 235
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # assign
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_784_240
                        add              rsp, 16;                             jmp   n319_binop_β
.Lsubscript_α_784_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n322_deref_α
n321_subscript_β:       mov              r11, 235
                        add              rsp, 16;                             jmp   n319_binop_β
                        .size            n321_subscript_bx, .-n321_subscript_bx
                        .type            n322_deref_bx, @function
n322_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_deref_α:           sub              rsp, 16
                        mov              r11, 236
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_785_240
                        add              rsp, 16;                             jmp   n321_subscript_β
.Lderef_α_785_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n323_lit_string_α
n322_deref_β:           mov              r11, 236
                        add              rsp, 16;                             jmp   n321_subscript_β
                        .size            n322_deref_bx, .-n322_deref_bx
                        .type            n323_lit_string_bx, @function
n323_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:      sub              rsp, 16
                        mov              r11, 237
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_786_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n324_ident_α
n323_lit_string_β:      mov              r11, 237
                        add              rsp, 16;                             jmp   n322_deref_β
.Llit_string_α_786_0:   .quad            .Llit_string_α_786_0_s
.Llit_string_α_786_0_s: .string          "-"
                        .size            n323_lit_string_bx, .-n323_lit_string_bx
                        .type            n324_ident_bx, @function
n324_ident_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_ident_α:           sub              rsp, 16
                        mov              r11, 238
                        mov              rdi, qword ptr [rsp + 32]            # deref
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
                        test             eax, eax;                            jne   .Lident_α_788_240
                        add              rsp, 16;                             jmp   n323_lit_string_β
.Lident_α_788_240:                                                            jmp   n325_var_α
n324_ident_β:           mov              r11, 238
                        add              rsp, 16;                             jmp   n323_lit_string_β
                        .size            n324_ident_bx, .-n324_ident_bx
                        .type            n325_var_bx, @function
n325_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_var_α:             sub              rsp, 16
                        mov              r11, 239
                        mov              rax, qword ptr [r9 + 144]            # p1
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n326_unop_α
n325_var_β:             mov              r11, 239
                        add              rsp, 16;                             jmp   n324_ident_β
                        .size            n325_var_bx, .-n325_var_bx
                        .type            n326_unop_bx, @function
n326_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_unop_α:            sub              rsp, 16
                        mov              r11, 240
                        mov              rdi, qword ptr [rsp + 16]            # var
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n327_assign_α
                        .size            n326_unop_bx, .-n326_unop_bx
                        .type            n327_assign_bx, @function
n327_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_assign_α:          mov              r11, 241
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # p1
                        mov              qword ptr [r9 + 152], rdx;           jmp   n328_statement_end_α
                        .size            n327_assign_bx, .-n327_assign_bx
                        .type            n328_statement_end_bx, @function
n328_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_statement_end_α:   mov              r11, 242
                        mov              r10, 25
                        add              rsp, 160;                            jmp   n329_statement_begin_α
                        .size            n328_statement_end_bx, .-n328_statement_end_bx
                        .type            n329_statement_begin_bx, @function
n329_statement_begin_bx:
#=======================================================================================================================
#         S[sp] = p1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 53 0
n329_statement_begin_α: mov              r11, 243
                        mov              r10, 26;                             jmp   n330_var_α
n329_statement_begin_β: mov              r11, 243;                            jmp   n335_statement_begin_α
                        .size            n329_statement_begin_bx, .-n329_statement_begin_bx
                        .type            n330_var_bx, @function
n330_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:             sub              rsp, 16
                        mov              r11, 244
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n331_var_α
                        .size            n330_var_bx, .-n330_var_bx
                        .type            n331_var_bx, @function
n331_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:             sub              rsp, 16
                        mov              r11, 245
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n332_var_α
n331_var_β:             mov              r11, 245
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n329_statement_begin_β
                        .size            n331_var_bx, .-n331_var_bx
                        .type            n332_var_bx, @function
n332_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_var_α:             sub              rsp, 16
                        mov              r11, 246
                        mov              rax, qword ptr [r9 + 144]            # p1
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n333_assign_var_α
n332_var_β:             mov              r11, 246
                        add              rsp, 16;                             jmp   n331_var_β
                        .size            n332_var_bx, .-n332_var_bx
                        .type            n333_assign_var_bx, @function
n333_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_assign_var_α:      sub              rsp, 16
                        mov              r11, 247
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_800_0
                        test             rsi, rsi;                            je    .Lassign_var_α_800_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_800_238
                        add              rsp, 16;                             jmp   n332_var_β
.Lassign_var_α_800_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n334_statement_end_α
.Lassign_var_α_800_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_800_239
                        add              rsp, 16;                             jmp   n332_var_β
.Lassign_var_α_800_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_800_240
                        add              rsp, 16;                             jmp   n332_var_β
.Lassign_var_α_800_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n334_statement_end_α
                        .size            n333_assign_var_bx, .-n333_assign_var_bx
                        .type            n334_statement_end_bx, @function
n334_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_statement_end_α:   mov              r11, 248
                        mov              r10, 26
                        add              rsp, 64;                             jmp   n335_statement_begin_α
                        .size            n334_statement_end_bx, .-n334_statement_end_bx
                        .type            n335_statement_begin_bx, @function
n335_statement_begin_bx:
#=======================================================================================================================
#         SGN = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 54 0
n335_statement_begin_α: mov              r11, 249
                        mov              r10, 27;                             jmp   n336_lit_name_α
n335_statement_begin_β: mov              r11, 249;                            jmp   NRETURN
                        .size            n335_statement_begin_bx, .-n335_statement_begin_bx
                        .type            n336_lit_name_bx, @function
n336_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_name_α:        sub              rsp, 16
                        mov              r11, 250
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_805_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n337_assign_α
.Llit_name_α_805_0:     .quad            .Llit_name_α_805_0_s
.Llit_name_α_805_0_s:   .string          "dm"
                        .size            n336_lit_name_bx, .-n336_lit_name_bx
                        .type            n337_assign_bx, @function
n337_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_assign_α:          mov              r11, 251
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # SGN
                        mov              qword ptr [r9 + 136], rdx;           jmp   n338_statement_end_α
                        .size            n337_assign_bx, .-n337_assign_bx
                        .type            n338_statement_end_bx, @function
n338_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_statement_end_α:   mov              r11, 252
                        mov              r10, 27
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n338_statement_end_bx, .-n338_statement_end_bx
                        .type            n339_statement_begin_bx, @function
n339_statement_begin_bx:
#=======================================================================================================================
# FNS_end
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 55 0
n339_statement_begin_α: mov              r11, 253
                        mov              r10, 28;                             jmp   n340_statement_end_α
n339_statement_begin_β: mov              r11, 253;                            jmp   n341_statement_begin_α
                        .size            n339_statement_begin_bx, .-n339_statement_begin_bx
                        .type            n340_statement_end_bx, @function
n340_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_statement_end_α:   mov              r11, 254
                        mov              r10, 28;                             jmp   n341_statement_begin_α
                        .size            n340_statement_end_bx, .-n340_statement_end_bx
                        .type            n341_statement_begin_bx, @function
n341_statement_begin_bx:
#=======================================================================================================================
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 57 0
n341_statement_begin_α: mov              r11, 255
                        mov              r10, 29;                             jmp   n342_lit_integer_α
n341_statement_begin_β: mov              r11, 255;                            jmp   n346_statement_begin_α
                        .size            n341_statement_begin_bx, .-n341_statement_begin_bx
                        .type            n342_lit_integer_bx, @function
n342_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_integer_α:     sub              rsp, 16
                        mov              r11, 256
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_815_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n343_call_α
.Llit_integer_α_815_0:  .quad            65536
                        .size            n342_lit_integer_bx, .-n342_lit_integer_bx
                        .type            n343_call_bx, @function
n343_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_call_α:            sub              rsp, 16
                        mov              r11, 257
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd817:     .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd817]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 327696
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_816_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n341_statement_begin_β
.Lcall_α_816_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n344_assign_α
n343_call_β:            mov              r11, 257
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n341_statement_begin_β
                        .size            n343_call_bx, .-n343_call_bx
                        .type            n344_assign_bx, @function
n344_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_assign_α:          mov              r11, 258
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # S
                        mov              qword ptr [r9 + 168], rdx;           jmp   n345_statement_end_α
                        .size            n344_assign_bx, .-n344_assign_bx
                        .type            n345_statement_end_bx, @function
n345_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_statement_end_α:   mov              r11, 259
                        mov              r10, 29
                        add              rsp, 32;                             jmp   n346_statement_begin_α
                        .size            n345_statement_end_bx, .-n345_statement_end_bx
                        .type            n346_statement_begin_bx, @function
n346_statement_begin_bx:
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 58 0
n346_statement_begin_α: mov              r11, 260
                        mov              r10, 30;                             jmp   n347_kw_snobol4_α
n346_statement_begin_β: mov              r11, 260;                            jmp   n350_statement_begin_α
                        .size            n346_statement_begin_bx, .-n346_statement_begin_bx
                        .type            n347_kw_snobol4_bx, @function
n347_kw_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_kw_snobol4_α:      sub              rsp, 16
                        mov              r11, 261
                        mov              rdi, qword ptr [rip + .Lkw_snobol4_α_823_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n348_assign_α
.Lkw_snobol4_α_823_0:   .quad            26
                        .size            n347_kw_snobol4_bx, .-n347_kw_snobol4_bx
                        .type            n348_assign_bx, @function
n348_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_assign_α:          mov              r11, 262
                        mov              rax, qword ptr [rsp + 0]             # kw_snobol4
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # LCASE
                        mov              qword ptr [r9 + 232], rdx;           jmp   n349_statement_end_α
                        .size            n348_assign_bx, .-n348_assign_bx
                        .type            n349_statement_end_bx, @function
n349_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_statement_end_α:   mov              r11, 263
                        mov              r10, 30
                        add              rsp, 16;                             jmp   n350_statement_begin_α
                        .size            n349_statement_end_bx, .-n349_statement_end_bx
                        .type            n350_statement_begin_bx, @function
n350_statement_begin_bx:
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 59 0
n350_statement_begin_α: mov              r11, 264
                        mov              r10, 31;                             jmp   n351_lit_string_α
n350_statement_begin_β: mov              r11, 264;                            jmp   n354_statement_begin_α
                        .size            n350_statement_begin_bx, .-n350_statement_begin_bx
                        .type            n351_lit_string_bx, @function
n351_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_string_α:      sub              rsp, 16
                        mov              r11, 265
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_829_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n352_assign_α
.Llit_string_α_829_0:   .quad            .Llit_string_α_829_0_s
.Llit_string_α_829_0_s: .string          "0123456789"
                        .size            n351_lit_string_bx, .-n351_lit_string_bx
                        .type            n352_assign_bx, @function
n352_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_assign_α:          mov              r11, 266
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # DIGITS
                        mov              qword ptr [r9 + 248], rdx;           jmp   n353_statement_end_α
                        .size            n352_assign_bx, .-n352_assign_bx
                        .type            n353_statement_end_bx, @function
n353_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_statement_end_α:   mov              r11, 267
                        mov              r10, 31
                        add              rsp, 16;                             jmp   n354_statement_begin_α
                        .size            n353_statement_end_bx, .-n353_statement_end_bx
                        .type            n354_statement_begin_bx, @function
n354_statement_begin_bx:
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 60 0
n354_statement_begin_α: mov              r11, 268
                        mov              r10, 32;                             jmp   n355_lit_string_α
n354_statement_begin_β: mov              r11, 268;                            jmp   n359_statement_begin_α
                        .size            n354_statement_begin_bx, .-n354_statement_begin_bx
                        .type            n355_lit_string_bx, @function
n355_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_string_α:      sub              rsp, 16
                        mov              r11, 269
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_835_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n356_call_α
.Llit_string_α_835_0:   .quad            .Llit_string_α_835_0_s
.Llit_string_α_835_0_s: .string          "PAT$0"
                        .size            n355_lit_string_bx, .-n355_lit_string_bx
                        .type            n356_call_bx, @function
n356_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_call_α:            sub              rsp, 16
                        mov              r11, 270
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd837:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd837]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 589876
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_836_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n354_statement_begin_β
.Lcall_α_836_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n357_assign_α
n356_call_β:            mov              r11, 270
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n354_statement_begin_β
                        .size            n356_call_bx, .-n356_call_bx
                        .type            n357_assign_bx, @function
n357_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_assign_α:          mov              r11, 271
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # V
                        mov              qword ptr [r9 + 264], rdx;           jmp   n358_statement_end_α
                        .size            n357_assign_bx, .-n357_assign_bx
                        .type            n358_statement_end_bx, @function
n358_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_statement_end_α:   mov              r11, 272
                        mov              r10, 32
                        add              rsp, 32;                             jmp   n359_statement_begin_α
                        .size            n358_statement_end_bx, .-n358_statement_end_bx
                        .type            n359_statement_begin_bx, @function
n359_statement_begin_bx:
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 61 0
n359_statement_begin_α: mov              r11, 273
                        mov              r10, 33;                             jmp   n360_lit_string_α
n359_statement_begin_β: mov              r11, 273;                            jmp   n364_statement_begin_α
                        .size            n359_statement_begin_bx, .-n359_statement_begin_bx
                        .type            n360_lit_string_bx, @function
n360_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_string_α:      sub              rsp, 16
                        mov              r11, 274
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_843_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n361_call_α
.Llit_string_α_843_0:   .quad            .Llit_string_α_843_0_s
.Llit_string_α_843_0_s: .string          "PAT$1"
                        .size            n360_lit_string_bx, .-n360_lit_string_bx
                        .type            n361_call_bx, @function
n361_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_call_α:            sub              rsp, 16
                        mov              r11, 275
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd845:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd845]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 589876
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_844_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n359_statement_begin_β
.Lcall_α_844_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n362_assign_α
n361_call_β:            mov              r11, 275
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n359_statement_begin_β
                        .size            n361_call_bx, .-n361_call_bx
                        .type            n362_assign_bx, @function
n362_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_assign_α:          mov              r11, 276
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # I
                        mov              qword ptr [r9 + 280], rdx;           jmp   n363_statement_end_α
                        .size            n362_assign_bx, .-n362_assign_bx
                        .type            n363_statement_end_bx, @function
n363_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_statement_end_α:   mov              r11, 277
                        mov              r10, 33
                        add              rsp, 32;                             jmp   n364_statement_begin_α
                        .size            n363_statement_end_bx, .-n363_statement_end_bx
                        .type            n364_statement_begin_bx, @function
n364_statement_begin_bx:
#=======================================================================================================================
#         A = FENCE(V | I | '(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 62 0
n364_statement_begin_α: mov              r11, 278
                        mov              r10, 34;                             jmp   n365_var_α
n364_statement_begin_β: mov              r11, 278;                            jmp   n374_statement_begin_α
                        .size            n364_statement_begin_bx, .-n364_statement_begin_bx
                        .type            n365_var_bx, @function
n365_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_var_α:             sub              rsp, 16
                        mov              r11, 279
                        mov              rax, qword ptr [r9 + 256]            # V
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n366_assign_α
                        .size            n365_var_bx, .-n365_var_bx
                        .type            n366_assign_bx, @function
n366_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_assign_α:          mov              r11, 280
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax            # PAT$2$V0
                        mov              qword ptr [r9 + 456], rdx;           jmp   n367_var_α
                        .size            n366_assign_bx, .-n366_assign_bx
                        .type            n367_var_bx, @function
n367_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:             sub              rsp, 16
                        mov              r11, 281
                        mov              rax, qword ptr [r9 + 272]            # I
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n368_assign_α
n367_var_β:             mov              r11, 281
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n364_statement_begin_β
                        .size            n367_var_bx, .-n367_var_bx
                        .type            n368_assign_bx, @function
n368_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_assign_α:          mov              r11, 282
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax            # PAT$2$V1
                        mov              qword ptr [r9 + 472], rdx;           jmp   n369_lit_string_α
                        .size            n368_assign_bx, .-n368_assign_bx
                        .type            n369_lit_string_bx, @function
n369_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:      sub              rsp, 16
                        mov              r11, 283
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_855_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n370_lit_string_α
n369_lit_string_β:      mov              r11, 283
                        add              rsp, 16;                             jmp   n367_var_β
.Llit_string_α_855_0:   .quad            .Llit_string_α_855_0_s
.Llit_string_α_855_0_s: .string          "PAT$2"
                        .size            n369_lit_string_bx, .-n369_lit_string_bx
                        .type            n370_lit_string_bx, @function
n370_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:      sub              rsp, 16
                        mov              r11, 284
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_856_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n371_call_α
n370_lit_string_β:      mov              r11, 284
                        add              rsp, 16;                             jmp   n369_lit_string_β
.Llit_string_α_856_0:   .quad            .Llit_string_α_856_0_s
.Llit_string_α_856_0_s: .string          "2"
                        .size            n370_lit_string_bx, .-n370_lit_string_bx
                        .type            n371_call_bx, @function
n371_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_call_α:            sub              rsp, 16
                        mov              r11, 285
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
.Lcall_α_rkfnzd858:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd858]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 589876
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_857_240
                        add              rsp, 16;                             jmp   n370_lit_string_β
.Lcall_α_857_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n372_assign_α
n371_call_β:            mov              r11, 285
                        add              rsp, 16;                             jmp   n370_lit_string_β
                        .size            n371_call_bx, .-n371_call_bx
                        .type            n372_assign_bx, @function
n372_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_assign_α:          mov              r11, 286
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # A
                        mov              qword ptr [r9 + 296], rdx;           jmp   n373_statement_end_α
                        .size            n372_assign_bx, .-n372_assign_bx
                        .type            n373_statement_end_bx, @function
n373_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_statement_end_α:   mov              r11, 287
                        mov              r10, 34
                        add              rsp, 80;                             jmp   n374_statement_begin_α
                        .size            n373_statement_end_bx, .-n373_statement_end_bx
                        .type            n374_statement_begin_bx, @function
n374_statement_begin_bx:
#=======================================================================================================================
#         F = FENCE(A | ANY('+-') . *PSH() *F . *SGN())
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 63 0
n374_statement_begin_α: mov              r11, 288
                        mov              r10, 35;                             jmp   n375_var_α
n374_statement_begin_β: mov              r11, 288;                            jmp   n382_statement_begin_α
                        .size            n374_statement_begin_bx, .-n374_statement_begin_bx
                        .type            n375_var_bx, @function
n375_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_var_α:             sub              rsp, 16
                        mov              r11, 289
                        mov              rax, qword ptr [r9 + 288]            # A
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n376_assign_α
                        .size            n375_var_bx, .-n375_var_bx
                        .type            n376_assign_bx, @function
n376_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_assign_α:          mov              r11, 290
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 488], rdx;           jmp   n377_lit_string_α
                        .size            n376_assign_bx, .-n376_assign_bx
                        .type            n377_lit_string_bx, @function
n377_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:      sub              rsp, 16
                        mov              r11, 291
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_866_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n378_lit_string_α
n377_lit_string_β:      mov              r11, 291
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n374_statement_begin_β
.Llit_string_α_866_0:   .quad            .Llit_string_α_866_0_s
.Llit_string_α_866_0_s: .string          "PAT$3"
                        .size            n377_lit_string_bx, .-n377_lit_string_bx
                        .type            n378_lit_string_bx, @function
n378_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:      sub              rsp, 16
                        mov              r11, 292
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_867_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n379_call_α
n378_lit_string_β:      mov              r11, 292
                        add              rsp, 16;                             jmp   n377_lit_string_β
.Llit_string_α_867_0:   .quad            .Llit_string_α_867_0_s
.Llit_string_α_867_0_s: .string          "1"
                        .size            n378_lit_string_bx, .-n378_lit_string_bx
                        .type            n379_call_bx, @function
n379_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_call_α:            sub              rsp, 16
                        mov              r11, 293
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
.Lcall_α_rkfnzd869:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd869]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 589876
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_868_240
                        add              rsp, 16;                             jmp   n378_lit_string_β
.Lcall_α_868_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n380_assign_α
n379_call_β:            mov              r11, 293
                        add              rsp, 16;                             jmp   n378_lit_string_β
                        .size            n379_call_bx, .-n379_call_bx
                        .type            n380_assign_bx, @function
n380_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_assign_α:          mov              r11, 294
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # F
                        mov              qword ptr [r9 + 312], rdx;           jmp   n381_statement_end_α
                        .size            n380_assign_bx, .-n380_assign_bx
                        .type            n381_statement_end_bx, @function
n381_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_statement_end_α:   mov              r11, 295
                        mov              r10, 35
                        add              rsp, 64;                             jmp   n382_statement_begin_α
                        .size            n381_statement_end_bx, .-n381_statement_end_bx
                        .type            n382_statement_begin_bx, @function
n382_statement_begin_bx:
#=======================================================================================================================
#         T = F ARBNO('*' F . *MUL() | '/' F . *DIV())
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 64 0
n382_statement_begin_α: mov              r11, 296
                        mov              r10, 36;                             jmp   n383_var_α
n382_statement_begin_β: mov              r11, 296;                            jmp   n394_statement_begin_α
                        .size            n382_statement_begin_bx, .-n382_statement_begin_bx
                        .type            n383_var_bx, @function
n383_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_var_α:             sub              rsp, 16
                        mov              r11, 297
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n384_assign_α
                        .size            n383_var_bx, .-n383_var_bx
                        .type            n384_assign_bx, @function
n384_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_assign_α:          mov              r11, 298
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 504], rdx;           jmp   n385_var_α
                        .size            n384_assign_bx, .-n384_assign_bx
                        .type            n385_var_bx, @function
n385_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_var_α:             sub              rsp, 16
                        mov              r11, 299
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n386_assign_α
n385_var_β:             mov              r11, 299
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n382_statement_begin_β
                        .size            n385_var_bx, .-n385_var_bx
                        .type            n386_assign_bx, @function
n386_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_assign_α:          mov              r11, 300
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 512], rax            # PAT$4$V1
                        mov              qword ptr [r9 + 520], rdx;           jmp   n387_var_α
                        .size            n386_assign_bx, .-n386_assign_bx
                        .type            n387_var_bx, @function
n387_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n387_var_α:             sub              rsp, 16
                        mov              r11, 301
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n388_assign_α
n387_var_β:             mov              r11, 301
                        add              rsp, 16;                             jmp   n385_var_β
                        .size            n387_var_bx, .-n387_var_bx
                        .type            n388_assign_bx, @function
n388_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n388_assign_α:          mov              r11, 302
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 528], rax            # PAT$4$V2
                        mov              qword ptr [r9 + 536], rdx;           jmp   n389_lit_string_α
                        .size            n388_assign_bx, .-n388_assign_bx
                        .type            n389_lit_string_bx, @function
n389_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_string_α:      sub              rsp, 16
                        mov              r11, 303
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_881_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n390_lit_string_α
n389_lit_string_β:      mov              r11, 303
                        add              rsp, 16;                             jmp   n387_var_β
.Llit_string_α_881_0:   .quad            .Llit_string_α_881_0_s
.Llit_string_α_881_0_s: .string          "PAT$4"
                        .size            n389_lit_string_bx, .-n389_lit_string_bx
                        .type            n390_lit_string_bx, @function
n390_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_string_α:      sub              rsp, 16
                        mov              r11, 304
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_882_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n391_call_α
n390_lit_string_β:      mov              r11, 304
                        add              rsp, 16;                             jmp   n389_lit_string_β
.Llit_string_α_882_0:   .quad            .Llit_string_α_882_0_s
.Llit_string_α_882_0_s: .string          "3"
                        .size            n390_lit_string_bx, .-n390_lit_string_bx
                        .type            n391_call_bx, @function
n391_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n391_call_α:            sub              rsp, 16
                        mov              r11, 305
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
.Lcall_α_rkfnzd884:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd884]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 589876
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_883_240
                        add              rsp, 16;                             jmp   n390_lit_string_β
.Lcall_α_883_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n392_assign_α
n391_call_β:            mov              r11, 305
                        add              rsp, 16;                             jmp   n390_lit_string_β
                        .size            n391_call_bx, .-n391_call_bx
                        .type            n392_assign_bx, @function
n392_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n392_assign_α:          mov              r11, 306
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # T
                        mov              qword ptr [r9 + 328], rdx;           jmp   n393_statement_end_α
                        .size            n392_assign_bx, .-n392_assign_bx
                        .type            n393_statement_end_bx, @function
n393_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n393_statement_end_α:   mov              r11, 307
                        mov              r10, 36
                        add              rsp, 96;                             jmp   n394_statement_begin_α
                        .size            n393_statement_end_bx, .-n393_statement_end_bx
                        .type            n394_statement_begin_bx, @function
n394_statement_begin_bx:
#=======================================================================================================================
#         X = T ARBNO('+' T . *ADD() | '-' T . *SUB())
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 65 0
n394_statement_begin_α: mov              r11, 308
                        mov              r10, 37;                             jmp   n395_var_α
n394_statement_begin_β: mov              r11, 308;                            jmp   n406_statement_begin_α
                        .size            n394_statement_begin_bx, .-n394_statement_begin_bx
                        .type            n395_var_bx, @function
n395_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n395_var_α:             sub              rsp, 16
                        mov              r11, 309
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n396_assign_α
                        .size            n395_var_bx, .-n395_var_bx
                        .type            n396_assign_bx, @function
n396_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_assign_α:          mov              r11, 310
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax            # PAT$5$V0
                        mov              qword ptr [r9 + 552], rdx;           jmp   n397_var_α
                        .size            n396_assign_bx, .-n396_assign_bx
                        .type            n397_var_bx, @function
n397_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_var_α:             sub              rsp, 16
                        mov              r11, 311
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n398_assign_α
n397_var_β:             mov              r11, 311
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n394_statement_begin_β
                        .size            n397_var_bx, .-n397_var_bx
                        .type            n398_assign_bx, @function
n398_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n398_assign_α:          mov              r11, 312
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # PAT$5$V1
                        mov              qword ptr [r9 + 568], rdx;           jmp   n399_var_α
                        .size            n398_assign_bx, .-n398_assign_bx
                        .type            n399_var_bx, @function
n399_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n399_var_α:             sub              rsp, 16
                        mov              r11, 313
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n400_assign_α
n399_var_β:             mov              r11, 313
                        add              rsp, 16;                             jmp   n397_var_β
                        .size            n399_var_bx, .-n399_var_bx
                        .type            n400_assign_bx, @function
n400_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n400_assign_α:          mov              r11, 314
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 576], rax            # PAT$5$V2
                        mov              qword ptr [r9 + 584], rdx;           jmp   n401_lit_string_α
                        .size            n400_assign_bx, .-n400_assign_bx
                        .type            n401_lit_string_bx, @function
n401_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:      sub              rsp, 16
                        mov              r11, 315
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_896_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n402_lit_string_α
n401_lit_string_β:      mov              r11, 315
                        add              rsp, 16;                             jmp   n399_var_β
.Llit_string_α_896_0:   .quad            .Llit_string_α_896_0_s
.Llit_string_α_896_0_s: .string          "PAT$5"
                        .size            n401_lit_string_bx, .-n401_lit_string_bx
                        .type            n402_lit_string_bx, @function
n402_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_string_α:      sub              rsp, 16
                        mov              r11, 316
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_897_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n403_call_α
n402_lit_string_β:      mov              r11, 316
                        add              rsp, 16;                             jmp   n401_lit_string_β
.Llit_string_α_897_0:   .quad            .Llit_string_α_897_0_s
.Llit_string_α_897_0_s: .string          "3"
                        .size            n402_lit_string_bx, .-n402_lit_string_bx
                        .type            n403_call_bx, @function
n403_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n403_call_α:            sub              rsp, 16
                        mov              r11, 317
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
.Lcall_α_rkfnzd899:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd899]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 589876
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_898_240
                        add              rsp, 16;                             jmp   n402_lit_string_β
.Lcall_α_898_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n404_assign_α
n403_call_β:            mov              r11, 317
                        add              rsp, 16;                             jmp   n402_lit_string_β
                        .size            n403_call_bx, .-n403_call_bx
                        .type            n404_assign_bx, @function
n404_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n404_assign_α:          mov              r11, 318
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # X
                        mov              qword ptr [r9 + 344], rdx;           jmp   n405_statement_end_α
                        .size            n404_assign_bx, .-n404_assign_bx
                        .type            n405_statement_end_bx, @function
n405_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n405_statement_end_α:   mov              r11, 319
                        mov              r10, 37
                        add              rsp, 96;                             jmp   n406_statement_begin_α
                        .size            n405_statement_end_bx, .-n405_statement_end_bx
                        .type            n406_statement_begin_bx, @function
n406_statement_begin_bx:
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 66 0
n406_statement_begin_α: mov              r11, 320
                        mov              r10, 38;                             jmp   n407_lit_integer_α
n406_statement_begin_β: mov              r11, 320;                            jmp   n415_statement_begin_α
                        .size            n406_statement_begin_bx, .-n406_statement_begin_bx
                        .type            n407_lit_integer_bx, @function
n407_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_integer_α:     sub              rsp, 16
                        mov              r11, 321
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_905_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n408_call_α
.Llit_integer_α_905_0:  .quad            10
                        .size            n407_lit_integer_bx, .-n407_lit_integer_bx
                        .type            n408_call_bx, @function
n408_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n408_call_α:            sub              rsp, 16
                        mov              r11, 322
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_bynamefnzd322: .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd322]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262144
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_906_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n406_statement_begin_β
.Lcall_α_906_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n409_assign_α
n408_call_β:            mov              r11, 322
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n406_statement_begin_β
                        .size            n408_call_bx, .-n408_call_bx
                        .type            n409_assign_bx, @function
n409_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n409_assign_α:          mov              r11, 323
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax            # PAT$6$V0
                        mov              qword ptr [r9 + 600], rdx;           jmp   n410_lit_string_α
                        .size            n409_assign_bx, .-n409_assign_bx
                        .type            n410_lit_string_bx, @function
n410_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_string_α:      sub              rsp, 16
                        mov              r11, 324
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_908_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n411_lit_string_α
n410_lit_string_β:      mov              r11, 324
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n406_statement_begin_β
.Llit_string_α_908_0:   .quad            .Llit_string_α_908_0_s
.Llit_string_α_908_0_s: .string          "PAT$6"
                        .size            n410_lit_string_bx, .-n410_lit_string_bx
                        .type            n411_lit_string_bx, @function
n411_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_string_α:      sub              rsp, 16
                        mov              r11, 325
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_909_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n412_call_α
n411_lit_string_β:      mov              r11, 325
                        add              rsp, 16;                             jmp   n410_lit_string_β
.Llit_string_α_909_0:   .quad            .Llit_string_α_909_0_s
.Llit_string_α_909_0_s: .string          "1"
                        .size            n411_lit_string_bx, .-n411_lit_string_bx
                        .type            n412_call_bx, @function
n412_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n412_call_α:            sub              rsp, 16
                        mov              r11, 326
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
.Lcall_α_rkfnzd911:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd911]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 589876
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_910_240
                        add              rsp, 16;                             jmp   n411_lit_string_β
.Lcall_α_910_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n413_assign_α
n412_call_β:            mov              r11, 326
                        add              rsp, 16;                             jmp   n411_lit_string_β
                        .size            n412_call_bx, .-n412_call_bx
                        .type            n413_assign_bx, @function
n413_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n413_assign_α:          mov              r11, 327
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # eol
                        mov              qword ptr [r9 + 360], rdx;           jmp   n414_statement_end_α
                        .size            n413_assign_bx, .-n413_assign_bx
                        .type            n414_statement_end_bx, @function
n414_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_statement_end_α:   mov              r11, 328
                        mov              r10, 38
                        add              rsp, 80;                             jmp   n415_statement_begin_α
                        .size            n414_statement_end_bx, .-n414_statement_end_bx
                        .type            n415_statement_begin_bx, @function
n415_statement_begin_bx:
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 67 0
n415_statement_begin_α: mov              r11, 329
                        mov              r10, 39;                             jmp   n416_var_α
n415_statement_begin_β: mov              r11, 329;                            jmp   n427_statement_begin_α
                        .size            n415_statement_begin_bx, .-n415_statement_begin_bx
                        .type            n416_var_bx, @function
n416_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_var_α:             sub              rsp, 16
                        mov              r11, 330
                        mov              rax, qword ptr [r9 + 336]            # X
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n417_assign_α
                        .size            n416_var_bx, .-n416_var_bx
                        .type            n417_assign_bx, @function
n417_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n417_assign_α:          mov              r11, 331
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax            # PAT$7$V0
                        mov              qword ptr [r9 + 616], rdx;           jmp   n418_var_α
                        .size            n417_assign_bx, .-n417_assign_bx
                        .type            n418_var_bx, @function
n418_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n418_var_α:             sub              rsp, 16
                        mov              r11, 332
                        mov              rax, qword ptr [r9 + 352]            # eol
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n419_assign_α
n418_var_β:             mov              r11, 332
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n415_statement_begin_β
                        .size            n418_var_bx, .-n418_var_bx
                        .type            n419_assign_bx, @function
n419_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_assign_α:          mov              r11, 333
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # PAT$7$V1
                        mov              qword ptr [r9 + 632], rdx;           jmp   n420_var_α
                        .size            n419_assign_bx, .-n419_assign_bx
                        .type            n420_var_bx, @function
n420_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_var_α:             sub              rsp, 16
                        mov              r11, 334
                        mov              rax, qword ptr [r9 + 384]            # epsilon
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n421_assign_α
n420_var_β:             mov              r11, 334
                        add              rsp, 16;                             jmp   n418_var_β
                        .size            n420_var_bx, .-n420_var_bx
                        .type            n421_assign_bx, @function
n421_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_assign_α:          mov              r11, 335
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 640], rax            # PAT$7$V2
                        mov              qword ptr [r9 + 648], rdx;           jmp   n422_lit_string_α
                        .size            n421_assign_bx, .-n421_assign_bx
                        .type            n422_lit_string_bx, @function
n422_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:      sub              rsp, 16
                        mov              r11, 336
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_923_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n423_lit_string_α
n422_lit_string_β:      mov              r11, 336
                        add              rsp, 16;                             jmp   n420_var_β
.Llit_string_α_923_0:   .quad            .Llit_string_α_923_0_s
.Llit_string_α_923_0_s: .string          "PAT$7"
                        .size            n422_lit_string_bx, .-n422_lit_string_bx
                        .type            n423_lit_string_bx, @function
n423_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n423_lit_string_α:      sub              rsp, 16
                        mov              r11, 337
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_924_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n424_call_α
n423_lit_string_β:      mov              r11, 337
                        add              rsp, 16;                             jmp   n422_lit_string_β
.Llit_string_α_924_0:   .quad            .Llit_string_α_924_0_s
.Llit_string_α_924_0_s: .string          "3"
                        .size            n423_lit_string_bx, .-n423_lit_string_bx
                        .type            n424_call_bx, @function
n424_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_call_α:            sub              rsp, 16
                        mov              r11, 338
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
.Lcall_α_rkfnzd926:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd926]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 589876
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_925_240
                        add              rsp, 16;                             jmp   n423_lit_string_β
.Lcall_α_925_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n425_assign_α
n424_call_β:            mov              r11, 338
                        add              rsp, 16;                             jmp   n423_lit_string_β
                        .size            n424_call_bx, .-n424_call_bx
                        .type            n425_assign_bx, @function
n425_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_assign_α:          mov              r11, 339
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # C
                        mov              qword ptr [r9 + 376], rdx;           jmp   n426_statement_end_α
                        .size            n425_assign_bx, .-n425_assign_bx
                        .type            n426_statement_end_bx, @function
n426_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_statement_end_α:   mov              r11, 340
                        mov              r10, 39
                        add              rsp, 96;                             jmp   n427_statement_begin_α
                        .size            n426_statement_end_bx, .-n426_statement_end_bx
                        .type            n427_statement_begin_bx, @function
n427_statement_begin_bx:
#=======================================================================================================================
#         &TRIM = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 69 0
n427_statement_begin_α: mov              r11, 341
                        mov              r10, 40;                             jmp   n428_lit_integer_α
n427_statement_begin_β: mov              r11, 341;                            jmp   n431_statement_begin_α
                        .size            n427_statement_begin_bx, .-n427_statement_begin_bx
                        .type            n428_lit_integer_bx, @function
n428_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_integer_α:     sub              rsp, 16
                        mov              r11, 342
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_932_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n429_kw_assign_snobol4_α
.Llit_integer_α_932_0:  .quad            0
                        .size            n428_lit_integer_bx, .-n428_lit_integer_bx
                        .type            n429_kw_assign_snobol4_bx, @function
n429_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 343
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_933_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_933_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n427_statement_begin_β
.Lkw_assign_snobol4_α_933_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n430_statement_end_α
.Lkw_assign_snobol4_α_933_0:
                        .quad            1
                        .size            n429_kw_assign_snobol4_bx, .-n429_kw_assign_snobol4_bx
                        .type            n430_statement_end_bx, @function
n430_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_statement_end_α:   mov              r11, 344
                        mov              r10, 40
                        add              rsp, 32;                             jmp   n431_statement_begin_α
                        .size            n430_statement_end_bx, .-n430_statement_end_bx
                        .type            n431_statement_begin_bx, @function
n431_statement_begin_bx:
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 70 0
n431_statement_begin_α: mov              r11, 345
                        mov              r10, 41;                             jmp   n432_call_α
n431_statement_begin_β: mov              r11, 345;                            jmp   n435_statement_begin_α
                        .size            n431_statement_begin_bx, .-n431_statement_begin_bx
                        .type            n432_call_bx, @function
n432_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_call_α:            sub              rsp, 16
                        mov              r11, 346
                        .section         .rodata
.Lcall_α_rkfnzd939:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd939]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 327748
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lcall_α_938_240
                        add              rsp, 16;                             jmp   n431_statement_begin_β
.Lcall_α_938_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n433_assign_α
n432_call_β:            mov              r11, 346
                        add              rsp, 16;                             jmp   n431_statement_begin_β
                        .size            n432_call_bx, .-n432_call_bx
                        .type            n433_assign_bx, @function
n433_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_assign_α:          mov              r11, 347
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # vars
                        mov              qword ptr [r9 + 216], rdx;           jmp   n434_statement_end_α
                        .size            n433_assign_bx, .-n433_assign_bx
                        .type            n434_statement_end_bx, @function
n434_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_statement_end_α:   mov              r11, 348
                        mov              r10, 41
                        add              rsp, 16;                             jmp   n435_statement_begin_α
                        .size            n434_statement_end_bx, .-n434_statement_end_bx
                        .type            n435_statement_begin_bx, @function
n435_statement_begin_bx:
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 71 0
n435_statement_begin_α: mov              r11, 349
                        mov              r10, 42;                             jmp   n436_var_α
n435_statement_begin_β: mov              r11, 349;                            jmp   n441_statement_begin_α
                        .size            n435_statement_begin_bx, .-n435_statement_begin_bx
                        .type            n436_var_bx, @function
n436_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_var_α:             sub              rsp, 16
                        mov              r11, 350
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n437_lit_string_α
                        .size            n436_var_bx, .-n436_var_bx
                        .type            n437_lit_string_bx, @function
n437_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:      sub              rsp, 16
                        mov              r11, 351
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_946_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n438_lit_integer_α
n437_lit_string_β:      mov              r11, 351
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n435_statement_begin_β
.Llit_string_α_946_0:   .quad            .Llit_string_α_946_0_s
.Llit_string_α_946_0_s: .string          "x"
                        .size            n437_lit_string_bx, .-n437_lit_string_bx
                        .type            n438_lit_integer_bx, @function
n438_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_integer_α:     sub              rsp, 16
                        mov              r11, 352
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_947_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n439_assign_var_α
n438_lit_integer_β:     mov              r11, 352
                        add              rsp, 16;                             jmp   n437_lit_string_β
.Llit_integer_α_947_0:  .quad            1
                        .size            n438_lit_integer_bx, .-n438_lit_integer_bx
                        .type            n439_assign_var_bx, @function
n439_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n439_assign_var_α:      sub              rsp, 16
                        mov              r11, 353
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_949_0
                        test             rsi, rsi;                            je    .Lassign_var_α_949_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_949_238
                        add              rsp, 16;                             jmp   n438_lit_integer_β
.Lassign_var_α_949_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n440_statement_end_α
.Lassign_var_α_949_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_949_239
                        add              rsp, 16;                             jmp   n438_lit_integer_β
.Lassign_var_α_949_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_949_240
                        add              rsp, 16;                             jmp   n438_lit_integer_β
.Lassign_var_α_949_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n440_statement_end_α
                        .size            n439_assign_var_bx, .-n439_assign_var_bx
                        .type            n440_statement_end_bx, @function
n440_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_statement_end_α:   mov              r11, 354
                        mov              r10, 42
                        add              rsp, 64;                             jmp   n441_statement_begin_α
                        .size            n440_statement_end_bx, .-n440_statement_end_bx
                        .type            n441_statement_begin_bx, @function
n441_statement_begin_bx:
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 72 0
n441_statement_begin_α: mov              r11, 355
                        mov              r10, 43;                             jmp   n442_var_α
n441_statement_begin_β: mov              r11, 355;                            jmp   n447_statement_begin_α
                        .size            n441_statement_begin_bx, .-n441_statement_begin_bx
                        .type            n442_var_bx, @function
n442_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_var_α:             sub              rsp, 16
                        mov              r11, 356
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n443_lit_string_α
                        .size            n442_var_bx, .-n442_var_bx
                        .type            n443_lit_string_bx, @function
n443_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_lit_string_α:      sub              rsp, 16
                        mov              r11, 357
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_955_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n444_lit_integer_α
n443_lit_string_β:      mov              r11, 357
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n441_statement_begin_β
.Llit_string_α_955_0:   .quad            .Llit_string_α_955_0_s
.Llit_string_α_955_0_s: .string          "y"
                        .size            n443_lit_string_bx, .-n443_lit_string_bx
                        .type            n444_lit_integer_bx, @function
n444_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_integer_α:     sub              rsp, 16
                        mov              r11, 358
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_956_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n445_assign_var_α
n444_lit_integer_β:     mov              r11, 358
                        add              rsp, 16;                             jmp   n443_lit_string_β
.Llit_integer_α_956_0:  .quad            2
                        .size            n444_lit_integer_bx, .-n444_lit_integer_bx
                        .type            n445_assign_var_bx, @function
n445_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_assign_var_α:      sub              rsp, 16
                        mov              r11, 359
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_958_0
                        test             rsi, rsi;                            je    .Lassign_var_α_958_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_958_238
                        add              rsp, 16;                             jmp   n444_lit_integer_β
.Lassign_var_α_958_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n446_statement_end_α
.Lassign_var_α_958_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_958_239
                        add              rsp, 16;                             jmp   n444_lit_integer_β
.Lassign_var_α_958_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_958_240
                        add              rsp, 16;                             jmp   n444_lit_integer_β
.Lassign_var_α_958_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n446_statement_end_α
                        .size            n445_assign_var_bx, .-n445_assign_var_bx
                        .type            n446_statement_end_bx, @function
n446_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_statement_end_α:   mov              r11, 360
                        mov              r10, 43
                        add              rsp, 64;                             jmp   n447_statement_begin_α
                        .size            n446_statement_end_bx, .-n446_statement_end_bx
                        .type            n447_statement_begin_bx, @function
n447_statement_begin_bx:
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 73 0
n447_statement_begin_α: mov              r11, 361
                        mov              r10, 44;                             jmp   n448_var_α
n447_statement_begin_β: mov              r11, 361;                            jmp   n453_statement_begin_α
                        .size            n447_statement_begin_bx, .-n447_statement_begin_bx
                        .type            n448_var_bx, @function
n448_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_var_α:             sub              rsp, 16
                        mov              r11, 362
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n449_lit_string_α
                        .size            n448_var_bx, .-n448_var_bx
                        .type            n449_lit_string_bx, @function
n449_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_lit_string_α:      sub              rsp, 16
                        mov              r11, 363
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_964_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n450_lit_integer_α
n449_lit_string_β:      mov              r11, 363
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n447_statement_begin_β
.Llit_string_α_964_0:   .quad            .Llit_string_α_964_0_s
.Llit_string_α_964_0_s: .string          "z"
                        .size            n449_lit_string_bx, .-n449_lit_string_bx
                        .type            n450_lit_integer_bx, @function
n450_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_lit_integer_α:     sub              rsp, 16
                        mov              r11, 364
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_965_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n451_assign_var_α
n450_lit_integer_β:     mov              r11, 364
                        add              rsp, 16;                             jmp   n449_lit_string_β
.Llit_integer_α_965_0:  .quad            3
                        .size            n450_lit_integer_bx, .-n450_lit_integer_bx
                        .type            n451_assign_var_bx, @function
n451_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n451_assign_var_α:      sub              rsp, 16
                        mov              r11, 365
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_967_0
                        test             rsi, rsi;                            je    .Lassign_var_α_967_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_967_238
                        add              rsp, 16;                             jmp   n450_lit_integer_β
.Lassign_var_α_967_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n452_statement_end_α
.Lassign_var_α_967_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_967_239
                        add              rsp, 16;                             jmp   n450_lit_integer_β
.Lassign_var_α_967_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_967_240
                        add              rsp, 16;                             jmp   n450_lit_integer_β
.Lassign_var_α_967_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n452_statement_end_α
                        .size            n451_assign_var_bx, .-n451_assign_var_bx
                        .type            n452_statement_end_bx, @function
n452_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_statement_end_α:   mov              r11, 366
                        mov              r10, 44
                        add              rsp, 64;                             jmp   n453_statement_begin_α
                        .size            n452_statement_end_bx, .-n452_statement_end_bx
                        .type            n453_statement_begin_bx, @function
n453_statement_begin_bx:
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 75 0
n453_statement_begin_α: mov              r11, 367
                        mov              r10, 45;                             jmp   n454_lit_name_α
n453_statement_begin_β: mov              r11, 367;                            jmp   n459_statement_begin_α
                        .size            n453_statement_begin_bx, .-n453_statement_begin_bx
                        .type            n454_lit_name_bx, @function
n454_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n454_lit_name_α:        sub              rsp, 16
                        mov              r11, 368
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_972_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n455_lit_integer_α
.Llit_name_α_972_0:     .quad            .Llit_name_α_972_0_s
.Llit_name_α_972_0_s:   .string          "INPUT"
                        .size            n454_lit_name_bx, .-n454_lit_name_bx
                        .type            n455_lit_integer_bx, @function
n455_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n455_lit_integer_α:     sub              rsp, 16
                        mov              r11, 369
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_973_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n456_lit_string_α
n455_lit_integer_β:     mov              r11, 369
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n453_statement_begin_β
.Llit_integer_α_973_0:  .quad            9
                        .size            n455_lit_integer_bx, .-n455_lit_integer_bx
                        .type            n456_lit_string_bx, @function
n456_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_string_α:      sub              rsp, 16
                        mov              r11, 370
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_974_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n457_call_α
n456_lit_string_β:      mov              r11, 370
                        add              rsp, 16;                             jmp   n455_lit_integer_β
.Llit_string_α_974_0:   .quad            .Llit_string_α_974_0_s
.Llit_string_α_974_0_s: .string          "[-f0 -r4194304]"
                        .size            n456_lit_string_bx, .-n456_lit_string_bx
                        .type            n457_call_bx, @function
n457_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n457_call_α:            sub              rsp, 16
                        mov              r11, 371
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
.Lcall_α_bynamefnzd371: .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd371]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 327680
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_975_240
                        add              rsp, 16;                             jmp   n456_lit_string_β
.Lcall_α_975_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n458_statement_end_α
n457_call_β:            mov              r11, 371
                        add              rsp, 16;                             jmp   n456_lit_string_β
                        .size            n457_call_bx, .-n457_call_bx
                        .type            n458_statement_end_bx, @function
n458_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n458_statement_end_α:   mov              r11, 372
                        mov              r10, 45
                        add              rsp, 64;                             jmp   n459_statement_begin_α
                        .size            n458_statement_end_bx, .-n458_statement_end_bx
                        .type            n459_statement_begin_bx, @function
n459_statement_begin_bx:
#=======================================================================================================================
#         src = INPUT
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 76 0
n459_statement_begin_α: mov              r11, 373
                        mov              r10, 46;                             jmp   n460_var_α
n459_statement_begin_β: mov              r11, 373;                            jmp   n463_statement_begin_α
                        .size            n459_statement_begin_bx, .-n459_statement_begin_bx
                        .type            n460_var_bx, @function
n460_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n460_var_α:             sub              rsp, 16
                        mov              r11, 374
                        mov              rdi, qword ptr [rip + .Lvar_α_980_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_980_240
                        add              rsp, 16;                             jmp   n459_statement_begin_β
.Lvar_α_980_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n461_assign_α
.Lvar_α_980_0:          .quad            .Lvar_α_980_0_s
.Lvar_α_980_0_s:        .string          "INPUT"
                        .size            n460_var_bx, .-n460_var_bx
                        .type            n461_assign_bx, @function
n461_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n461_assign_α:          mov              r11, 375
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # src
                        mov              qword ptr [r9 + 408], rdx;           jmp   n462_statement_end_α
                        .size            n461_assign_bx, .-n461_assign_bx
                        .type            n462_statement_end_bx, @function
n462_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n462_statement_end_α:   mov              r11, 376
                        mov              r10, 46
                        add              rsp, 16;                             jmp   n463_statement_begin_α
                        .size            n462_statement_end_bx, .-n462_statement_end_bx
                        .type            n463_statement_begin_bx, @function
n463_statement_begin_bx:
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 79 0
n463_statement_begin_α: mov              r11, 377
                        mov              r10, 47;                             jmp   n464_call_α
n463_statement_begin_β: mov              r11, 377;                            jmp   n467_statement_begin_α
                        .size            n463_statement_begin_bx, .-n463_statement_begin_bx
                        .type            n464_call_bx, @function
n464_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n464_call_α:            sub              rsp, 16
                        mov              r11, 378
                        .section         .rodata
.Lcall_α_rkfnzd987:     .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd987]
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
                        cmp              al, 104;                             jne   .Lcall_α_986_240
                        add              rsp, 16;                             jmp   n463_statement_begin_β
.Lcall_α_986_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n465_assign_α
n464_call_β:            mov              r11, 378
                        add              rsp, 16;                             jmp   n463_statement_begin_β
                        .size            n464_call_bx, .-n464_call_bx
                        .type            n465_assign_bx, @function
n465_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n465_assign_α:          mov              r11, 379
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax            # t0
                        mov              qword ptr [r9 + 424], rdx;           jmp   n466_statement_end_α
                        .size            n465_assign_bx, .-n465_assign_bx
                        .type            n466_statement_end_bx, @function
n466_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n466_statement_end_α:   mov              r11, 380
                        mov              r10, 47
                        add              rsp, 16;                             jmp   n467_statement_begin_α
                        .size            n466_statement_end_bx, .-n466_statement_end_bx
                        .type            n467_statement_begin_bx, @function
n467_statement_begin_bx:
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 80 0
n467_statement_begin_α: mov              r11, 381
                        mov              r10, 48;                             jmp   n468_var_α
n467_statement_begin_β: mov              r11, 381;                            jmp   n489_statement_begin_α
                        .size            n467_statement_begin_bx, .-n467_statement_begin_bx
                        .type            n468_var_bx, @function
n468_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n468_var_α:             sub              rsp, 16
                        mov              r11, 382
                        mov              rax, qword ptr [r9 + 400]            # src
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n469_var_α
                        .size            n468_var_bx, .-n468_var_bx
                        .type            n469_var_bx, @function
n469_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n469_var_α:             sub              rsp, 16
                        mov              r11, 383
                        mov              rax, qword ptr [r9 + 368]            # C
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n470_assign_α
n469_var_β:             mov              r11, 383
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n489_statement_begin_α
                        .size            n469_var_bx, .-n469_var_bx
                        .type            n470_assign_bx, @function
n470_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n470_assign_α:          mov              r11, 384
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_995_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n471_match_begin_α
n470_assign_β:          mov              r11, 384;                            jmp   n469_var_β
.Lassign_α_995_0:       .quad            .Lassign_α_995_0_s
.Lassign_α_995_0_s:     .string          "PATV$0"
                        .size            n470_assign_bx, .-n470_assign_bx
                        .type            n471_match_begin_bx, @function
n471_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n471_match_begin_α:     mov              r11, 385
                        mov              rdi, qword ptr [rsp + 16]            # var
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
.Lmatch_begin_α_997_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_997_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n472_match_defer_α
n471_match_begin_β:     mov              r11, 385
.Lmatch_begin_α_997_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_997_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_997_1
                                                                              jmp   .Lmatch_begin_α_997_0
.Lmatch_begin_β_997_1:
.Lmatch_begin_γ_471_af: mov              r11, 385
.Lmatch_begin_ω_471_af: mov              r11, 385
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
                        pop              rbp;                                 jmp   n470_assign_β
                        .size            n471_match_begin_bx, .-n471_match_begin_bx
                        .type            n472_match_defer_bx, @function
n472_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n472_match_defer_α:     mov              r11, 386
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S22]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_998_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_998_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_998_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_998_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_998_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_998_23
                                                                              jmp   .Lmatch_defer_α_998_22
.Lmatch_defer_α_998_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_998_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_998_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_998_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_998_0
.Lmatch_defer_α_998_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_998_0
.Lmatch_defer_α_998_22: push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S22]
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
.Lmatch_defer_α_998_23: test             rax, rax;                            jz    .Lmatch_defer_α_998_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_998_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_998_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_998_4:                                                        jmp   n473_match_end_α
.Lmatch_defer_α_998_5:                                                        jmp   n471_match_begin_β
.Lmatch_defer_α_998_0:  mov              eax, edx
                        test             eax, eax;                            js    n471_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_998_6]
                        push             rcx
                        push             rax;                                 jmp   n473_match_end_α
.Lmatch_defer_α_998_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n471_match_begin_β
n472_match_defer_β:     mov              r11, 386
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_998_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_998_12
                                                                              jmp   rax
.Lmatch_defer_β_998_12:                                                       jmp   qword ptr [rsp]
                        .size            n472_match_defer_bx, .-n472_match_defer_bx
                        .type            n473_match_end_bx, @function
n473_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n473_match_end_α:       mov              r11, 387
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
                        test             rax, rax;                            je    .Lmatch_end_α_1000_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_471_af
.Lmatch_end_α_1000_13:  add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n474_statement_end_α
                        .size            n473_match_end_bx, .-n473_match_end_bx
                        .type            n474_statement_end_bx, @function
n474_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n474_statement_end_α:   mov              r11, 388
                        mov              r10, 48
                        add              rsp, 32;                             jmp   n475_statement_begin_α
                        .size            n474_statement_end_bx, .-n474_statement_end_bx
                        .type            n475_statement_begin_bx, @function
n475_statement_begin_bx:
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 81 0
n475_statement_begin_α: mov              r11, 389
                        mov              r10, 49;                             jmp   n476_call_α
n475_statement_begin_β: mov              r11, 389;                            jmp   n479_statement_begin_α
                        .size            n475_statement_begin_bx, .-n475_statement_begin_bx
                        .type            n476_call_bx, @function
n476_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n476_call_α:            sub              rsp, 16
                        mov              r11, 390
                        .section         .rodata
.Lcall_α_rkfnzd1006:    .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1006]
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
                        cmp              al, 104;                             jne   .Lcall_α_1005_240
                        add              rsp, 16;                             jmp   n475_statement_begin_β
.Lcall_α_1005_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n477_assign_α
n476_call_β:            mov              r11, 390
                        add              rsp, 16;                             jmp   n475_statement_begin_β
                        .size            n476_call_bx, .-n476_call_bx
                        .type            n477_assign_bx, @function
n477_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n477_assign_α:          mov              r11, 391
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # t1
                        mov              qword ptr [r9 + 440], rdx;           jmp   n478_statement_end_α
                        .size            n477_assign_bx, .-n477_assign_bx
                        .type            n478_statement_end_bx, @function
n478_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n478_statement_end_α:   mov              r11, 392
                        mov              r10, 49
                        add              rsp, 16;                             jmp   n479_statement_begin_α
                        .size            n478_statement_end_bx, .-n478_statement_end_bx
                        .type            n479_statement_begin_bx, @function
n479_statement_begin_bx:
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0) / 1000000        :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 82 0
n479_statement_begin_α: mov              r11, 393
                        mov              r10, 50;                             jmp   n480_lit_string_α
n479_statement_begin_β: mov              r11, 393;                            jmp   main_γ
                        .size            n479_statement_begin_bx, .-n479_statement_begin_bx
                        .type            n480_lit_string_bx, @function
n480_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_string_α:      sub              rsp, 16
                        mov              r11, 394
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_1012_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n481_var_α
.Llit_string_α_1012_0:  .quad            .Llit_string_α_1012_0_s
.Llit_string_α_1012_0_s:
                        .string          "match_ms="
                        .size            n480_lit_string_bx, .-n480_lit_string_bx
                        .type            n481_var_bx, @function
n481_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n481_var_α:             sub              rsp, 16
                        mov              r11, 395
                        mov              rax, qword ptr [r9 + 432]            # t1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n482_var_α
n481_var_β:             mov              r11, 395
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n479_statement_begin_β
                        .size            n481_var_bx, .-n481_var_bx
                        .type            n482_var_bx, @function
n482_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n482_var_α:             sub              rsp, 16
                        mov              r11, 396
                        mov              rax, qword ptr [r9 + 416]            # t0
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n483_binop_α
n482_var_β:             mov              r11, 396
                        add              rsp, 16;                             jmp   n481_var_β
                        .size            n482_var_bx, .-n482_var_bx
                        .type            n483_binop_bx, @function
n483_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n483_binop_α:           sub              rsp, 16
                        mov              r11, 397
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1015_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_1015_7
.Lbinop_α_1015_2:       and              edx, 1;                              jz    .Lbinop_α_1015_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_1015_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1015_4
.Lbinop_α_1015_3:       movq             xmm0, rsi
.Lbinop_α_1015_4:       cmp              cl, 5;                               je    .Lbinop_α_1015_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1015_6
.Lbinop_α_1015_5:       movq             xmm1, rdi
.Lbinop_α_1015_6:       subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_1015_7:                                                             jmp   n484_lit_integer_α
.Lbinop_α_1015_0:       mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_1015_240
                        add              rsp, 16;                             jmp   n482_var_β
.Lbinop_α_1015_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n484_lit_integer_α
n483_binop_β:           mov              r11, 397
                        add              rsp, 16;                             jmp   n482_var_β
                        .size            n483_binop_bx, .-n483_binop_bx
                        .type            n484_lit_integer_bx, @function
n484_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n484_lit_integer_α:     sub              rsp, 16
                        mov              r11, 398
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1016_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n485_binop_α
n484_lit_integer_β:     mov              r11, 398
                        add              rsp, 16;                             jmp   n483_binop_β
.Llit_integer_α_1016_0: .quad            1000000
                        .size            n484_lit_integer_bx, .-n484_lit_integer_bx
                        .type            n485_binop_bx, @function
n485_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n485_binop_α:           sub              rsp, 16
                        mov              r11, 399
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_1017_240
                        add              rsp, 16;                             jmp   n484_lit_integer_β
.Lbinop_α_1017_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n486_binop_α
n485_binop_β:           mov              r11, 399
                        add              rsp, 16;                             jmp   n484_lit_integer_β
                        .size            n485_binop_bx, .-n485_binop_bx
                        .type            n486_binop_bx, @function
n486_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n486_binop_α:           sub              rsp, 16
                        mov              r11, 400
                        mov              rdi, qword ptr [rsp + 96]            # lit_string
                        mov              rsi, qword ptr [rsp + 104]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n487_assign_α
                        .size            n486_binop_bx, .-n486_binop_bx
                        .type            n487_assign_bx, @function
n487_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n487_assign_α:          mov              r11, 401
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_1019_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n488_statement_end_α
.Lassign_α_1019_0:      .quad            .Lassign_α_1019_0_s
.Lassign_α_1019_0_s:    .string          "TERMINAL"
                        .size            n487_assign_bx, .-n487_assign_bx
                        .type            n488_statement_end_bx, @function
n488_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n488_statement_end_α:   mov              r11, 402
                        mov              r10, 50
                        add              rsp, 112;                            jmp   main_γ
                        .size            n488_statement_end_bx, .-n488_statement_end_bx
                        .type            n489_statement_begin_bx, @function
n489_statement_begin_bx:
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 83 0
n489_statement_begin_α: mov              r11, 403
                        mov              r10, 51;                             jmp   n490_call_α
n489_statement_begin_β: mov              r11, 403;                            jmp   n493_statement_begin_α
                        .size            n489_statement_begin_bx, .-n489_statement_begin_bx
                        .type            n490_call_bx, @function
n490_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n490_call_α:            sub              rsp, 16
                        mov              r11, 404
                        .section         .rodata
.Lcall_α_rkfnzd1025:    .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1025]
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
                        cmp              al, 104;                             jne   .Lcall_α_1024_240
                        add              rsp, 16;                             jmp   n489_statement_begin_β
.Lcall_α_1024_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n491_assign_α
n490_call_β:            mov              r11, 404
                        add              rsp, 16;                             jmp   n489_statement_begin_β
                        .size            n490_call_bx, .-n490_call_bx
                        .type            n491_assign_bx, @function
n491_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n491_assign_α:          mov              r11, 405
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # t1
                        mov              qword ptr [r9 + 440], rdx;           jmp   n492_statement_end_α
                        .size            n491_assign_bx, .-n491_assign_bx
                        .type            n492_statement_end_bx, @function
n492_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n492_statement_end_α:   mov              r11, 406
                        mov              r10, 51
                        add              rsp, 16;                             jmp   n493_statement_begin_α
                        .size            n492_statement_end_bx, .-n492_statement_end_bx
                        .type            n493_statement_begin_bx, @function
n493_statement_begin_bx:
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 84 0
n493_statement_begin_α: mov              r11, 407
                        mov              r10, 52;                             jmp   n494_lit_string_α
n493_statement_begin_β: mov              r11, 407;                            jmp   n497_statement_begin_α
                        .size            n493_statement_begin_bx, .-n493_statement_begin_bx
                        .type            n494_lit_string_bx, @function
n494_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n494_lit_string_α:      sub              rsp, 16
                        mov              r11, 408
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1031_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n495_assign_α
.Llit_string_α_1031_0:  .quad            .Llit_string_α_1031_0_s
.Llit_string_α_1031_0_s:
                        .string          "Boo!"
                        .size            n494_lit_string_bx, .-n494_lit_string_bx
                        .type            n495_assign_bx, @function
n495_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n495_assign_α:          mov              r11, 409
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_1032_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n496_statement_end_α
.Lassign_α_1032_0:      .quad            .Lassign_α_1032_0_s
.Lassign_α_1032_0_s:    .string          "OUTPUT"
                        .size            n495_assign_bx, .-n495_assign_bx
                        .type            n496_statement_end_bx, @function
n496_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n496_statement_end_α:   mov              r11, 410
                        mov              r10, 52
                        add              rsp, 16;                             jmp   n497_statement_begin_α
                        .size            n496_statement_end_bx, .-n496_statement_end_bx
                        .type            n497_statement_begin_bx, @function
n497_statement_begin_bx:
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0) / 1000000
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 85 0
n497_statement_begin_α: mov              r11, 411
                        mov              r10, 53;                             jmp   n498_lit_string_α
n497_statement_begin_β: mov              r11, 411;                            jmp   main_γ
                        .size            n497_statement_begin_bx, .-n497_statement_begin_bx
                        .type            n498_lit_string_bx, @function
n498_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_string_α:      sub              rsp, 16
                        mov              r11, 412
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_1037_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n499_var_α
.Llit_string_α_1037_0:  .quad            .Llit_string_α_1037_0_s
.Llit_string_α_1037_0_s:
                        .string          "match_ms="
                        .size            n498_lit_string_bx, .-n498_lit_string_bx
                        .type            n499_var_bx, @function
n499_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n499_var_α:             sub              rsp, 16
                        mov              r11, 413
                        mov              rax, qword ptr [r9 + 432]            # t1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n500_var_α
n499_var_β:             mov              r11, 413
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n497_statement_begin_β
                        .size            n499_var_bx, .-n499_var_bx
                        .type            n500_var_bx, @function
n500_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n500_var_α:             sub              rsp, 16
                        mov              r11, 414
                        mov              rax, qword ptr [r9 + 416]            # t0
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n501_binop_α
n500_var_β:             mov              r11, 414
                        add              rsp, 16;                             jmp   n499_var_β
                        .size            n500_var_bx, .-n500_var_bx
                        .type            n501_binop_bx, @function
n501_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n501_binop_α:           sub              rsp, 16
                        mov              r11, 415
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1040_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_1040_7
.Lbinop_α_1040_2:       and              edx, 1;                              jz    .Lbinop_α_1040_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_1040_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1040_4
.Lbinop_α_1040_3:       movq             xmm0, rsi
.Lbinop_α_1040_4:       cmp              cl, 5;                               je    .Lbinop_α_1040_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1040_6
.Lbinop_α_1040_5:       movq             xmm1, rdi
.Lbinop_α_1040_6:       subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_1040_7:                                                             jmp   n502_lit_integer_α
.Lbinop_α_1040_0:       mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_1040_240
                        add              rsp, 16;                             jmp   n500_var_β
.Lbinop_α_1040_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n502_lit_integer_α
n501_binop_β:           mov              r11, 415
                        add              rsp, 16;                             jmp   n500_var_β
                        .size            n501_binop_bx, .-n501_binop_bx
                        .type            n502_lit_integer_bx, @function
n502_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_integer_α:     sub              rsp, 16
                        mov              r11, 416
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1041_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n503_binop_α
n502_lit_integer_β:     mov              r11, 416
                        add              rsp, 16;                             jmp   n501_binop_β
.Llit_integer_α_1041_0: .quad            1000000
                        .size            n502_lit_integer_bx, .-n502_lit_integer_bx
                        .type            n503_binop_bx, @function
n503_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n503_binop_α:           sub              rsp, 16
                        mov              r11, 417
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_1042_240
                        add              rsp, 16;                             jmp   n502_lit_integer_β
.Lbinop_α_1042_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n504_binop_α
n503_binop_β:           mov              r11, 417
                        add              rsp, 16;                             jmp   n502_lit_integer_β
                        .size            n503_binop_bx, .-n503_binop_bx
                        .type            n504_binop_bx, @function
n504_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n504_binop_α:           sub              rsp, 16
                        mov              r11, 418
                        mov              rdi, qword ptr [rsp + 96]            # lit_string
                        mov              rsi, qword ptr [rsp + 104]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n505_assign_α
                        .size            n504_binop_bx, .-n504_binop_bx
                        .type            n505_assign_bx, @function
n505_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n505_assign_α:          mov              r11, 419
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_1044_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n506_statement_end_α
.Lassign_α_1044_0:      .quad            .Lassign_α_1044_0_s
.Lassign_α_1044_0_s:    .string          "TERMINAL"
                        .size            n505_assign_bx, .-n505_assign_bx
                        .type            n506_statement_end_bx, @function
n506_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n506_statement_end_α:   mov              r11, 420
                        mov              r10, 53
                        add              rsp, 112;                            jmp   main_γ
                        .size            n506_statement_end_bx, .-n506_statement_end_bx
                        .type            n507_goto_bx, @function
n507_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n507_goto_α:            mov              r11, 421;                            jmp   n163_statement_begin_α
n507_goto_β:            mov              r11, 421;                            jmp   main_ω
                        .size            n507_goto_bx, .-n507_goto_bx
                        .type            n508_goto_bx, @function
n508_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n508_goto_α:            mov              r11, 422;                            jmp   n179_statement_begin_α
n508_goto_β:            mov              r11, 422;                            jmp   main_ω
                        .size            n508_goto_bx, .-n508_goto_bx
                        .type            n509_goto_bx, @function
n509_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n509_goto_α:            mov              r11, 423;                            jmp   n188_statement_begin_α
n509_goto_β:            mov              r11, 423;                            jmp   main_ω
                        .size            n509_goto_bx, .-n509_goto_bx
                        .type            n510_goto_bx, @function
n510_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n510_goto_α:            mov              r11, 424;                            jmp   n207_statement_begin_α
n510_goto_β:            mov              r11, 424;                            jmp   main_ω
                        .size            n510_goto_bx, .-n510_goto_bx
                        .type            n511_goto_bx, @function
n511_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n511_goto_α:            mov              r11, 425;                            jmp   n232_statement_begin_α
n511_goto_β:            mov              r11, 425;                            jmp   main_ω
                        .size            n511_goto_bx, .-n511_goto_bx
                        .type            n512_goto_bx, @function
n512_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n512_goto_α:            mov              r11, 426;                            jmp   n257_statement_begin_α
n512_goto_β:            mov              r11, 426;                            jmp   main_ω
                        .size            n512_goto_bx, .-n512_goto_bx
                        .type            n513_goto_bx, @function
n513_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n513_goto_α:            mov              r11, 427;                            jmp   n282_statement_begin_α
n513_goto_β:            mov              r11, 427;                            jmp   main_ω
                        .size            n513_goto_bx, .-n513_goto_bx
                        .type            n514_goto_bx, @function
n514_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n514_goto_α:            mov              r11, 428;                            jmp   n307_statement_begin_α
n514_goto_β:            mov              r11, 428;                            jmp   main_ω
                        .size            n514_goto_bx, .-n514_goto_bx
                        .type            n515_goto_bx, @function
n515_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n515_goto_α:            mov              r11, 429;                            jmp   n339_statement_begin_α
n515_goto_β:            mov              r11, 429;                            jmp   main_ω
                        .size            n515_goto_bx, .-n515_goto_bx
                        .type            n516_goto_bx, @function
n516_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n516_goto_α:            mov              r11, 430;                            jmp   n489_statement_begin_α
n516_goto_β:            mov              r11, 430;                            jmp   main_ω
                        .size            n516_goto_bx, .-n516_goto_bx
                        .type            n517_define_bx, @function
n517_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 431
                        mov              edi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_set_rtntype_role@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
                        .size            n517_define_bx, .-n517_define_bx
                        .type            n518_define_bx, @function
n518_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              r11, 432
                        mov              edi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_set_rtntype_role@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              rcx;                                 jmp   rcx
                        .size            n518_define_bx, .-n518_define_bx
                        .type            n519_lit_string_bx, @function
n519_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              r11, 433
                        push             rax
                        mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rax + 0], 1
                        pop              rax;                                 jmp   RETURN
                        .size            n519_lit_string_bx, .-n519_lit_string_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        call             sno_setexit_fire_on_end@PLT
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
.Lseala8:               .string          "EMIT"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            EMIT_α
                        lea              rdi, [rip + .Lseala8]
                        mov              rsi, qword ptr [rip + EMIT_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala9:               .string          "PSH"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            PSH_α
                        lea              rdi, [rip + .Lseala9]
                        mov              rsi, qword ptr [rip + PSH_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala10:              .string          "DRF"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            DRF_α
                        lea              rdi, [rip + .Lseala10]
                        mov              rsi, qword ptr [rip + DRF_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala11:              .string          "ADD"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ADD_α
                        lea              rdi, [rip + .Lseala11]
                        mov              rsi, qword ptr [rip + ADD_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala12:              .string          "SUB"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            SUB_α
                        lea              rdi, [rip + .Lseala12]
                        mov              rsi, qword ptr [rip + SUB_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala13:              .string          "MUL"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            MUL_α
                        lea              rdi, [rip + .Lseala13]
                        mov              rsi, qword ptr [rip + MUL_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala14:              .string          "DIV"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            DIV_α
                        lea              rdi, [rip + .Lseala14]
                        mov              rsi, qword ptr [rip + DIV_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala15:              .string          "SGN"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            SGN_α
                        lea              rdi, [rip + .Lseala15]
                        mov              rsi, qword ptr [rip + SGN_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "PAT$0"
                        .align           8
.Lstartup_prec16:
                        .quad            .Lstartup_pname16
                        .quad            FN__PAT$0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            96
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec16]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "PAT$1"
                        .align           8
.Lstartup_prec17:
                        .quad            .Lstartup_pname17
                        .quad            FN__PAT$1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            80
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec17]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname18:      .string          "PAT$2"
                        .align           8
.Lstartup_prec18:
                        .quad            .Lstartup_pname18
                        .quad            FN__PAT$2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            128
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec18]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname19:      .string          "PAT$3"
                        .align           8
.Lstartup_prec19:
                        .quad            .Lstartup_pname19
                        .quad            FN__PAT$3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            208
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec19]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname20:      .string          "PAT$4"
                        .align           8
.Lstartup_prec20:
                        .quad            .Lstartup_pname20
                        .quad            FN__PAT$4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            320
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec20]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname21:      .string          "PAT$5"
                        .align           8
.Lstartup_prec21:
                        .quad            .Lstartup_pname21
                        .quad            FN__PAT$5
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            320
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec21]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname22:      .string          "PAT$6"
                        .align           8
.Lstartup_prec22:
                        .quad            .Lstartup_pname22
                        .quad            FN__PAT$6
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            64
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec22]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname23:      .string          "PAT$7"
                        .align           8
.Lstartup_prec23:
                        .quad            .Lstartup_pname23
                        .quad            FN__PAT$7
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            240
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec23]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "*PSH"
.S1:                    .string          "X"
.S2:                    .string          "PAT$2$V1"
.S3:                    .string          "PAT$2$V0"
.S4:                    .string          "F"
.S5:                    .string          "*SGN"
.S6:                    .string          "PAT$3$V0"
.S7:                    .string          "PAT$4$V0"
.S8:                    .string          "PAT$4$V2"
.S9:                    .string          "*DIV"
.S10:                   .string          "PAT$4$V1"
.S11:                   .string          "*MUL"
.S12:                   .string          "PAT$5$V0"
.S13:                   .string          "PAT$5$V2"
.S14:                   .string          "*SUB"
.S15:                   .string          "PAT$5$V1"
.S16:                   .string          "*ADD"
.S17:                   .string          "PAT$6$V0"
.S18:                   .string          "PAT$7$V0"
.S19:                   .string          "PAT$7$V1"
.S20:                   .string          "PAT$7$V2"
.S21:                   .string          "*EMIT"
.S22:                   .string          "PATV$0"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                        .byte            1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C1:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .text
                        .section         .note.GNU-stack,"",@progbits
