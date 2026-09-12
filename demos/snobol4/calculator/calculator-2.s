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
n38_match_defer_β:      mov              r11, 18;                             jmp   n37_match_assign_save_β
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
                        sub              rsp, 96
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   PAT$4_γ
n56_match_arbno_β:      mov              r11, 22
                        mov              rax, qword ptr [rbp + -48]
                        mov              r12, qword ptr [rax + 8];            jmp   n57_match_alternate_α
.Lmatch_arbno_γ_56_as:  mov              r11, 22
                        mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n57_match_alternate_β
                        sub              rsp, 96
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              rax, qword ptr [rbp + -112]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rbp + -104]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rbp + -96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rbp + -88]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rbp + -80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rbp + -72]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rbp + -56]
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   PAT$4_γ
.Lmatch_arbno_γ_56_af:  mov              r11, 22
.Lmatch_arbno_ω_56_af:  mov              r11, 22
                        mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -48], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_68_3
                        mov              rax, qword ptr [rcx + 32]
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [rcx + 40]
                        mov              qword ptr [rbp + -104], rax
                        mov              rax, qword ptr [rcx + 48]
                        mov              qword ptr [rbp + -96], rax
                        mov              rax, qword ptr [rcx + 56]
                        mov              qword ptr [rbp + -88], rax
                        mov              rax, qword ptr [rcx + 64]
                        mov              qword ptr [rbp + -80], rax
                        mov              rax, qword ptr [rcx + 72]
                        mov              qword ptr [rbp + -72], rax
                        mov              rax, qword ptr [rcx + 80]
                        mov              qword ptr [rbp + -64], rax
                        mov              rax, qword ptr [rcx + 88]
                        mov              qword ptr [rbp + -56], rax
                        lea              rsp, [rcx + 96];                     jmp   n57_match_alternate_β
.Lmatch_arbno_β_68_3:   lea              rsp, [rcx + 96];                     jmp   n55_match_defer_β
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
                        sub              rsp, 96
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   PAT$5_γ
n86_match_arbno_β:      mov              r11, 33
                        mov              rax, qword ptr [rbp + -48]
                        mov              r12, qword ptr [rax + 8];            jmp   n87_match_alternate_α
.Lmatch_arbno_γ_86_as:  mov              r11, 33
                        mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n87_match_alternate_β
                        sub              rsp, 96
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              rax, qword ptr [rbp + -112]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rbp + -104]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rbp + -96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rbp + -88]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rbp + -80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rbp + -72]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rbp + -56]
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   PAT$5_γ
.Lmatch_arbno_γ_86_af:  mov              r11, 33
.Lmatch_arbno_ω_86_af:  mov              r11, 33
                        mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -48], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_98_3
                        mov              rax, qword ptr [rcx + 32]
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [rcx + 40]
                        mov              qword ptr [rbp + -104], rax
                        mov              rax, qword ptr [rcx + 48]
                        mov              qword ptr [rbp + -96], rax
                        mov              rax, qword ptr [rcx + 56]
                        mov              qword ptr [rbp + -88], rax
                        mov              rax, qword ptr [rcx + 64]
                        mov              qword ptr [rbp + -80], rax
                        mov              rax, qword ptr [rcx + 72]
                        mov              qword ptr [rbp + -72], rax
                        mov              rax, qword ptr [rcx + 80]
                        mov              qword ptr [rbp + -64], rax
                        mov              rax, qword ptr [rcx + 88]
                        mov              qword ptr [rbp + -56], rax
                        lea              rsp, [rcx + 96];                     jmp   n87_match_alternate_β
.Lmatch_arbno_β_98_3:   lea              rsp, [rcx + 96];                     jmp   n85_match_defer_β
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
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   n122_match_rpos_α
n121_match_arbno_β:     mov              r11, 46
                        mov              rax, qword ptr [rbp + -48]
                        mov              r12, qword ptr [rax + 8];            jmp   n123_match_defer_α
.Lmatch_arbno_γ_121_as: mov              r11, 46
                        mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n126_match_defer_β
                        sub              rsp, 64
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              rax, qword ptr [rbp + -80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rbp + -72]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rbp + -56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   n122_match_rpos_α
.Lmatch_arbno_γ_121_af: mov              r11, 46
.Lmatch_arbno_ω_121_af: mov              r11, 46
                        mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -48], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_130_3
                        mov              rax, qword ptr [rcx + 32]
                        mov              qword ptr [rbp + -80], rax
                        mov              rax, qword ptr [rcx + 40]
                        mov              qword ptr [rbp + -72], rax
                        mov              rax, qword ptr [rcx + 48]
                        mov              qword ptr [rbp + -64], rax
                        mov              rax, qword ptr [rcx + 56]
                        mov              qword ptr [rbp + -56], rax
                        lea              rsp, [rcx + 64];                     jmp   n126_match_defer_β
.Lmatch_arbno_β_130_3:  lea              rsp, [rcx + 64];                     jmp   n120_match_pos_β
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
                        lea              rdi, [rip + __label_names]
                        mov              esi, 11
                        call             rt_label_table_install@PLT
                        mov              rdi, qword ptr [rsp]
                        mov              rdi, qword ptr [rdi]
                        call             rt_main_progname_stage@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rax, [rip + .Llevel_zero_return]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Llevel_zero_return:    call             rt_kw_return_level_zero@PLT
                        ud2
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
                        .section         .rodata
.Llbln0:                .string          "EMIT"
.Llbln1:                .string          "PSH"
.Llbln2:                .string          "DRF"
.Llbln3:                .string          "ADD"
.Llbln4:                .string          "SUB"
.Llbln5:                .string          "MUL"
.Llbln6:                .string          "DIV"
.Llbln7:                .string          "SGN"
.Llbln8:                .string          "FNS_end"
.Llbln9:                .string          "bad"
.Llbln10:               .string          "END"
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .quad            .Llbln2
                        .quad            .Llbln3
                        .quad            .Llbln4
                        .quad            .Llbln5
                        .quad            .Llbln6
                        .quad            .Llbln7
                        .quad            .Llbln8
                        .quad            .Llbln9
                        .quad            .Llbln10
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
                        .type            n139_lit_integer_bx, @function
n139_lit_integer_bx:
#=======================================================================================================================
#         DEFINE('EMIT()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n139_lit_integer_α:     sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_577_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n140_lit_integer_α
.Llit_integer_α_577_0:  .quad            18446744073709551615
                        .size            n139_lit_integer_bx, .-n139_lit_integer_bx
                        .type            n140_lit_integer_bx, @function
n140_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:     sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_578_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n141_lit_string_α
.Llit_integer_α_578_0:  .quad            0
                        .size            n140_lit_integer_bx, .-n140_lit_integer_bx
                        .type            n141_lit_string_bx, @function
n141_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:      sub              rsp, 16
                        mov              r11, 55
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 35
                        mov              rax, qword ptr [rip + .Llit_string_α_579_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n142_call_α
.Llit_string_α_579_0:   .quad            .Llit_string_α_579_0_s
.Llit_string_α_579_0_s: .string          "snobol4/calculator/calculator-2.sno"
                        .size            n141_lit_string_bx, .-n141_lit_string_bx
                        .type            n142_call_bx, @function
n142_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_call_α:            sub              rsp, 16
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
.Lcall_α_rkfnzd581:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd581]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_580_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n143_stmt_mark_α
.Lcall_α_580_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_stmt_mark_α
n142_call_β:            mov              r11, 56
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n143_stmt_mark_α
                        .size            n142_call_bx, .-n142_call_bx
                        .type            n143_stmt_mark_bx, @function
n143_stmt_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_stmt_mark_α:       mov              r11, 57
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 1
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 28
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n144_statement_begin_α
                        .size            n143_stmt_mark_bx, .-n143_stmt_mark_bx
                        .type            n144_statement_begin_bx, @function
n144_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_begin_α: mov              r11, 58
                        mov              r10, 1;                              jmp   n145_define_α
n144_statement_begin_β: mov              r11, 58
                        add              rsp, 64;                             jmp   n147_stmt_mark_α
                        .size            n144_statement_begin_bx, .-n144_statement_begin_bx
                        .type            n145_define_bx, @function
n145_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_define_α:          mov              r11, 59
                        mov              rdi, qword ptr [rip + .Ldefine_α_587_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_587_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_587_0]
                        lea              rsi, [rip + EMIT_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__EMIT]
                        mov              rcx, qword ptr [rip + body_cell$EMIT@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n146_statement_end_α
n145_define_β:          mov              r11, 59;                             jmp   n144_statement_begin_β
.Ldefine_α_587_0:       .quad            .Ldefine_α_587_0_s
.Ldefine_α_587_0_s:     .string          "EMIT"
.Ldefine_α_587_1:       .quad            .Ldefine_α_587_1_s
.Ldefine_α_587_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_588_245
#-----------------------------------------------------------------------------------------------------------------------
EMIT_α:                 sub              rsp, 48
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 0]              # EMIT
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 8], rax
                        pop              rcx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jg    .Ldefine_α_588_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_588_230
.Ldefine_α_588_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_588_232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_588_230:                                                           jmp   .Ldefine_α_588_231
.Ldefine_α_588_232:     .quad            .Ldefine_α_588_232_s
.Ldefine_α_588_232_s:   .string          "EMIT"
.Ldefine_α_588_231:     lea              rcx, [rip + EMIT_γ]
                        lea              rax, [rip + EMIT_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$EMIT:         .quad            LBL__EMIT
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$EMIT@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
EMIT_γ:                 mov              rdi, qword ptr [r9 + 0]
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_588_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_588_235
.Ldefine_α_588_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_588_237]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rsi
                        pop              rdi
.Ldefine_α_588_235:                                                           jmp   .Ldefine_α_588_236
.Ldefine_α_588_237:     .quad            .Ldefine_α_588_237_s
.Ldefine_α_588_237_s:   .string          "EMIT"
.Ldefine_α_588_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
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
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_588_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_588_249
.Ldefine_α_588_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_588_237]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_588_249:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_588_245:
                        .size            n145_define_bx, .-n145_define_bx
                        .type            n146_statement_end_bx, @function
n146_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_end_α:   mov              r11, 60
                        mov              r10, 1
                        add              rsp, 64;                             jmp   n147_stmt_mark_α
                        .size            n146_statement_end_bx, .-n146_statement_end_bx
                        .type            n147_stmt_mark_bx, @function
n147_stmt_mark_bx:
#=======================================================================================================================
#         DEFINE('PSH()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 29 0
n147_stmt_mark_α:       mov              r11, 61
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 29
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n148_statement_begin_α
                        .size            n147_stmt_mark_bx, .-n147_stmt_mark_bx
                        .type            n148_statement_begin_bx, @function
n148_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_begin_α: mov              r11, 62
                        mov              r10, 2;                              jmp   n149_define_α
n148_statement_begin_β: mov              r11, 62;                             jmp   n151_stmt_mark_α
                        .size            n148_statement_begin_bx, .-n148_statement_begin_bx
                        .type            n149_define_bx, @function
n149_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_define_α:          mov              r11, 63
                        mov              rdi, qword ptr [rip + .Ldefine_α_596_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_596_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_596_0]
                        lea              rsi, [rip + PSH_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__PSH]
                        mov              rcx, qword ptr [rip + body_cell$PSH@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n150_statement_end_α
n149_define_β:          mov              r11, 63;                             jmp   n148_statement_begin_β
.Ldefine_α_596_0:       .quad            .Ldefine_α_596_0_s
.Ldefine_α_596_0_s:     .string          "PSH"
.Ldefine_α_596_1:       .quad            .Ldefine_α_596_1_s
.Ldefine_α_596_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_597_245
#-----------------------------------------------------------------------------------------------------------------------
PSH_α:                  sub              rsp, 48
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 16]             # PSH
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 8], rax
                        pop              rcx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jg    .Ldefine_α_597_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_597_230
.Ldefine_α_597_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_597_232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_597_230:                                                           jmp   .Ldefine_α_597_231
.Ldefine_α_597_232:     .quad            .Ldefine_α_597_232_s
.Ldefine_α_597_232_s:   .string          "PSH"
.Ldefine_α_597_231:     lea              rcx, [rip + PSH_γ]
                        lea              rax, [rip + PSH_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$PSH:          .quad            LBL__PSH
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$PSH@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
PSH_γ:                  mov              rdi, qword ptr [r9 + 16]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_597_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_597_235
.Ldefine_α_597_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_597_237]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rsi
                        pop              rdi
.Ldefine_α_597_235:                                                           jmp   .Ldefine_α_597_236
.Ldefine_α_597_237:     .quad            .Ldefine_α_597_237_s
.Ldefine_α_597_237_s:   .string          "PSH"
.Ldefine_α_597_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 24], rax
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
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
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_597_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_597_249
.Ldefine_α_597_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_597_237]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_597_249:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_597_245:
                        .size            n149_define_bx, .-n149_define_bx
                        .type            n150_statement_end_bx, @function
n150_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_end_α:   mov              r11, 64
                        mov              r10, 2;                              jmp   n151_stmt_mark_α
                        .size            n150_statement_end_bx, .-n150_statement_end_bx
                        .type            n151_stmt_mark_bx, @function
n151_stmt_mark_bx:
#=======================================================================================================================
#         DEFINE('DRF(nm)')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n151_stmt_mark_α:       mov              r11, 65
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 30
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n152_statement_begin_α
                        .size            n151_stmt_mark_bx, .-n151_stmt_mark_bx
                        .type            n152_statement_begin_bx, @function
n152_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_begin_α: mov              r11, 66
                        mov              r10, 3;                              jmp   n153_define_α
n152_statement_begin_β: mov              r11, 66;                             jmp   n155_stmt_mark_α
                        .size            n152_statement_begin_bx, .-n152_statement_begin_bx
                        .type            n153_define_bx, @function
n153_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_define_α:          mov              r11, 67
                        mov              rdi, qword ptr [rip + .Ldefine_α_605_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_605_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_605_0]
                        lea              rsi, [rip + DRF_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__DRF]
                        mov              rcx, qword ptr [rip + body_cell$DRF@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n154_statement_end_α
n153_define_β:          mov              r11, 67;                             jmp   n152_statement_begin_β
.Ldefine_α_605_0:       .quad            .Ldefine_α_605_0_s
.Ldefine_α_605_0_s:     .string          "DRF"
.Ldefine_α_605_1:       .quad            .Ldefine_α_605_1_s
.Ldefine_α_605_1_s:     .string          "nm"
                                                                              jmp   .Ldefine_α_606_245
#-----------------------------------------------------------------------------------------------------------------------
DRF_α:                  sub              rsp, 64
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 32]             # DRF
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_606_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # nm
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_606_41
.Ldefine_α_606_10:      mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Ldefine_α_606_41:      push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 8], rax
                        pop              rcx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jg    .Ldefine_α_606_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_606_230
.Ldefine_α_606_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_606_232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_606_230:                                                           jmp   .Ldefine_α_606_231
.Ldefine_α_606_232:     .quad            .Ldefine_α_606_232_s
.Ldefine_α_606_232_s:   .string          "DRF"
.Ldefine_α_606_231:     lea              rcx, [rip + DRF_γ]
                        lea              rax, [rip + DRF_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$DRF:          .quad            LBL__DRF
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$DRF@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
DRF_γ:                  mov              rdi, qword ptr [r9 + 32]             # DRF
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_606_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_606_235
.Ldefine_α_606_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_606_237]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rsi
                        pop              rdi
.Ldefine_α_606_235:                                                           jmp   .Ldefine_α_606_236
.Ldefine_α_606_237:     .quad            .Ldefine_α_606_237_s
.Ldefine_α_606_237_s:   .string          "DRF"
.Ldefine_α_606_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_606_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Ldefine_α_606_110
.Ldefine_α_606_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Ldefine_α_606_110:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Ldefine_α_606_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Ldefine_α_606_180
.Ldefine_α_606_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Ldefine_α_606_180:     mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_606_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_606_249
.Ldefine_α_606_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_606_237]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_606_249:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_606_245:
                        .size            n153_define_bx, .-n153_define_bx
                        .type            n154_statement_end_bx, @function
n154_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_end_α:   mov              r11, 68
                        mov              r10, 3;                              jmp   n155_stmt_mark_α
                        .size            n154_statement_end_bx, .-n154_statement_end_bx
                        .type            n155_stmt_mark_bx, @function
n155_stmt_mark_bx:
#=======================================================================================================================
#         DEFINE('ADD()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n155_stmt_mark_α:       mov              r11, 69
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 31
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n156_statement_begin_α
                        .size            n155_stmt_mark_bx, .-n155_stmt_mark_bx
                        .type            n156_statement_begin_bx, @function
n156_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_begin_α: mov              r11, 70
                        mov              r10, 4;                              jmp   n157_define_α
n156_statement_begin_β: mov              r11, 70;                             jmp   n159_stmt_mark_α
                        .size            n156_statement_begin_bx, .-n156_statement_begin_bx
                        .type            n157_define_bx, @function
n157_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_define_α:          mov              r11, 71
                        mov              rdi, qword ptr [rip + .Ldefine_α_614_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_614_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_614_0]
                        lea              rsi, [rip + ADD_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__ADD]
                        mov              rcx, qword ptr [rip + body_cell$ADD@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n158_statement_end_α
n157_define_β:          mov              r11, 71;                             jmp   n156_statement_begin_β
.Ldefine_α_614_0:       .quad            .Ldefine_α_614_0_s
.Ldefine_α_614_0_s:     .string          "ADD"
.Ldefine_α_614_1:       .quad            .Ldefine_α_614_1_s
.Ldefine_α_614_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_615_245
#-----------------------------------------------------------------------------------------------------------------------
ADD_α:                  sub              rsp, 48
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 64]             # ADD
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 64], 0
                        mov              qword ptr [r9 + 72], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 8], rax
                        pop              rcx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jg    .Ldefine_α_615_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_615_230
.Ldefine_α_615_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_615_232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_615_230:                                                           jmp   .Ldefine_α_615_231
.Ldefine_α_615_232:     .quad            .Ldefine_α_615_232_s
.Ldefine_α_615_232_s:   .string          "ADD"
.Ldefine_α_615_231:     lea              rcx, [rip + ADD_γ]
                        lea              rax, [rip + ADD_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$ADD:          .quad            LBL__ADD
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$ADD@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
ADD_γ:                  mov              rdi, qword ptr [r9 + 64]
                        mov              rsi, qword ptr [r9 + 72]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_615_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_615_235
.Ldefine_α_615_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_615_237]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rsi
                        pop              rdi
.Ldefine_α_615_235:                                                           jmp   .Ldefine_α_615_236
.Ldefine_α_615_237:     .quad            .Ldefine_α_615_237_s
.Ldefine_α_615_237_s:   .string          "ADD"
.Ldefine_α_615_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
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
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_615_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_615_249
.Ldefine_α_615_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_615_237]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_615_249:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_615_245:
                        .size            n157_define_bx, .-n157_define_bx
                        .type            n158_statement_end_bx, @function
n158_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_end_α:   mov              r11, 72
                        mov              r10, 4;                              jmp   n159_stmt_mark_α
                        .size            n158_statement_end_bx, .-n158_statement_end_bx
                        .type            n159_stmt_mark_bx, @function
n159_stmt_mark_bx:
#=======================================================================================================================
#         DEFINE('SUB()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 32 0
n159_stmt_mark_α:       mov              r11, 73
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 32
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n160_statement_begin_α
                        .size            n159_stmt_mark_bx, .-n159_stmt_mark_bx
                        .type            n160_statement_begin_bx, @function
n160_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_begin_α: mov              r11, 74
                        mov              r10, 5;                              jmp   n161_define_α
n160_statement_begin_β: mov              r11, 74;                             jmp   n163_stmt_mark_α
                        .size            n160_statement_begin_bx, .-n160_statement_begin_bx
                        .type            n161_define_bx, @function
n161_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_define_α:          mov              r11, 75
                        mov              rdi, qword ptr [rip + .Ldefine_α_623_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_623_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_623_0]
                        lea              rsi, [rip + SUB_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__SUB]
                        mov              rcx, qword ptr [rip + body_cell$SUB@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n162_statement_end_α
n161_define_β:          mov              r11, 75;                             jmp   n160_statement_begin_β
.Ldefine_α_623_0:       .quad            .Ldefine_α_623_0_s
.Ldefine_α_623_0_s:     .string          "SUB"
.Ldefine_α_623_1:       .quad            .Ldefine_α_623_1_s
.Ldefine_α_623_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_624_245
#-----------------------------------------------------------------------------------------------------------------------
SUB_α:                  sub              rsp, 48
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 80]             # SUB
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 8], rax
                        pop              rcx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jg    .Ldefine_α_624_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_624_230
.Ldefine_α_624_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_624_232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_624_230:                                                           jmp   .Ldefine_α_624_231
.Ldefine_α_624_232:     .quad            .Ldefine_α_624_232_s
.Ldefine_α_624_232_s:   .string          "SUB"
.Ldefine_α_624_231:     lea              rcx, [rip + SUB_γ]
                        lea              rax, [rip + SUB_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$SUB:          .quad            LBL__SUB
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$SUB@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
SUB_γ:                  mov              rdi, qword ptr [r9 + 80]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_624_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_624_235
.Ldefine_α_624_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_624_237]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rsi
                        pop              rdi
.Ldefine_α_624_235:                                                           jmp   .Ldefine_α_624_236
.Ldefine_α_624_237:     .quad            .Ldefine_α_624_237_s
.Ldefine_α_624_237_s:   .string          "SUB"
.Ldefine_α_624_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 88], rax
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
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
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_624_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_624_249
.Ldefine_α_624_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_624_237]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_624_249:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_624_245:
                        .size            n161_define_bx, .-n161_define_bx
                        .type            n162_statement_end_bx, @function
n162_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_end_α:   mov              r11, 76
                        mov              r10, 5;                              jmp   n163_stmt_mark_α
                        .size            n162_statement_end_bx, .-n162_statement_end_bx
                        .type            n163_stmt_mark_bx, @function
n163_stmt_mark_bx:
#=======================================================================================================================
#         DEFINE('MUL()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n163_stmt_mark_α:       mov              r11, 77
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 33
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n164_statement_begin_α
                        .size            n163_stmt_mark_bx, .-n163_stmt_mark_bx
                        .type            n164_statement_begin_bx, @function
n164_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_begin_α: mov              r11, 78
                        mov              r10, 6;                              jmp   n165_define_α
n164_statement_begin_β: mov              r11, 78;                             jmp   n167_stmt_mark_α
                        .size            n164_statement_begin_bx, .-n164_statement_begin_bx
                        .type            n165_define_bx, @function
n165_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_define_α:          mov              r11, 79
                        mov              rdi, qword ptr [rip + .Ldefine_α_632_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_632_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_632_0]
                        lea              rsi, [rip + MUL_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__MUL]
                        mov              rcx, qword ptr [rip + body_cell$MUL@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n166_statement_end_α
n165_define_β:          mov              r11, 79;                             jmp   n164_statement_begin_β
.Ldefine_α_632_0:       .quad            .Ldefine_α_632_0_s
.Ldefine_α_632_0_s:     .string          "MUL"
.Ldefine_α_632_1:       .quad            .Ldefine_α_632_1_s
.Ldefine_α_632_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_633_245
#-----------------------------------------------------------------------------------------------------------------------
MUL_α:                  sub              rsp, 48
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 96]             # MUL
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 96], 0
                        mov              qword ptr [r9 + 104], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 8], rax
                        pop              rcx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jg    .Ldefine_α_633_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_633_230
.Ldefine_α_633_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_633_232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_633_230:                                                           jmp   .Ldefine_α_633_231
.Ldefine_α_633_232:     .quad            .Ldefine_α_633_232_s
.Ldefine_α_633_232_s:   .string          "MUL"
.Ldefine_α_633_231:     lea              rcx, [rip + MUL_γ]
                        lea              rax, [rip + MUL_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$MUL:          .quad            LBL__MUL
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$MUL@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
MUL_γ:                  mov              rdi, qword ptr [r9 + 96]
                        mov              rsi, qword ptr [r9 + 104]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_633_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_633_235
.Ldefine_α_633_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_633_237]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rsi
                        pop              rdi
.Ldefine_α_633_235:                                                           jmp   .Ldefine_α_633_236
.Ldefine_α_633_237:     .quad            .Ldefine_α_633_237_s
.Ldefine_α_633_237_s:   .string          "MUL"
.Ldefine_α_633_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
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
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_633_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_633_249
.Ldefine_α_633_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_633_237]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_633_249:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_633_245:
                        .size            n165_define_bx, .-n165_define_bx
                        .type            n166_statement_end_bx, @function
n166_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_end_α:   mov              r11, 80
                        mov              r10, 6;                              jmp   n167_stmt_mark_α
                        .size            n166_statement_end_bx, .-n166_statement_end_bx
                        .type            n167_stmt_mark_bx, @function
n167_stmt_mark_bx:
#=======================================================================================================================
#         DEFINE('DIV()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n167_stmt_mark_α:       mov              r11, 81
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 34
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n168_statement_begin_α
                        .size            n167_stmt_mark_bx, .-n167_stmt_mark_bx
                        .type            n168_statement_begin_bx, @function
n168_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_begin_α: mov              r11, 82
                        mov              r10, 7;                              jmp   n169_define_α
n168_statement_begin_β: mov              r11, 82;                             jmp   n171_stmt_mark_α
                        .size            n168_statement_begin_bx, .-n168_statement_begin_bx
                        .type            n169_define_bx, @function
n169_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_define_α:          mov              r11, 83
                        mov              rdi, qword ptr [rip + .Ldefine_α_641_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_641_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_641_0]
                        lea              rsi, [rip + DIV_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__DIV]
                        mov              rcx, qword ptr [rip + body_cell$DIV@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n170_statement_end_α
n169_define_β:          mov              r11, 83;                             jmp   n168_statement_begin_β
.Ldefine_α_641_0:       .quad            .Ldefine_α_641_0_s
.Ldefine_α_641_0_s:     .string          "DIV"
.Ldefine_α_641_1:       .quad            .Ldefine_α_641_1_s
.Ldefine_α_641_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_642_245
#-----------------------------------------------------------------------------------------------------------------------
DIV_α:                  sub              rsp, 48
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 112]            # DIV
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 112], 0
                        mov              qword ptr [r9 + 120], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 8], rax
                        pop              rcx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jg    .Ldefine_α_642_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_642_230
.Ldefine_α_642_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_642_232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_642_230:                                                           jmp   .Ldefine_α_642_231
.Ldefine_α_642_232:     .quad            .Ldefine_α_642_232_s
.Ldefine_α_642_232_s:   .string          "DIV"
.Ldefine_α_642_231:     lea              rcx, [rip + DIV_γ]
                        lea              rax, [rip + DIV_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$DIV:          .quad            LBL__DIV
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$DIV@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
DIV_γ:                  mov              rdi, qword ptr [r9 + 112]
                        mov              rsi, qword ptr [r9 + 120]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_642_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_642_235
.Ldefine_α_642_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_642_237]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rsi
                        pop              rdi
.Ldefine_α_642_235:                                                           jmp   .Ldefine_α_642_236
.Ldefine_α_642_237:     .quad            .Ldefine_α_642_237_s
.Ldefine_α_642_237_s:   .string          "DIV"
.Ldefine_α_642_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
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
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_642_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_642_249
.Ldefine_α_642_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_642_237]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_642_249:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_642_245:
                        .size            n169_define_bx, .-n169_define_bx
                        .type            n170_statement_end_bx, @function
n170_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   mov              r11, 84
                        mov              r10, 7;                              jmp   n171_stmt_mark_α
                        .size            n170_statement_end_bx, .-n170_statement_end_bx
                        .type            n171_stmt_mark_bx, @function
n171_stmt_mark_bx:
#=======================================================================================================================
#         DEFINE('SGN()p1')                       :(FNS_end)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n171_stmt_mark_α:       mov              r11, 85
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 35
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n172_statement_begin_α
                        .size            n171_stmt_mark_bx, .-n171_stmt_mark_bx
                        .type            n172_statement_begin_bx, @function
n172_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_begin_α: mov              r11, 86
                        mov              r10, 8;                              jmp   n173_define_α
n172_statement_begin_β: mov              r11, 86;                             jmp   n175_stmt_mark_α
                        .size            n172_statement_begin_bx, .-n172_statement_begin_bx
                        .type            n173_define_bx, @function
n173_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_define_α:          mov              r11, 87
                        mov              rdi, qword ptr [rip + .Ldefine_α_650_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_650_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_650_0]
                        lea              rsi, [rip + SGN_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__SGN]
                        mov              rcx, qword ptr [rip + body_cell$SGN@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n174_statement_end_α
n173_define_β:          mov              r11, 87;                             jmp   n172_statement_begin_β
.Ldefine_α_650_0:       .quad            .Ldefine_α_650_0_s
.Ldefine_α_650_0_s:     .string          "SGN"
.Ldefine_α_650_1:       .quad            .Ldefine_α_650_1_s
.Ldefine_α_650_1_s:     .string          "p1"
                                                                              jmp   .Ldefine_α_651_245
#-----------------------------------------------------------------------------------------------------------------------
SGN_α:                  sub              rsp, 64
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 128]            # SGN
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 128], 0
                        mov              qword ptr [r9 + 136], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_651_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 144]            # p1
                        mov              qword ptr [r9 + 144], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 152]
                        mov              qword ptr [r9 + 152], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_651_41
.Ldefine_α_651_10:      mov              rax, qword ptr [r9 + 144]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 144], 0
                        mov              qword ptr [r9 + 152], 0
.Ldefine_α_651_41:      push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 8], rax
                        pop              rcx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jg    .Ldefine_α_651_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_651_230
.Ldefine_α_651_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_651_232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_651_230:                                                           jmp   .Ldefine_α_651_231
.Ldefine_α_651_232:     .quad            .Ldefine_α_651_232_s
.Ldefine_α_651_232_s:   .string          "SGN"
.Ldefine_α_651_231:     lea              rcx, [rip + SGN_γ]
                        lea              rax, [rip + SGN_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$SGN:          .quad            LBL__SGN
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$SGN@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
SGN_γ:                  mov              rdi, qword ptr [r9 + 128]            # SGN
                        mov              rsi, qword ptr [r9 + 136]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_651_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_651_235
.Ldefine_α_651_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_651_237]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rsi
                        pop              rdi
.Ldefine_α_651_235:                                                           jmp   .Ldefine_α_651_236
.Ldefine_α_651_237:     .quad            .Ldefine_α_651_237_s
.Ldefine_α_651_237_s:   .string          "SGN"
.Ldefine_α_651_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_651_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 144], rax            # p1
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 152], rax;           jmp   .Ldefine_α_651_110
.Ldefine_α_651_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 152], rax
.Ldefine_α_651_110:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Ldefine_α_651_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 144], rax            # p1
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 152], rax;           jmp   .Ldefine_α_651_180
.Ldefine_α_651_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 152], rax
.Ldefine_α_651_180:     mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_651_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_651_249
.Ldefine_α_651_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_651_237]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_651_249:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_651_245:
                        .size            n173_define_bx, .-n173_define_bx
                        .type            n174_statement_end_bx, @function
n174_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_end_α:   mov              r11, 88
                        mov              r10, 8;                              jmp   n175_stmt_mark_α
                        .size            n174_statement_end_bx, .-n174_statement_end_bx
                        .type            n175_stmt_mark_bx, @function
n175_stmt_mark_bx:
#=======================================================================================================================
# FNS_end
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 55 0
n175_stmt_mark_α:       mov              r11, 89
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 28
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 55
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n363_statement_begin_α
                        .size            n175_stmt_mark_bx, .-n175_stmt_mark_bx
                        .type            n176_statement_begin_bx, @function
n176_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_begin_α: mov              r11, 90
                        mov              r10, 9;                              jmp   n177_var_α
n176_statement_begin_β: mov              r11, 90;                             jmp   n184_stmt_mark_α
                        .size            n176_statement_begin_bx, .-n176_statement_begin_bx
                        .type            n177_var_bx, @function
n177_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:             sub              rsp, 16
                        mov              r11, 91
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n178_lit_integer_α
                        .size            n177_var_bx, .-n177_var_bx
                        .type            n178_lit_integer_bx, @function
n178_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_integer_α:     sub              rsp, 16
                        mov              r11, 92
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_659_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n179_subscript_α
n178_lit_integer_β:     mov              r11, 92
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n176_statement_begin_β
.Llit_integer_α_659_0:  .quad            1
                        .size            n178_lit_integer_bx, .-n178_lit_integer_bx
                        .type            n179_subscript_bx, @function
n179_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_subscript_α:       sub              rsp, 16
                        mov              r11, 93
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
                        cmp              al, 104;                             jne   .Lsubscript_α_660_240
                        add              rsp, 16;                             jmp   n178_lit_integer_β
.Lsubscript_α_660_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n180_deref_α
n179_subscript_β:       mov              r11, 93
                        add              rsp, 16;                             jmp   n178_lit_integer_β
                        .size            n179_subscript_bx, .-n179_subscript_bx
                        .type            n180_deref_bx, @function
n180_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_deref_α:           sub              rsp, 16
                        mov              r11, 94
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
                        cmp              al, 104;                             jne   .Lderef_α_661_240
                        add              rsp, 16;                             jmp   n179_subscript_β
.Lderef_α_661_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n181_call_α
n180_deref_β:           mov              r11, 94
                        add              rsp, 16;                             jmp   n179_subscript_β
                        .size            n180_deref_bx, .-n180_deref_bx
                        .type            n181_call_bx, @function
n181_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_call_α:            sub              rsp, 16
                        mov              r11, 95
                        lea              rcx, [rip + .Lcall_α_sig663z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig663z:       .quad            1
                        .quad            .Lcall_α_663_2
                        .quad            .Lcall_α_663_2
                        .quad            16
.Lcall_α_663_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_663_29
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
.Lcall_α_663_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_663_240
                        add              rsp, 16;                             jmp   n180_deref_β
.Lcall_α_663_240:                                                             jmp   n182_assign_α
n181_call_β:            mov              r11, 95;                             jmp   n180_deref_β
.Lcall_β_663_0:         .quad            .Lcall_β_663_0_s
.Lcall_β_663_0_s:       .string          "DRF"
                        .size            n181_call_bx, .-n181_call_bx
                        .type            n182_assign_bx, @function
n182_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_assign_α:          mov              r11, 96
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_664_0]
                        .section         .rodata
.Lassign_α_664_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_664_1_s]
                        mov              r8, 55
                        mov              r9, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_664_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n183_statement_end_α
.Lassign_α_664_0:       .quad            .Lassign_α_664_0_s
.Lassign_α_664_0_s:     .string          "OUTPUT"
                        .size            n182_assign_bx, .-n182_assign_bx
                        .type            n183_statement_end_bx, @function
n183_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_end_α:   mov              r11, 97
                        mov              r10, 9
                        add              rsp, 80;                             jmp   n184_stmt_mark_α
                        .size            n183_statement_end_bx, .-n183_statement_end_bx
                        .type            n184_stmt_mark_bx, @function
n184_stmt_mark_bx:
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n184_stmt_mark_α:       mov              r11, 98
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 37
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n185_statement_begin_α
                        .size            n184_stmt_mark_bx, .-n184_stmt_mark_bx
                        .type            n185_statement_begin_bx, @function
n185_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_statement_begin_α: mov              r11, 99
                        mov              r10, 10;                             jmp   n186_lit_integer_α
n185_statement_begin_β: mov              r11, 99;                             jmp   n189_stmt_mark_α
                        .size            n185_statement_begin_bx, .-n185_statement_begin_bx
                        .type            n186_lit_integer_bx, @function
n186_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:     sub              rsp, 16
                        mov              r11, 100
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_671_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n187_assign_α
.Llit_integer_α_671_0:  .quad            0
                        .size            n186_lit_integer_bx, .-n186_lit_integer_bx
                        .type            n187_assign_bx, @function
n187_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_assign_α:          mov              r11, 101
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_672_0]
                        .section         .rodata
.Lassign_α_672_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_672_1_s]
                        mov              r8, 37
                        mov              r9, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n188_statement_end_α
.Lassign_α_672_0:       .quad            .Lassign_α_672_0_s
.Lassign_α_672_0_s:     .string          "sp"
                        .size            n187_assign_bx, .-n187_assign_bx
                        .type            n188_statement_end_bx, @function
n188_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_end_α:   mov              r11, 102
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n189_stmt_mark_α
                        .size            n188_statement_end_bx, .-n188_statement_end_bx
                        .type            n189_stmt_mark_bx, @function
n189_stmt_mark_bx:
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 38 0
n189_stmt_mark_α:       mov              r11, 103
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 38
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n190_statement_begin_α
                        .size            n189_stmt_mark_bx, .-n189_stmt_mark_bx
                        .type            n190_statement_begin_bx, @function
n190_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_begin_α: mov              r11, 104
                        mov              r10, 11;                             jmp   n191_lit_name_α
n190_statement_begin_β: mov              r11, 104;                            jmp   NRETURN
                        .size            n190_statement_begin_bx, .-n190_statement_begin_bx
                        .type            n191_lit_name_bx, @function
n191_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_name_α:        sub              rsp, 16
                        mov              r11, 105
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_679_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n192_assign_α
.Llit_name_α_679_0:     .quad            .Llit_name_α_679_0_s
.Llit_name_α_679_0_s:   .string          "dm"
                        .size            n191_lit_name_bx, .-n191_lit_name_bx
                        .type            n192_assign_bx, @function
n192_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_assign_α:          mov              r11, 106
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # EMIT
                        mov              qword ptr [r9 + 8], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_680_0]
                        .section         .rodata
.Lassign_α_680_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_680_1_s]
                        mov              r8, 38
                        mov              r9, 11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n193_statement_end_α
.Lassign_α_680_0:       .quad            .Lassign_α_680_0_s
.Lassign_α_680_0_s:     .string          "EMIT"
                        .size            n192_assign_bx, .-n192_assign_bx
                        .type            n193_statement_end_bx, @function
n193_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_statement_end_α:   mov              r11, 107
                        mov              r10, 11
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n193_statement_end_bx, .-n193_statement_end_bx
                        .type            n194_statement_begin_bx, @function
n194_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_begin_α: mov              r11, 108
                        mov              r10, 12;                             jmp   n195_var_α
n194_statement_begin_β: mov              r11, 108;                            jmp   NRETURN
                        .size            n194_statement_begin_bx, .-n194_statement_begin_bx
                        .type            n195_var_bx, @function
n195_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:             sub              rsp, 16
                        mov              r11, 109
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n196_var_α
                        .size            n195_var_bx, .-n195_var_bx
                        .type            n196_var_bx, @function
n196_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_var_α:             sub              rsp, 16
                        mov              r11, 110
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n197_lit_integer_α
n196_var_β:             mov              r11, 110
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n194_statement_begin_β
                        .size            n196_var_bx, .-n196_var_bx
                        .type            n197_lit_integer_bx, @function
n197_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:     sub              rsp, 16
                        mov              r11, 111
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_687_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n198_binop_α
n197_lit_integer_β:     mov              r11, 111
                        add              rsp, 16;                             jmp   n196_var_β
.Llit_integer_α_687_0:  .quad            1
                        .size            n197_lit_integer_bx, .-n197_lit_integer_bx
                        .type            n198_binop_bx, @function
n198_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_binop_α:           sub              rsp, 16
                        mov              r11, 112
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_688_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_688_7
.Lbinop_α_688_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_688_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_688_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_688_4
.Lbinop_α_688_3:        movq             xmm0, rsi
.Lbinop_α_688_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_688_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_688_7:                                                              jmp   n199_assign_α
.Lbinop_α_688_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_688_240
                        add              rsp, 16;                             jmp   n197_lit_integer_β
.Lbinop_α_688_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n199_assign_α
n198_binop_β:           mov              r11, 112
                        add              rsp, 16;                             jmp   n197_lit_integer_β
                        .size            n198_binop_bx, .-n198_binop_bx
                        .type            n199_assign_bx, @function
n199_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_assign_α:          mov              r11, 113
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_689_0]
                        .section         .rodata
.Lassign_α_689_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_689_1_s]
                        mov              r8, 38
                        mov              r9, 12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n200_subscript_α
.Lassign_α_689_0:       .quad            .Lassign_α_689_0_s
.Lassign_α_689_0_s:     .string          "sp"
                        .size            n199_assign_bx, .-n199_assign_bx
                        .type            n200_subscript_bx, @function
n200_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_subscript_α:       sub              rsp, 16
                        mov              r11, 114
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
                        cmp              al, 104;                             jne   .Lsubscript_α_690_240
                        add              rsp, 16;                             jmp   n198_binop_β
.Lsubscript_α_690_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n201_assign_α
                        .size            n200_subscript_bx, .-n200_subscript_bx
                        .type            n201_assign_bx, @function
n201_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_assign_α:          mov              r11, 115
                        mov              rax, qword ptr [rsp + 0]             # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # PSH
                        mov              qword ptr [r9 + 24], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_691_0]
                        .section         .rodata
.Lassign_α_691_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_691_1_s]
                        mov              r8, 38
                        mov              r9, 12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n202_statement_end_α
.Lassign_α_691_0:       .quad            .Lassign_α_691_0_s
.Lassign_α_691_0_s:     .string          "PSH"
                        .size            n201_assign_bx, .-n201_assign_bx
                        .type            n202_statement_end_bx, @function
n202_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_statement_end_α:   mov              r11, 116
                        mov              r10, 12
                        add              rsp, 80;                             jmp   NRETURN
                        .size            n202_statement_end_bx, .-n202_statement_end_bx
                        .type            n203_statement_begin_bx, @function
n203_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_statement_begin_α: mov              r11, 117
                        mov              r10, 13;                             jmp   n204_var_α
n203_statement_begin_β: mov              r11, 117;                            jmp   n207_stmt_mark_α
                        .size            n203_statement_begin_bx, .-n203_statement_begin_bx
                        .type            n204_var_bx, @function
n204_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_var_α:             sub              rsp, 16
                        mov              r11, 118
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n205_assign_α
                        .size            n204_var_bx, .-n204_var_bx
                        .type            n205_assign_bx, @function
n205_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_assign_α:          mov              r11, 119
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_697_0]
                        .section         .rodata
.Lassign_α_697_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_697_1_s]
                        mov              r8, 38
                        mov              r9, 13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n206_statement_end_α
.Lassign_α_697_0:       .quad            .Lassign_α_697_0_s
.Lassign_α_697_0_s:     .string          "DRF"
                        .size            n205_assign_bx, .-n205_assign_bx
                        .type            n206_statement_end_bx, @function
n206_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_end_α:   mov              r11, 120
                        mov              r10, 13
                        add              rsp, 16;                             jmp   n207_stmt_mark_α
                        .size            n206_statement_end_bx, .-n206_statement_end_bx
                        .type            n207_stmt_mark_bx, @function
n207_stmt_mark_bx:
#=======================================================================================================================
#         nm POS(0) ANY(&LCASE) RPOS(0)           :F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 41 0
n207_stmt_mark_α:       mov              r11, 121
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 41
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n208_statement_begin_α
                        .size            n207_stmt_mark_bx, .-n207_stmt_mark_bx
                        .type            n208_statement_begin_bx, @function
n208_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_statement_begin_α: mov              r11, 122
                        mov              r10, 14;                             jmp   n209_var_α
n208_statement_begin_β: mov              r11, 122;                            jmp   RETURN
                        .size            n208_statement_begin_bx, .-n208_statement_begin_bx
                        .type            n209_var_bx, @function
n209_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_var_α:             sub              rsp, 16
                        mov              r11, 123
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n210_match_begin_α
                        .size            n209_var_bx, .-n209_var_bx
                        .type            n210_match_begin_bx, @function
n210_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_match_begin_α:     mov              r11, 124
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
.Lmatch_begin_α_706_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_706_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n211_match_pos_α
n210_match_begin_β:     mov              r11, 124
.Lmatch_begin_α_706_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_706_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_706_1
                                                                              jmp   .Lmatch_begin_α_706_0
.Lmatch_begin_β_706_1:
.Lmatch_begin_γ_210_af: mov              r11, 124
.Lmatch_begin_ω_210_af: mov              r11, 124
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
                        .size            n210_match_begin_bx, .-n210_match_begin_bx
                        .type            n211_match_pos_bx, @function
n211_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_match_pos_α:       mov              r11, 125
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n210_match_begin_β
                                                                              jmp   n212_match_any_α
n211_match_pos_β:       mov              r11, 125;                            jmp   n210_match_begin_β
                        .size            n211_match_pos_bx, .-n211_match_pos_bx
                        .type            n212_match_any_bx, @function
n212_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_match_any_α:       mov              r11, 126
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n210_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n210_match_begin_β
                        add              r14d, 1;                             jmp   n213_match_rpos_α
n212_match_any_β:       mov              r11, 126
                        sub              r14d, 1;                             jmp   n210_match_begin_β
                        .size            n212_match_any_bx, .-n212_match_any_bx
                        .type            n213_match_rpos_bx, @function
n213_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_match_rpos_α:      mov              r11, 127
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n212_match_any_β
                                                                              jmp   n214_match_end_α
                        .size            n213_match_rpos_bx, .-n213_match_rpos_bx
                        .type            n214_match_end_bx, @function
n214_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_match_end_α:       mov              r11, 128
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
                        test             rax, rax;                            je    .Lmatch_end_α_712_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_210_af
.Lmatch_end_α_712_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n215_statement_end_α
                        .size            n214_match_end_bx, .-n214_match_end_bx
                        .type            n215_statement_end_bx, @function
n215_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_statement_end_α:   mov              r11, 129
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n216_stmt_mark_α
                        .size            n215_statement_end_bx, .-n215_statement_end_bx
                        .type            n216_stmt_mark_bx, @function
n216_stmt_mark_bx:
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 42 0
n216_stmt_mark_α:       mov              r11, 130
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 42
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n217_statement_begin_α
                        .size            n216_stmt_mark_bx, .-n216_stmt_mark_bx
                        .type            n217_statement_begin_bx, @function
n217_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_begin_α: mov              r11, 131
                        mov              r10, 15;                             jmp   n218_var_α
n217_statement_begin_β: mov              r11, 131;                            jmp   RETURN
                        .size            n217_statement_begin_bx, .-n217_statement_begin_bx
                        .type            n218_var_bx, @function
n218_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:             sub              rsp, 16
                        mov              r11, 132
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n219_var_α
                        .size            n218_var_bx, .-n218_var_bx
                        .type            n219_var_bx, @function
n219_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             sub              rsp, 16
                        mov              r11, 133
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_subscript_α
n219_var_β:             mov              r11, 133
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n217_statement_begin_β
                        .size            n219_var_bx, .-n219_var_bx
                        .type            n220_subscript_bx, @function
n220_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_subscript_α:       sub              rsp, 16
                        mov              r11, 134
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
                        cmp              al, 104;                             jne   .Lsubscript_α_721_240
                        add              rsp, 16;                             jmp   n219_var_β
.Lsubscript_α_721_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n221_deref_α
n220_subscript_β:       mov              r11, 134
                        add              rsp, 16;                             jmp   n219_var_β
                        .size            n220_subscript_bx, .-n220_subscript_bx
                        .type            n221_deref_bx, @function
n221_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_deref_α:           sub              rsp, 16
                        mov              r11, 135
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
                        cmp              al, 104;                             jne   .Lderef_α_722_240
                        add              rsp, 16;                             jmp   n220_subscript_β
.Lderef_α_722_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n222_assign_α
                        .size            n221_deref_bx, .-n221_deref_bx
                        .type            n222_assign_bx, @function
n222_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_assign_α:          mov              r11, 136
                        mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_723_0]
                        .section         .rodata
.Lassign_α_723_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_723_1_s]
                        mov              r8, 42
                        mov              r9, 15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n223_statement_end_α
.Lassign_α_723_0:       .quad            .Lassign_α_723_0_s
.Lassign_α_723_0_s:     .string          "DRF"
                        .size            n222_assign_bx, .-n222_assign_bx
                        .type            n223_statement_end_bx, @function
n223_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_end_α:   mov              r11, 137
                        mov              r10, 15
                        add              rsp, 64;                             jmp   RETURN
                        .size            n223_statement_end_bx, .-n223_statement_end_bx
                        .type            n224_statement_begin_bx, @function
n224_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_statement_begin_α: mov              r11, 138
                        mov              r10, 16;                             jmp   n225_var_α
n224_statement_begin_β: mov              r11, 138;                            jmp   n245_stmt_mark_α
                        .size            n224_statement_begin_bx, .-n224_statement_begin_bx
                        .type            n225_var_bx, @function
n225_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_var_α:             sub              rsp, 16
                        mov              r11, 139
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n226_var_α
                        .size            n225_var_bx, .-n225_var_bx
                        .type            n226_var_bx, @function
n226_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:             sub              rsp, 16
                        mov              r11, 140
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_lit_integer_α
n226_var_β:             mov              r11, 140
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n224_statement_begin_β
                        .size            n226_var_bx, .-n226_var_bx
                        .type            n227_lit_integer_bx, @function
n227_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_integer_α:     sub              rsp, 16
                        mov              r11, 141
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_730_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n228_binop_α
n227_lit_integer_β:     mov              r11, 141
                        add              rsp, 16;                             jmp   n226_var_β
.Llit_integer_α_730_0:  .quad            1
                        .size            n227_lit_integer_bx, .-n227_lit_integer_bx
                        .type            n228_binop_bx, @function
n228_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_binop_α:           sub              rsp, 16
                        mov              r11, 142
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_731_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_731_7
.Lbinop_α_731_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_731_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_731_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_731_4
.Lbinop_α_731_3:        movq             xmm0, rsi
.Lbinop_α_731_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_731_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_731_7:                                                              jmp   n229_assign_α
.Lbinop_α_731_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_731_240
                        add              rsp, 16;                             jmp   n227_lit_integer_β
.Lbinop_α_731_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n229_assign_α
n228_binop_β:           mov              r11, 142
                        add              rsp, 16;                             jmp   n227_lit_integer_β
                        .size            n228_binop_bx, .-n228_binop_bx
                        .type            n229_assign_bx, @function
n229_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_assign_α:          mov              r11, 143
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_732_0]
                        .section         .rodata
.Lassign_α_732_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_732_1_s]
                        mov              r8, 42
                        mov              r9, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n230_var_α
.Lassign_α_732_0:       .quad            .Lassign_α_732_0_s
.Lassign_α_732_0_s:     .string          "sp"
                        .size            n229_assign_bx, .-n229_assign_bx
                        .type            n230_var_bx, @function
n230_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_var_α:             sub              rsp, 16
                        mov              r11, 144
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n231_var_α
n230_var_β:             mov              r11, 144
                        add              rsp, 16;                             jmp   n228_binop_β
                        .size            n230_var_bx, .-n230_var_bx
                        .type            n231_var_bx, @function
n231_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:             sub              rsp, 16
                        mov              r11, 145
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n232_subscript_α
n231_var_β:             mov              r11, 145
                        add              rsp, 16;                             jmp   n230_var_β
                        .size            n231_var_bx, .-n231_var_bx
                        .type            n232_subscript_bx, @function
n232_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_subscript_α:       sub              rsp, 16
                        mov              r11, 146
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
                        cmp              al, 104;                             jne   .Lsubscript_α_735_240
                        add              rsp, 16;                             jmp   n231_var_β
.Lsubscript_α_735_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n233_deref_α
n232_subscript_β:       mov              r11, 146
                        add              rsp, 16;                             jmp   n231_var_β
                        .size            n232_subscript_bx, .-n232_subscript_bx
                        .type            n233_deref_bx, @function
n233_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_deref_α:           sub              rsp, 16
                        mov              r11, 147
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
                        cmp              al, 104;                             jne   .Lderef_α_736_240
                        add              rsp, 16;                             jmp   n232_subscript_β
.Lderef_α_736_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n234_call_α
n233_deref_β:           mov              r11, 147
                        add              rsp, 16;                             jmp   n232_subscript_β
                        .size            n233_deref_bx, .-n233_deref_bx
                        .type            n234_call_bx, @function
n234_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_call_α:            sub              rsp, 16
                        mov              r11, 148
                        lea              rcx, [rip + .Lcall_α_sig738z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig738z:       .quad            1
                        .quad            .Lcall_α_738_2
                        .quad            .Lcall_α_738_2
                        .quad            16
.Lcall_α_738_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_738_29
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
.Lcall_α_738_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_738_240
                        add              rsp, 16;                             jmp   n233_deref_β
.Lcall_α_738_240:                                                             jmp   n235_var_α
n234_call_β:            mov              r11, 148;                            jmp   n233_deref_β
.Lcall_β_738_0:         .quad            .Lcall_β_738_0_s
.Lcall_β_738_0_s:       .string          "DRF"
                        .size            n234_call_bx, .-n234_call_bx
                        .type            n235_var_bx, @function
n235_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_var_α:             sub              rsp, 16
                        mov              r11, 149
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n236_var_α
n235_var_β:             mov              r11, 149
                        add              rsp, 32;                             jmp   n233_deref_β
                        .size            n235_var_bx, .-n235_var_bx
                        .type            n236_var_bx, @function
n236_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:             sub              rsp, 16
                        mov              r11, 150
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n237_lit_integer_α
n236_var_β:             mov              r11, 150
                        add              rsp, 16;                             jmp   n235_var_β
                        .size            n236_var_bx, .-n236_var_bx
                        .type            n237_lit_integer_bx, @function
n237_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_integer_α:     sub              rsp, 16
                        mov              r11, 151
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_741_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n238_binop_α
n237_lit_integer_β:     mov              r11, 151
                        add              rsp, 16;                             jmp   n236_var_β
.Llit_integer_α_741_0:  .quad            1
                        .size            n237_lit_integer_bx, .-n237_lit_integer_bx
                        .type            n238_binop_bx, @function
n238_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_binop_α:           sub              rsp, 16
                        mov              r11, 152
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_742_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_742_7
.Lbinop_α_742_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_742_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_742_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_742_4
.Lbinop_α_742_3:        movq             xmm0, rsi
.Lbinop_α_742_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_742_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_742_7:                                                              jmp   n239_subscript_α
.Lbinop_α_742_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_742_240
                        add              rsp, 16;                             jmp   n237_lit_integer_β
.Lbinop_α_742_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n239_subscript_α
n238_binop_β:           mov              r11, 152
                        add              rsp, 16;                             jmp   n237_lit_integer_β
                        .size            n238_binop_bx, .-n238_binop_bx
                        .type            n239_subscript_bx, @function
n239_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_subscript_α:       sub              rsp, 16
                        mov              r11, 153
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
                        cmp              al, 104;                             jne   .Lsubscript_α_743_240
                        add              rsp, 16;                             jmp   n238_binop_β
.Lsubscript_α_743_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n240_deref_α
n239_subscript_β:       mov              r11, 153
                        add              rsp, 16;                             jmp   n238_binop_β
                        .size            n239_subscript_bx, .-n239_subscript_bx
                        .type            n240_deref_bx, @function
n240_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_deref_α:           sub              rsp, 16
                        mov              r11, 154
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
                        add              rsp, 16;                             jmp   n239_subscript_β
.Lderef_α_744_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n241_call_α
n240_deref_β:           mov              r11, 154
                        add              rsp, 16;                             jmp   n239_subscript_β
                        .size            n240_deref_bx, .-n240_deref_bx
                        .type            n241_call_bx, @function
n241_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_call_α:            sub              rsp, 16
                        mov              r11, 155
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
                        add              rsp, 16;                             jmp   n240_deref_β
.Lcall_α_746_240:                                                             jmp   n242_binop_α
n241_call_β:            mov              r11, 155;                            jmp   n240_deref_β
.Lcall_β_746_0:         .quad            .Lcall_β_746_0_s
.Lcall_β_746_0_s:       .string          "DRF"
                        .size            n241_call_bx, .-n241_call_bx
                        .type            n242_binop_bx, @function
n242_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_binop_α:           sub              rsp, 16
                        mov              r11, 156
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_747_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_747_7
.Lbinop_α_747_2:        and              edx, 1;                              jz    .Lbinop_α_747_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_747_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_747_4
.Lbinop_α_747_3:        movq             xmm0, rsi
.Lbinop_α_747_4:        cmp              cl, 5;                               je    .Lbinop_α_747_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_747_6
.Lbinop_α_747_5:        movq             xmm1, rdi
.Lbinop_α_747_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_747_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_747_7:                                                              jmp   n243_assign_var_α
.Lbinop_α_747_0:        mov              rdi, qword ptr [rsp + 128]           # call
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
                        cmp              al, 104;                             jne   .Lbinop_α_747_240
                        add              rsp, 32;                             jmp   n240_deref_β
.Lbinop_α_747_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n243_assign_var_α
n242_binop_β:           mov              r11, 156
                        add              rsp, 32;                             jmp   n240_deref_β
                        .size            n242_binop_bx, .-n242_binop_bx
                        .type            n243_assign_var_bx, @function
n243_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_assign_var_α:      sub              rsp, 16
                        mov              r11, 157
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lassign_var_α_749_0
                        test             rsi, rsi;                            je    .Lassign_var_α_749_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_749_238
                        add              rsp, 16;                             jmp   n242_binop_β
.Lassign_var_α_749_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n244_statement_end_α
.Lassign_var_α_749_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_749_239
                        add              rsp, 16;                             jmp   n242_binop_β
.Lassign_var_α_749_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_749_240
                        add              rsp, 16;                             jmp   n242_binop_β
.Lassign_var_α_749_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n244_statement_end_α
                        .size            n243_assign_var_bx, .-n243_assign_var_bx
                        .type            n244_statement_end_bx, @function
n244_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_end_α:   mov              r11, 158
                        mov              r10, 16
                        add              rsp, 288;                            jmp   n245_stmt_mark_α
                        .size            n244_statement_end_bx, .-n244_statement_end_bx
                        .type            n245_stmt_mark_bx, @function
n245_stmt_mark_bx:
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 44 0
n245_stmt_mark_α:       mov              r11, 159
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 44
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n246_statement_begin_α
                        .size            n245_stmt_mark_bx, .-n245_stmt_mark_bx
                        .type            n246_statement_begin_bx, @function
n246_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_statement_begin_α: mov              r11, 160
                        mov              r10, 17;                             jmp   n247_lit_name_α
n246_statement_begin_β: mov              r11, 160;                            jmp   NRETURN
                        .size            n246_statement_begin_bx, .-n246_statement_begin_bx
                        .type            n247_lit_name_bx, @function
n247_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_name_α:        sub              rsp, 16
                        mov              r11, 161
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_756_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n248_assign_α
.Llit_name_α_756_0:     .quad            .Llit_name_α_756_0_s
.Llit_name_α_756_0_s:   .string          "dm"
                        .size            n247_lit_name_bx, .-n247_lit_name_bx
                        .type            n248_assign_bx, @function
n248_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_assign_α:          mov              r11, 162
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ADD
                        mov              qword ptr [r9 + 72], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_757_0]
                        .section         .rodata
.Lassign_α_757_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_757_1_s]
                        mov              r8, 44
                        mov              r9, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n249_statement_end_α
.Lassign_α_757_0:       .quad            .Lassign_α_757_0_s
.Lassign_α_757_0_s:     .string          "ADD"
                        .size            n248_assign_bx, .-n248_assign_bx
                        .type            n249_statement_end_bx, @function
n249_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_end_α:   mov              r11, 163
                        mov              r10, 17
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n249_statement_end_bx, .-n249_statement_end_bx
                        .type            n250_statement_begin_bx, @function
n250_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_statement_begin_α: mov              r11, 164
                        mov              r10, 18;                             jmp   n251_var_α
n250_statement_begin_β: mov              r11, 164;                            jmp   n271_stmt_mark_α
                        .size            n250_statement_begin_bx, .-n250_statement_begin_bx
                        .type            n251_var_bx, @function
n251_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_var_α:             sub              rsp, 16
                        mov              r11, 165
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n252_var_α
                        .size            n251_var_bx, .-n251_var_bx
                        .type            n252_var_bx, @function
n252_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_var_α:             sub              rsp, 16
                        mov              r11, 166
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n253_lit_integer_α
n252_var_β:             mov              r11, 166
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n250_statement_begin_β
                        .size            n252_var_bx, .-n252_var_bx
                        .type            n253_lit_integer_bx, @function
n253_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_integer_α:     sub              rsp, 16
                        mov              r11, 167
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_764_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n254_binop_α
n253_lit_integer_β:     mov              r11, 167
                        add              rsp, 16;                             jmp   n252_var_β
.Llit_integer_α_764_0:  .quad            1
                        .size            n253_lit_integer_bx, .-n253_lit_integer_bx
                        .type            n254_binop_bx, @function
n254_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_binop_α:           sub              rsp, 16
                        mov              r11, 168
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_765_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_765_7
.Lbinop_α_765_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_765_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_765_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_765_4
.Lbinop_α_765_3:        movq             xmm0, rsi
.Lbinop_α_765_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_765_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_765_7:                                                              jmp   n255_assign_α
.Lbinop_α_765_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_765_240
                        add              rsp, 16;                             jmp   n253_lit_integer_β
.Lbinop_α_765_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n255_assign_α
n254_binop_β:           mov              r11, 168
                        add              rsp, 16;                             jmp   n253_lit_integer_β
                        .size            n254_binop_bx, .-n254_binop_bx
                        .type            n255_assign_bx, @function
n255_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_assign_α:          mov              r11, 169
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_766_0]
                        .section         .rodata
.Lassign_α_766_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_766_1_s]
                        mov              r8, 44
                        mov              r9, 18
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n256_var_α
.Lassign_α_766_0:       .quad            .Lassign_α_766_0_s
.Lassign_α_766_0_s:     .string          "sp"
                        .size            n255_assign_bx, .-n255_assign_bx
                        .type            n256_var_bx, @function
n256_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:             sub              rsp, 16
                        mov              r11, 170
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n257_var_α
n256_var_β:             mov              r11, 170
                        add              rsp, 16;                             jmp   n254_binop_β
                        .size            n256_var_bx, .-n256_var_bx
                        .type            n257_var_bx, @function
n257_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:             sub              rsp, 16
                        mov              r11, 171
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n258_subscript_α
n257_var_β:             mov              r11, 171
                        add              rsp, 16;                             jmp   n256_var_β
                        .size            n257_var_bx, .-n257_var_bx
                        .type            n258_subscript_bx, @function
n258_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_subscript_α:       sub              rsp, 16
                        mov              r11, 172
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
                        cmp              al, 104;                             jne   .Lsubscript_α_769_240
                        add              rsp, 16;                             jmp   n257_var_β
.Lsubscript_α_769_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n259_deref_α
n258_subscript_β:       mov              r11, 172
                        add              rsp, 16;                             jmp   n257_var_β
                        .size            n258_subscript_bx, .-n258_subscript_bx
                        .type            n259_deref_bx, @function
n259_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_deref_α:           sub              rsp, 16
                        mov              r11, 173
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
                        cmp              al, 104;                             jne   .Lderef_α_770_240
                        add              rsp, 16;                             jmp   n258_subscript_β
.Lderef_α_770_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n260_call_α
n259_deref_β:           mov              r11, 173
                        add              rsp, 16;                             jmp   n258_subscript_β
                        .size            n259_deref_bx, .-n259_deref_bx
                        .type            n260_call_bx, @function
n260_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_call_α:            sub              rsp, 16
                        mov              r11, 174
                        lea              rcx, [rip + .Lcall_α_sig772z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig772z:       .quad            1
                        .quad            .Lcall_α_772_2
                        .quad            .Lcall_α_772_2
                        .quad            16
.Lcall_α_772_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_772_29
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
.Lcall_α_772_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_772_240
                        add              rsp, 16;                             jmp   n259_deref_β
.Lcall_α_772_240:                                                             jmp   n261_var_α
n260_call_β:            mov              r11, 174;                            jmp   n259_deref_β
.Lcall_β_772_0:         .quad            .Lcall_β_772_0_s
.Lcall_β_772_0_s:       .string          "DRF"
                        .size            n260_call_bx, .-n260_call_bx
                        .type            n261_var_bx, @function
n261_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:             sub              rsp, 16
                        mov              r11, 175
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n262_var_α
n261_var_β:             mov              r11, 175
                        add              rsp, 32;                             jmp   n259_deref_β
                        .size            n261_var_bx, .-n261_var_bx
                        .type            n262_var_bx, @function
n262_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_var_α:             sub              rsp, 16
                        mov              r11, 176
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n263_lit_integer_α
n262_var_β:             mov              r11, 176
                        add              rsp, 16;                             jmp   n261_var_β
                        .size            n262_var_bx, .-n262_var_bx
                        .type            n263_lit_integer_bx, @function
n263_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_integer_α:     sub              rsp, 16
                        mov              r11, 177
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_775_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n264_binop_α
n263_lit_integer_β:     mov              r11, 177
                        add              rsp, 16;                             jmp   n262_var_β
.Llit_integer_α_775_0:  .quad            1
                        .size            n263_lit_integer_bx, .-n263_lit_integer_bx
                        .type            n264_binop_bx, @function
n264_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_binop_α:           sub              rsp, 16
                        mov              r11, 178
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_776_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_776_7
.Lbinop_α_776_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_776_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_776_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_776_4
.Lbinop_α_776_3:        movq             xmm0, rsi
.Lbinop_α_776_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_776_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_776_7:                                                              jmp   n265_subscript_α
.Lbinop_α_776_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_776_240
                        add              rsp, 16;                             jmp   n263_lit_integer_β
.Lbinop_α_776_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n265_subscript_α
n264_binop_β:           mov              r11, 178
                        add              rsp, 16;                             jmp   n263_lit_integer_β
                        .size            n264_binop_bx, .-n264_binop_bx
                        .type            n265_subscript_bx, @function
n265_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_subscript_α:       sub              rsp, 16
                        mov              r11, 179
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
                        cmp              al, 104;                             jne   .Lsubscript_α_777_240
                        add              rsp, 16;                             jmp   n264_binop_β
.Lsubscript_α_777_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n266_deref_α
n265_subscript_β:       mov              r11, 179
                        add              rsp, 16;                             jmp   n264_binop_β
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
                        cmp              al, 104;                             jne   .Lderef_α_778_240
                        add              rsp, 16;                             jmp   n265_subscript_β
.Lderef_α_778_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n267_call_α
n266_deref_β:           mov              r11, 180
                        add              rsp, 16;                             jmp   n265_subscript_β
                        .size            n266_deref_bx, .-n266_deref_bx
                        .type            n267_call_bx, @function
n267_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_call_α:            sub              rsp, 16
                        mov              r11, 181
                        lea              rcx, [rip + .Lcall_α_sig780z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig780z:       .quad            1
                        .quad            .Lcall_α_780_2
                        .quad            .Lcall_α_780_2
                        .quad            16
.Lcall_α_780_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_780_29
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
.Lcall_α_780_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_780_240
                        add              rsp, 16;                             jmp   n266_deref_β
.Lcall_α_780_240:                                                             jmp   n268_binop_α
n267_call_β:            mov              r11, 181;                            jmp   n266_deref_β
.Lcall_β_780_0:         .quad            .Lcall_β_780_0_s
.Lcall_β_780_0_s:       .string          "DRF"
                        .size            n267_call_bx, .-n267_call_bx
                        .type            n268_binop_bx, @function
n268_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_binop_α:           sub              rsp, 16
                        mov              r11, 182
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_781_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_781_7
.Lbinop_α_781_2:        and              edx, 1;                              jz    .Lbinop_α_781_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_781_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_781_4
.Lbinop_α_781_3:        movq             xmm0, rsi
.Lbinop_α_781_4:        cmp              cl, 5;                               je    .Lbinop_α_781_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_781_6
.Lbinop_α_781_5:        movq             xmm1, rdi
.Lbinop_α_781_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_781_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_781_7:                                                              jmp   n269_assign_var_α
.Lbinop_α_781_0:        mov              rdi, qword ptr [rsp + 128]           # call
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
                        cmp              al, 104;                             jne   .Lbinop_α_781_240
                        add              rsp, 32;                             jmp   n266_deref_β
.Lbinop_α_781_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n269_assign_var_α
n268_binop_β:           mov              r11, 182
                        add              rsp, 32;                             jmp   n266_deref_β
                        .size            n268_binop_bx, .-n268_binop_bx
                        .type            n269_assign_var_bx, @function
n269_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_assign_var_α:      sub              rsp, 16
                        mov              r11, 183
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lassign_var_α_783_0
                        test             rsi, rsi;                            je    .Lassign_var_α_783_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_783_238
                        add              rsp, 16;                             jmp   n268_binop_β
.Lassign_var_α_783_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n270_statement_end_α
.Lassign_var_α_783_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_783_239
                        add              rsp, 16;                             jmp   n268_binop_β
.Lassign_var_α_783_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_783_240
                        add              rsp, 16;                             jmp   n268_binop_β
.Lassign_var_α_783_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n270_statement_end_α
                        .size            n269_assign_var_bx, .-n269_assign_var_bx
                        .type            n270_statement_end_bx, @function
n270_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_statement_end_α:   mov              r11, 184
                        mov              r10, 18
                        add              rsp, 288;                            jmp   n271_stmt_mark_α
                        .size            n270_statement_end_bx, .-n270_statement_end_bx
                        .type            n271_stmt_mark_bx, @function
n271_stmt_mark_bx:
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 46 0
n271_stmt_mark_α:       mov              r11, 185
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 19
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 46
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n272_statement_begin_α
                        .size            n271_stmt_mark_bx, .-n271_stmt_mark_bx
                        .type            n272_statement_begin_bx, @function
n272_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_statement_begin_α: mov              r11, 186
                        mov              r10, 19;                             jmp   n273_lit_name_α
n272_statement_begin_β: mov              r11, 186;                            jmp   NRETURN
                        .size            n272_statement_begin_bx, .-n272_statement_begin_bx
                        .type            n273_lit_name_bx, @function
n273_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_name_α:        sub              rsp, 16
                        mov              r11, 187
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_790_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n274_assign_α
.Llit_name_α_790_0:     .quad            .Llit_name_α_790_0_s
.Llit_name_α_790_0_s:   .string          "dm"
                        .size            n273_lit_name_bx, .-n273_lit_name_bx
                        .type            n274_assign_bx, @function
n274_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_assign_α:          mov              r11, 188
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # SUB
                        mov              qword ptr [r9 + 88], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_791_0]
                        .section         .rodata
.Lassign_α_791_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_791_1_s]
                        mov              r8, 46
                        mov              r9, 19
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n275_statement_end_α
.Lassign_α_791_0:       .quad            .Lassign_α_791_0_s
.Lassign_α_791_0_s:     .string          "SUB"
                        .size            n274_assign_bx, .-n274_assign_bx
                        .type            n275_statement_end_bx, @function
n275_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_statement_end_α:   mov              r11, 189
                        mov              r10, 19
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n275_statement_end_bx, .-n275_statement_end_bx
                        .type            n276_statement_begin_bx, @function
n276_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_statement_begin_α: mov              r11, 190
                        mov              r10, 20;                             jmp   n277_var_α
n276_statement_begin_β: mov              r11, 190;                            jmp   n297_stmt_mark_α
                        .size            n276_statement_begin_bx, .-n276_statement_begin_bx
                        .type            n277_var_bx, @function
n277_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_var_α:             sub              rsp, 16
                        mov              r11, 191
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n278_var_α
                        .size            n277_var_bx, .-n277_var_bx
                        .type            n278_var_bx, @function
n278_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_var_α:             sub              rsp, 16
                        mov              r11, 192
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n279_lit_integer_α
n278_var_β:             mov              r11, 192
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n276_statement_begin_β
                        .size            n278_var_bx, .-n278_var_bx
                        .type            n279_lit_integer_bx, @function
n279_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_integer_α:     sub              rsp, 16
                        mov              r11, 193
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_798_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n280_binop_α
n279_lit_integer_β:     mov              r11, 193
                        add              rsp, 16;                             jmp   n278_var_β
.Llit_integer_α_798_0:  .quad            1
                        .size            n279_lit_integer_bx, .-n279_lit_integer_bx
                        .type            n280_binop_bx, @function
n280_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_binop_α:           sub              rsp, 16
                        mov              r11, 194
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_799_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_799_7
.Lbinop_α_799_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_799_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_799_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_799_4
.Lbinop_α_799_3:        movq             xmm0, rsi
.Lbinop_α_799_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_799_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_799_7:                                                              jmp   n281_assign_α
.Lbinop_α_799_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_799_240
                        add              rsp, 16;                             jmp   n279_lit_integer_β
.Lbinop_α_799_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n281_assign_α
n280_binop_β:           mov              r11, 194
                        add              rsp, 16;                             jmp   n279_lit_integer_β
                        .size            n280_binop_bx, .-n280_binop_bx
                        .type            n281_assign_bx, @function
n281_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_assign_α:          mov              r11, 195
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_800_0]
                        .section         .rodata
.Lassign_α_800_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_800_1_s]
                        mov              r8, 46
                        mov              r9, 20
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n282_var_α
.Lassign_α_800_0:       .quad            .Lassign_α_800_0_s
.Lassign_α_800_0_s:     .string          "sp"
                        .size            n281_assign_bx, .-n281_assign_bx
                        .type            n282_var_bx, @function
n282_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_var_α:             sub              rsp, 16
                        mov              r11, 196
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n283_var_α
n282_var_β:             mov              r11, 196
                        add              rsp, 16;                             jmp   n280_binop_β
                        .size            n282_var_bx, .-n282_var_bx
                        .type            n283_var_bx, @function
n283_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:             sub              rsp, 16
                        mov              r11, 197
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n284_subscript_α
n283_var_β:             mov              r11, 197
                        add              rsp, 16;                             jmp   n282_var_β
                        .size            n283_var_bx, .-n283_var_bx
                        .type            n284_subscript_bx, @function
n284_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_subscript_α:       sub              rsp, 16
                        mov              r11, 198
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
                        cmp              al, 104;                             jne   .Lsubscript_α_803_240
                        add              rsp, 16;                             jmp   n283_var_β
.Lsubscript_α_803_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n285_deref_α
n284_subscript_β:       mov              r11, 198
                        add              rsp, 16;                             jmp   n283_var_β
                        .size            n284_subscript_bx, .-n284_subscript_bx
                        .type            n285_deref_bx, @function
n285_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_deref_α:           sub              rsp, 16
                        mov              r11, 199
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
                        cmp              al, 104;                             jne   .Lderef_α_804_240
                        add              rsp, 16;                             jmp   n284_subscript_β
.Lderef_α_804_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n286_call_α
n285_deref_β:           mov              r11, 199
                        add              rsp, 16;                             jmp   n284_subscript_β
                        .size            n285_deref_bx, .-n285_deref_bx
                        .type            n286_call_bx, @function
n286_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_call_α:            sub              rsp, 16
                        mov              r11, 200
                        lea              rcx, [rip + .Lcall_α_sig806z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig806z:       .quad            1
                        .quad            .Lcall_α_806_2
                        .quad            .Lcall_α_806_2
                        .quad            16
.Lcall_α_806_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_806_29
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
.Lcall_α_806_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_806_240
                        add              rsp, 16;                             jmp   n285_deref_β
.Lcall_α_806_240:                                                             jmp   n287_var_α
n286_call_β:            mov              r11, 200;                            jmp   n285_deref_β
.Lcall_β_806_0:         .quad            .Lcall_β_806_0_s
.Lcall_β_806_0_s:       .string          "DRF"
                        .size            n286_call_bx, .-n286_call_bx
                        .type            n287_var_bx, @function
n287_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:             sub              rsp, 16
                        mov              r11, 201
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n288_var_α
n287_var_β:             mov              r11, 201
                        add              rsp, 32;                             jmp   n285_deref_β
                        .size            n287_var_bx, .-n287_var_bx
                        .type            n288_var_bx, @function
n288_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:             sub              rsp, 16
                        mov              r11, 202
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n289_lit_integer_α
n288_var_β:             mov              r11, 202
                        add              rsp, 16;                             jmp   n287_var_β
                        .size            n288_var_bx, .-n288_var_bx
                        .type            n289_lit_integer_bx, @function
n289_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_integer_α:     sub              rsp, 16
                        mov              r11, 203
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_809_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n290_binop_α
n289_lit_integer_β:     mov              r11, 203
                        add              rsp, 16;                             jmp   n288_var_β
.Llit_integer_α_809_0:  .quad            1
                        .size            n289_lit_integer_bx, .-n289_lit_integer_bx
                        .type            n290_binop_bx, @function
n290_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_binop_α:           sub              rsp, 16
                        mov              r11, 204
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_810_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_810_7
.Lbinop_α_810_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_810_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_810_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_810_4
.Lbinop_α_810_3:        movq             xmm0, rsi
.Lbinop_α_810_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_810_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_810_7:                                                              jmp   n291_subscript_α
.Lbinop_α_810_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_810_240
                        add              rsp, 16;                             jmp   n289_lit_integer_β
.Lbinop_α_810_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n291_subscript_α
n290_binop_β:           mov              r11, 204
                        add              rsp, 16;                             jmp   n289_lit_integer_β
                        .size            n290_binop_bx, .-n290_binop_bx
                        .type            n291_subscript_bx, @function
n291_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_subscript_α:       sub              rsp, 16
                        mov              r11, 205
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
                        cmp              al, 104;                             jne   .Lsubscript_α_811_240
                        add              rsp, 16;                             jmp   n290_binop_β
.Lsubscript_α_811_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n292_deref_α
n291_subscript_β:       mov              r11, 205
                        add              rsp, 16;                             jmp   n290_binop_β
                        .size            n291_subscript_bx, .-n291_subscript_bx
                        .type            n292_deref_bx, @function
n292_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_deref_α:           sub              rsp, 16
                        mov              r11, 206
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
                        cmp              al, 104;                             jne   .Lderef_α_812_240
                        add              rsp, 16;                             jmp   n291_subscript_β
.Lderef_α_812_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n293_call_α
n292_deref_β:           mov              r11, 206
                        add              rsp, 16;                             jmp   n291_subscript_β
                        .size            n292_deref_bx, .-n292_deref_bx
                        .type            n293_call_bx, @function
n293_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_call_α:            sub              rsp, 16
                        mov              r11, 207
                        lea              rcx, [rip + .Lcall_α_sig814z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig814z:       .quad            1
                        .quad            .Lcall_α_814_2
                        .quad            .Lcall_α_814_2
                        .quad            16
.Lcall_α_814_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_814_29
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
.Lcall_α_814_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_814_240
                        add              rsp, 16;                             jmp   n292_deref_β
.Lcall_α_814_240:                                                             jmp   n294_binop_α
n293_call_β:            mov              r11, 207;                            jmp   n292_deref_β
.Lcall_β_814_0:         .quad            .Lcall_β_814_0_s
.Lcall_β_814_0_s:       .string          "DRF"
                        .size            n293_call_bx, .-n293_call_bx
                        .type            n294_binop_bx, @function
n294_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_binop_α:           sub              rsp, 16
                        mov              r11, 208
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_815_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_815_7
.Lbinop_α_815_2:        and              edx, 1;                              jz    .Lbinop_α_815_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_815_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_815_4
.Lbinop_α_815_3:        movq             xmm0, rsi
.Lbinop_α_815_4:        cmp              cl, 5;                               je    .Lbinop_α_815_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_815_6
.Lbinop_α_815_5:        movq             xmm1, rdi
.Lbinop_α_815_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_815_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_815_7:                                                              jmp   n295_assign_var_α
.Lbinop_α_815_0:        mov              rdi, qword ptr [rsp + 128]           # call
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
                        cmp              al, 104;                             jne   .Lbinop_α_815_240
                        add              rsp, 32;                             jmp   n292_deref_β
.Lbinop_α_815_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_assign_var_α
n294_binop_β:           mov              r11, 208
                        add              rsp, 32;                             jmp   n292_deref_β
                        .size            n294_binop_bx, .-n294_binop_bx
                        .type            n295_assign_var_bx, @function
n295_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_assign_var_α:      sub              rsp, 16
                        mov              r11, 209
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lassign_var_α_817_0
                        test             rsi, rsi;                            je    .Lassign_var_α_817_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_817_238
                        add              rsp, 16;                             jmp   n294_binop_β
.Lassign_var_α_817_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n296_statement_end_α
.Lassign_var_α_817_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_817_239
                        add              rsp, 16;                             jmp   n294_binop_β
.Lassign_var_α_817_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_817_240
                        add              rsp, 16;                             jmp   n294_binop_β
.Lassign_var_α_817_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n296_statement_end_α
                        .size            n295_assign_var_bx, .-n295_assign_var_bx
                        .type            n296_statement_end_bx, @function
n296_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_statement_end_α:   mov              r11, 210
                        mov              r10, 20
                        add              rsp, 288;                            jmp   n297_stmt_mark_α
                        .size            n296_statement_end_bx, .-n296_statement_end_bx
                        .type            n297_stmt_mark_bx, @function
n297_stmt_mark_bx:
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 48 0
n297_stmt_mark_α:       mov              r11, 211
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 21
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 48
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n298_statement_begin_α
                        .size            n297_stmt_mark_bx, .-n297_stmt_mark_bx
                        .type            n298_statement_begin_bx, @function
n298_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_statement_begin_α: mov              r11, 212
                        mov              r10, 21;                             jmp   n299_lit_name_α
n298_statement_begin_β: mov              r11, 212;                            jmp   NRETURN
                        .size            n298_statement_begin_bx, .-n298_statement_begin_bx
                        .type            n299_lit_name_bx, @function
n299_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_name_α:        sub              rsp, 16
                        mov              r11, 213
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_824_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n300_assign_α
.Llit_name_α_824_0:     .quad            .Llit_name_α_824_0_s
.Llit_name_α_824_0_s:   .string          "dm"
                        .size            n299_lit_name_bx, .-n299_lit_name_bx
                        .type            n300_assign_bx, @function
n300_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_assign_α:          mov              r11, 214
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # MUL
                        mov              qword ptr [r9 + 104], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_825_0]
                        .section         .rodata
.Lassign_α_825_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_825_1_s]
                        mov              r8, 48
                        mov              r9, 21
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n301_statement_end_α
.Lassign_α_825_0:       .quad            .Lassign_α_825_0_s
.Lassign_α_825_0_s:     .string          "MUL"
                        .size            n300_assign_bx, .-n300_assign_bx
                        .type            n301_statement_end_bx, @function
n301_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_statement_end_α:   mov              r11, 215
                        mov              r10, 21
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n301_statement_end_bx, .-n301_statement_end_bx
                        .type            n302_statement_begin_bx, @function
n302_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_statement_begin_α: mov              r11, 216
                        mov              r10, 22;                             jmp   n303_var_α
n302_statement_begin_β: mov              r11, 216;                            jmp   n323_stmt_mark_α
                        .size            n302_statement_begin_bx, .-n302_statement_begin_bx
                        .type            n303_var_bx, @function
n303_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_var_α:             sub              rsp, 16
                        mov              r11, 217
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n304_var_α
                        .size            n303_var_bx, .-n303_var_bx
                        .type            n304_var_bx, @function
n304_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_var_α:             sub              rsp, 16
                        mov              r11, 218
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n305_lit_integer_α
n304_var_β:             mov              r11, 218
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n302_statement_begin_β
                        .size            n304_var_bx, .-n304_var_bx
                        .type            n305_lit_integer_bx, @function
n305_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_integer_α:     sub              rsp, 16
                        mov              r11, 219
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_832_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n306_binop_α
n305_lit_integer_β:     mov              r11, 219
                        add              rsp, 16;                             jmp   n304_var_β
.Llit_integer_α_832_0:  .quad            1
                        .size            n305_lit_integer_bx, .-n305_lit_integer_bx
                        .type            n306_binop_bx, @function
n306_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_binop_α:           sub              rsp, 16
                        mov              r11, 220
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_833_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_833_7
.Lbinop_α_833_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_833_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_833_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_833_4
.Lbinop_α_833_3:        movq             xmm0, rsi
.Lbinop_α_833_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_833_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_833_7:                                                              jmp   n307_assign_α
.Lbinop_α_833_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_833_240
                        add              rsp, 16;                             jmp   n305_lit_integer_β
.Lbinop_α_833_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n307_assign_α
n306_binop_β:           mov              r11, 220
                        add              rsp, 16;                             jmp   n305_lit_integer_β
                        .size            n306_binop_bx, .-n306_binop_bx
                        .type            n307_assign_bx, @function
n307_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_assign_α:          mov              r11, 221
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_834_0]
                        .section         .rodata
.Lassign_α_834_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_834_1_s]
                        mov              r8, 48
                        mov              r9, 22
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n308_var_α
.Lassign_α_834_0:       .quad            .Lassign_α_834_0_s
.Lassign_α_834_0_s:     .string          "sp"
                        .size            n307_assign_bx, .-n307_assign_bx
                        .type            n308_var_bx, @function
n308_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:             sub              rsp, 16
                        mov              r11, 222
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n309_var_α
n308_var_β:             mov              r11, 222
                        add              rsp, 16;                             jmp   n306_binop_β
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
                        add              rsp, 16;                             jmp   n308_var_β
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
                        cmp              al, 104;                             jne   .Lsubscript_α_837_240
                        add              rsp, 16;                             jmp   n309_var_β
.Lsubscript_α_837_240:  mov              qword ptr [rsp + 0], rax             # result
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
                        cmp              al, 104;                             jne   .Lderef_α_838_240
                        add              rsp, 16;                             jmp   n310_subscript_β
.Lderef_α_838_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n312_call_α
n311_deref_β:           mov              r11, 225
                        add              rsp, 16;                             jmp   n310_subscript_β
                        .size            n311_deref_bx, .-n311_deref_bx
                        .type            n312_call_bx, @function
n312_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_call_α:            sub              rsp, 16
                        mov              r11, 226
                        lea              rcx, [rip + .Lcall_α_sig840z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig840z:       .quad            1
                        .quad            .Lcall_α_840_2
                        .quad            .Lcall_α_840_2
                        .quad            16
.Lcall_α_840_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_840_29
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
.Lcall_α_840_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_840_240
                        add              rsp, 16;                             jmp   n311_deref_β
.Lcall_α_840_240:                                                             jmp   n313_var_α
n312_call_β:            mov              r11, 226;                            jmp   n311_deref_β
.Lcall_β_840_0:         .quad            .Lcall_β_840_0_s
.Lcall_β_840_0_s:       .string          "DRF"
                        .size            n312_call_bx, .-n312_call_bx
                        .type            n313_var_bx, @function
n313_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:             sub              rsp, 16
                        mov              r11, 227
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n314_var_α
n313_var_β:             mov              r11, 227
                        add              rsp, 32;                             jmp   n311_deref_β
                        .size            n313_var_bx, .-n313_var_bx
                        .type            n314_var_bx, @function
n314_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_var_α:             sub              rsp, 16
                        mov              r11, 228
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n315_lit_integer_α
n314_var_β:             mov              r11, 228
                        add              rsp, 16;                             jmp   n313_var_β
                        .size            n314_var_bx, .-n314_var_bx
                        .type            n315_lit_integer_bx, @function
n315_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_integer_α:     sub              rsp, 16
                        mov              r11, 229
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_843_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n316_binop_α
n315_lit_integer_β:     mov              r11, 229
                        add              rsp, 16;                             jmp   n314_var_β
.Llit_integer_α_843_0:  .quad            1
                        .size            n315_lit_integer_bx, .-n315_lit_integer_bx
                        .type            n316_binop_bx, @function
n316_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_binop_α:           sub              rsp, 16
                        mov              r11, 230
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_844_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_844_7
.Lbinop_α_844_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_844_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_844_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_844_4
.Lbinop_α_844_3:        movq             xmm0, rsi
.Lbinop_α_844_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_844_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_844_7:                                                              jmp   n317_subscript_α
.Lbinop_α_844_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_844_240
                        add              rsp, 16;                             jmp   n315_lit_integer_β
.Lbinop_α_844_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n317_subscript_α
n316_binop_β:           mov              r11, 230
                        add              rsp, 16;                             jmp   n315_lit_integer_β
                        .size            n316_binop_bx, .-n316_binop_bx
                        .type            n317_subscript_bx, @function
n317_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_subscript_α:       sub              rsp, 16
                        mov              r11, 231
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
                        cmp              al, 104;                             jne   .Lsubscript_α_845_240
                        add              rsp, 16;                             jmp   n316_binop_β
.Lsubscript_α_845_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n318_deref_α
n317_subscript_β:       mov              r11, 231
                        add              rsp, 16;                             jmp   n316_binop_β
                        .size            n317_subscript_bx, .-n317_subscript_bx
                        .type            n318_deref_bx, @function
n318_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_deref_α:           sub              rsp, 16
                        mov              r11, 232
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
                        cmp              al, 104;                             jne   .Lderef_α_846_240
                        add              rsp, 16;                             jmp   n317_subscript_β
.Lderef_α_846_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n319_call_α
n318_deref_β:           mov              r11, 232
                        add              rsp, 16;                             jmp   n317_subscript_β
                        .size            n318_deref_bx, .-n318_deref_bx
                        .type            n319_call_bx, @function
n319_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_call_α:            sub              rsp, 16
                        mov              r11, 233
                        lea              rcx, [rip + .Lcall_α_sig848z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig848z:       .quad            1
                        .quad            .Lcall_α_848_2
                        .quad            .Lcall_α_848_2
                        .quad            16
.Lcall_α_848_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_848_29
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
.Lcall_α_848_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_848_240
                        add              rsp, 16;                             jmp   n318_deref_β
.Lcall_α_848_240:                                                             jmp   n320_binop_α
n319_call_β:            mov              r11, 233;                            jmp   n318_deref_β
.Lcall_β_848_0:         .quad            .Lcall_β_848_0_s
.Lcall_β_848_0_s:       .string          "DRF"
                        .size            n319_call_bx, .-n319_call_bx
                        .type            n320_binop_bx, @function
n320_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_binop_α:           sub              rsp, 16
                        mov              r11, 234
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
                        cmp              al, 104;                             jne   .Lbinop_α_849_240
                        add              rsp, 32;                             jmp   n318_deref_β
.Lbinop_α_849_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n321_assign_var_α
n320_binop_β:           mov              r11, 234
                        add              rsp, 32;                             jmp   n318_deref_β
                        .size            n320_binop_bx, .-n320_binop_bx
                        .type            n321_assign_var_bx, @function
n321_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_assign_var_α:      sub              rsp, 16
                        mov              r11, 235
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lassign_var_α_851_0
                        test             rsi, rsi;                            je    .Lassign_var_α_851_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_851_238
                        add              rsp, 16;                             jmp   n320_binop_β
.Lassign_var_α_851_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n322_statement_end_α
.Lassign_var_α_851_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_851_239
                        add              rsp, 16;                             jmp   n320_binop_β
.Lassign_var_α_851_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_851_240
                        add              rsp, 16;                             jmp   n320_binop_β
.Lassign_var_α_851_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n322_statement_end_α
                        .size            n321_assign_var_bx, .-n321_assign_var_bx
                        .type            n322_statement_end_bx, @function
n322_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_statement_end_α:   mov              r11, 236
                        mov              r10, 22
                        add              rsp, 288;                            jmp   n323_stmt_mark_α
                        .size            n322_statement_end_bx, .-n322_statement_end_bx
                        .type            n323_stmt_mark_bx, @function
n323_stmt_mark_bx:
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 50 0
n323_stmt_mark_α:       mov              r11, 237
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 23
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 50
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n324_statement_begin_α
                        .size            n323_stmt_mark_bx, .-n323_stmt_mark_bx
                        .type            n324_statement_begin_bx, @function
n324_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_statement_begin_α: mov              r11, 238
                        mov              r10, 23;                             jmp   n325_lit_name_α
n324_statement_begin_β: mov              r11, 238;                            jmp   NRETURN
                        .size            n324_statement_begin_bx, .-n324_statement_begin_bx
                        .type            n325_lit_name_bx, @function
n325_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_name_α:        sub              rsp, 16
                        mov              r11, 239
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_858_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n326_assign_α
.Llit_name_α_858_0:     .quad            .Llit_name_α_858_0_s
.Llit_name_α_858_0_s:   .string          "dm"
                        .size            n325_lit_name_bx, .-n325_lit_name_bx
                        .type            n326_assign_bx, @function
n326_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_assign_α:          mov              r11, 240
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # DIV
                        mov              qword ptr [r9 + 120], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_859_0]
                        .section         .rodata
.Lassign_α_859_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_859_1_s]
                        mov              r8, 50
                        mov              r9, 23
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n327_statement_end_α
.Lassign_α_859_0:       .quad            .Lassign_α_859_0_s
.Lassign_α_859_0_s:     .string          "DIV"
                        .size            n326_assign_bx, .-n326_assign_bx
                        .type            n327_statement_end_bx, @function
n327_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_statement_end_α:   mov              r11, 241
                        mov              r10, 23
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n327_statement_end_bx, .-n327_statement_end_bx
                        .type            n328_statement_begin_bx, @function
n328_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_statement_begin_α: mov              r11, 242
                        mov              r10, 24;                             jmp   n329_var_α
n328_statement_begin_β: mov              r11, 242;                            jmp   n336_stmt_mark_α
                        .size            n328_statement_begin_bx, .-n328_statement_begin_bx
                        .type            n329_var_bx, @function
n329_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_var_α:             sub              rsp, 16
                        mov              r11, 243
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n330_var_α
                        .size            n329_var_bx, .-n329_var_bx
                        .type            n330_var_bx, @function
n330_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:             sub              rsp, 16
                        mov              r11, 244
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n331_subscript_α
n330_var_β:             mov              r11, 244
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n328_statement_begin_β
                        .size            n330_var_bx, .-n330_var_bx
                        .type            n331_subscript_bx, @function
n331_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_subscript_α:       sub              rsp, 16
                        mov              r11, 245
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
                        cmp              al, 104;                             jne   .Lsubscript_α_866_240
                        add              rsp, 16;                             jmp   n330_var_β
.Lsubscript_α_866_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n332_deref_α
n331_subscript_β:       mov              r11, 245
                        add              rsp, 16;                             jmp   n330_var_β
                        .size            n331_subscript_bx, .-n331_subscript_bx
                        .type            n332_deref_bx, @function
n332_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_deref_α:           sub              rsp, 16
                        mov              r11, 246
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
                        cmp              al, 104;                             jne   .Lderef_α_867_240
                        add              rsp, 16;                             jmp   n331_subscript_β
.Lderef_α_867_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n333_call_α
n332_deref_β:           mov              r11, 246
                        add              rsp, 16;                             jmp   n331_subscript_β
                        .size            n332_deref_bx, .-n332_deref_bx
                        .type            n333_call_bx, @function
n333_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_call_α:            sub              rsp, 16
                        mov              r11, 247
                        lea              rcx, [rip + .Lcall_α_sig869z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig869z:       .quad            1
                        .quad            .Lcall_α_869_2
                        .quad            .Lcall_α_869_2
                        .quad            16
.Lcall_α_869_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_869_29
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
.Lcall_α_869_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_869_240
                        add              rsp, 16;                             jmp   n332_deref_β
.Lcall_α_869_240:                                                             jmp   n334_assign_α
n333_call_β:            mov              r11, 247;                            jmp   n332_deref_β
.Lcall_β_869_0:         .quad            .Lcall_β_869_0_s
.Lcall_β_869_0_s:       .string          "DRF"
                        .size            n333_call_bx, .-n333_call_bx
                        .type            n334_assign_bx, @function
n334_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_assign_α:          mov              r11, 248
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # p1
                        mov              qword ptr [r9 + 152], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_870_0]
                        .section         .rodata
.Lassign_α_870_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_870_1_s]
                        mov              r8, 50
                        mov              r9, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n335_statement_end_α
.Lassign_α_870_0:       .quad            .Lassign_α_870_0_s
.Lassign_α_870_0_s:     .string          "p1"
                        .size            n334_assign_bx, .-n334_assign_bx
                        .type            n335_statement_end_bx, @function
n335_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_statement_end_α:   mov              r11, 249
                        mov              r10, 24
                        add              rsp, 80;                             jmp   n336_stmt_mark_α
                        .size            n335_statement_end_bx, .-n335_statement_end_bx
                        .type            n336_stmt_mark_bx, @function
n336_stmt_mark_bx:
#=======================================================================================================================
#         p1 = IDENT(S[sp = sp - 1], '-') -p1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 52 0
n336_stmt_mark_α:       mov              r11, 250
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 25
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 52
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n337_statement_begin_α
                        .size            n336_stmt_mark_bx, .-n336_stmt_mark_bx
                        .type            n337_statement_begin_bx, @function
n337_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_statement_begin_α: mov              r11, 251
                        mov              r10, 25;                             jmp   n338_var_α
n337_statement_begin_β: mov              r11, 251;                            jmp   n351_stmt_mark_α
                        .size            n337_statement_begin_bx, .-n337_statement_begin_bx
                        .type            n338_var_bx, @function
n338_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_var_α:             sub              rsp, 16
                        mov              r11, 252
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n339_var_α
                        .size            n338_var_bx, .-n338_var_bx
                        .type            n339_var_bx, @function
n339_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_var_α:             sub              rsp, 16
                        mov              r11, 253
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n340_lit_integer_α
n339_var_β:             mov              r11, 253
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n337_statement_begin_β
                        .size            n339_var_bx, .-n339_var_bx
                        .type            n340_lit_integer_bx, @function
n340_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_integer_α:     sub              rsp, 16
                        mov              r11, 254
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_879_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n341_binop_α
n340_lit_integer_β:     mov              r11, 254
                        add              rsp, 16;                             jmp   n339_var_β
.Llit_integer_α_879_0:  .quad            1
                        .size            n340_lit_integer_bx, .-n340_lit_integer_bx
                        .type            n341_binop_bx, @function
n341_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_binop_α:           sub              rsp, 16
                        mov              r11, 255
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_880_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_880_7
.Lbinop_α_880_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_880_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_880_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_880_4
.Lbinop_α_880_3:        movq             xmm0, rsi
.Lbinop_α_880_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_880_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_880_7:                                                              jmp   n342_assign_α
.Lbinop_α_880_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_880_240
                        add              rsp, 16;                             jmp   n340_lit_integer_β
.Lbinop_α_880_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n342_assign_α
n341_binop_β:           mov              r11, 255
                        add              rsp, 16;                             jmp   n340_lit_integer_β
                        .size            n341_binop_bx, .-n341_binop_bx
                        .type            n342_assign_bx, @function
n342_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_assign_α:          mov              r11, 256
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_881_0]
                        .section         .rodata
.Lassign_α_881_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_881_1_s]
                        mov              r8, 52
                        mov              r9, 25
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n343_subscript_α
.Lassign_α_881_0:       .quad            .Lassign_α_881_0_s
.Lassign_α_881_0_s:     .string          "sp"
                        .size            n342_assign_bx, .-n342_assign_bx
                        .type            n343_subscript_bx, @function
n343_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_subscript_α:       sub              rsp, 16
                        mov              r11, 257
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
                        cmp              al, 104;                             jne   .Lsubscript_α_882_240
                        add              rsp, 16;                             jmp   n341_binop_β
.Lsubscript_α_882_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n344_deref_α
n343_subscript_β:       mov              r11, 257
                        add              rsp, 16;                             jmp   n341_binop_β
                        .size            n343_subscript_bx, .-n343_subscript_bx
                        .type            n344_deref_bx, @function
n344_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_deref_α:           sub              rsp, 16
                        mov              r11, 258
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
                        cmp              al, 104;                             jne   .Lderef_α_883_240
                        add              rsp, 16;                             jmp   n343_subscript_β
.Lderef_α_883_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n345_lit_string_α
n344_deref_β:           mov              r11, 258
                        add              rsp, 16;                             jmp   n343_subscript_β
                        .size            n344_deref_bx, .-n344_deref_bx
                        .type            n345_lit_string_bx, @function
n345_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_string_α:      sub              rsp, 16
                        mov              r11, 259
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_884_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n346_ident_α
n345_lit_string_β:      mov              r11, 259
                        add              rsp, 16;                             jmp   n344_deref_β
.Llit_string_α_884_0:   .quad            .Llit_string_α_884_0_s
.Llit_string_α_884_0_s: .string          "-"
                        .size            n345_lit_string_bx, .-n345_lit_string_bx
                        .type            n346_ident_bx, @function
n346_ident_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_ident_α:           sub              rsp, 16
                        mov              r11, 260
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
                        test             eax, eax;                            jne   .Lident_α_886_240
                        add              rsp, 16;                             jmp   n345_lit_string_β
.Lident_α_886_240:                                                            jmp   n347_var_α
n346_ident_β:           mov              r11, 260
                        add              rsp, 16;                             jmp   n345_lit_string_β
                        .size            n346_ident_bx, .-n346_ident_bx
                        .type            n347_var_bx, @function
n347_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_var_α:             sub              rsp, 16
                        mov              r11, 261
                        mov              rax, qword ptr [r9 + 144]            # p1
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n348_unop_α
n347_var_β:             mov              r11, 261
                        add              rsp, 16;                             jmp   n346_ident_β
                        .size            n347_var_bx, .-n347_var_bx
                        .type            n348_unop_bx, @function
n348_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_unop_α:            sub              rsp, 16
                        mov              r11, 262
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n349_assign_α
                        .size            n348_unop_bx, .-n348_unop_bx
                        .type            n349_assign_bx, @function
n349_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_assign_α:          mov              r11, 263
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # p1
                        mov              qword ptr [r9 + 152], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_889_0]
                        .section         .rodata
.Lassign_α_889_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_889_1_s]
                        mov              r8, 52
                        mov              r9, 25
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n350_statement_end_α
.Lassign_α_889_0:       .quad            .Lassign_α_889_0_s
.Lassign_α_889_0_s:     .string          "p1"
                        .size            n349_assign_bx, .-n349_assign_bx
                        .type            n350_statement_end_bx, @function
n350_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_statement_end_α:   mov              r11, 264
                        mov              r10, 25
                        add              rsp, 160;                            jmp   n351_stmt_mark_α
                        .size            n350_statement_end_bx, .-n350_statement_end_bx
                        .type            n351_stmt_mark_bx, @function
n351_stmt_mark_bx:
#=======================================================================================================================
#         S[sp] = p1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 53 0
n351_stmt_mark_α:       mov              r11, 265
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 26
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 53
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n352_statement_begin_α
                        .size            n351_stmt_mark_bx, .-n351_stmt_mark_bx
                        .type            n352_statement_begin_bx, @function
n352_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_statement_begin_α: mov              r11, 266
                        mov              r10, 26;                             jmp   n353_var_α
n352_statement_begin_β: mov              r11, 266;                            jmp   n358_stmt_mark_α
                        .size            n352_statement_begin_bx, .-n352_statement_begin_bx
                        .type            n353_var_bx, @function
n353_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_var_α:             sub              rsp, 16
                        mov              r11, 267
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n354_var_α
                        .size            n353_var_bx, .-n353_var_bx
                        .type            n354_var_bx, @function
n354_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_var_α:             sub              rsp, 16
                        mov              r11, 268
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n355_var_α
n354_var_β:             mov              r11, 268
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n352_statement_begin_β
                        .size            n354_var_bx, .-n354_var_bx
                        .type            n355_var_bx, @function
n355_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_var_α:             sub              rsp, 16
                        mov              r11, 269
                        mov              rax, qword ptr [r9 + 144]            # p1
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n356_assign_var_α
n355_var_β:             mov              r11, 269
                        add              rsp, 16;                             jmp   n354_var_β
                        .size            n355_var_bx, .-n355_var_bx
                        .type            n356_assign_var_bx, @function
n356_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_assign_var_α:      sub              rsp, 16
                        mov              r11, 270
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_900_0
                        test             rsi, rsi;                            je    .Lassign_var_α_900_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_900_238
                        add              rsp, 16;                             jmp   n355_var_β
.Lassign_var_α_900_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n357_statement_end_α
.Lassign_var_α_900_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_900_239
                        add              rsp, 16;                             jmp   n355_var_β
.Lassign_var_α_900_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_900_240
                        add              rsp, 16;                             jmp   n355_var_β
.Lassign_var_α_900_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n357_statement_end_α
                        .size            n356_assign_var_bx, .-n356_assign_var_bx
                        .type            n357_statement_end_bx, @function
n357_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_statement_end_α:   mov              r11, 271
                        mov              r10, 26
                        add              rsp, 64;                             jmp   n358_stmt_mark_α
                        .size            n357_statement_end_bx, .-n357_statement_end_bx
                        .type            n358_stmt_mark_bx, @function
n358_stmt_mark_bx:
#=======================================================================================================================
#         SGN = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 54 0
n358_stmt_mark_α:       mov              r11, 272
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 27
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 54
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n359_statement_begin_α
                        .size            n358_stmt_mark_bx, .-n358_stmt_mark_bx
                        .type            n359_statement_begin_bx, @function
n359_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_statement_begin_α: mov              r11, 273
                        mov              r10, 27;                             jmp   n360_lit_name_α
n359_statement_begin_β: mov              r11, 273;                            jmp   NRETURN
                        .size            n359_statement_begin_bx, .-n359_statement_begin_bx
                        .type            n360_lit_name_bx, @function
n360_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_name_α:        sub              rsp, 16
                        mov              r11, 274
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_907_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n361_assign_α
.Llit_name_α_907_0:     .quad            .Llit_name_α_907_0_s
.Llit_name_α_907_0_s:   .string          "dm"
                        .size            n360_lit_name_bx, .-n360_lit_name_bx
                        .type            n361_assign_bx, @function
n361_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_assign_α:          mov              r11, 275
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # SGN
                        mov              qword ptr [r9 + 136], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_908_0]
                        .section         .rodata
.Lassign_α_908_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_908_1_s]
                        mov              r8, 54
                        mov              r9, 27
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n362_statement_end_α
.Lassign_α_908_0:       .quad            .Lassign_α_908_0_s
.Lassign_α_908_0_s:     .string          "SGN"
                        .size            n361_assign_bx, .-n361_assign_bx
                        .type            n362_statement_end_bx, @function
n362_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_statement_end_α:   mov              r11, 276
                        mov              r10, 27
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n362_statement_end_bx, .-n362_statement_end_bx
                        .type            n363_statement_begin_bx, @function
n363_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_statement_begin_α: mov              r11, 277
                        mov              r10, 28;                             jmp   n364_statement_end_α
n363_statement_begin_β: mov              r11, 277;                            jmp   n365_stmt_mark_α
                        .size            n363_statement_begin_bx, .-n363_statement_begin_bx
                        .type            n364_statement_end_bx, @function
n364_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_statement_end_α:   mov              r11, 278
                        mov              r10, 28;                             jmp   n365_stmt_mark_α
                        .size            n364_statement_end_bx, .-n364_statement_end_bx
                        .type            n365_stmt_mark_bx, @function
n365_stmt_mark_bx:
#=======================================================================================================================
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 57 0
n365_stmt_mark_α:       mov              r11, 279
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 29
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 57
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n366_statement_begin_α
                        .size            n365_stmt_mark_bx, .-n365_stmt_mark_bx
                        .type            n366_statement_begin_bx, @function
n366_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_statement_begin_α: mov              r11, 280
                        mov              r10, 29;                             jmp   n367_lit_integer_α
n366_statement_begin_β: mov              r11, 280;                            jmp   n371_stmt_mark_α
                        .size            n366_statement_begin_bx, .-n366_statement_begin_bx
                        .type            n367_lit_integer_bx, @function
n367_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_integer_α:     sub              rsp, 16
                        mov              r11, 281
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_919_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n368_call_α
.Llit_integer_α_919_0:  .quad            65536
                        .size            n367_lit_integer_bx, .-n367_lit_integer_bx
                        .type            n368_call_bx, @function
n368_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_call_α:            sub              rsp, 16
                        mov              r11, 282
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd921:     .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd921]
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
                        cmp              al, 104;                             jne   .Lcall_α_920_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n366_statement_begin_β
.Lcall_α_920_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n369_assign_α
n368_call_β:            mov              r11, 282
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n366_statement_begin_β
                        .size            n368_call_bx, .-n368_call_bx
                        .type            n369_assign_bx, @function
n369_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_assign_α:          mov              r11, 283
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # S
                        mov              qword ptr [r9 + 168], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_922_0]
                        .section         .rodata
.Lassign_α_922_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_922_1_s]
                        mov              r8, 57
                        mov              r9, 29
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n370_statement_end_α
.Lassign_α_922_0:       .quad            .Lassign_α_922_0_s
.Lassign_α_922_0_s:     .string          "S"
                        .size            n369_assign_bx, .-n369_assign_bx
                        .type            n370_statement_end_bx, @function
n370_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_statement_end_α:   mov              r11, 284
                        mov              r10, 29
                        add              rsp, 32;                             jmp   n371_stmt_mark_α
                        .size            n370_statement_end_bx, .-n370_statement_end_bx
                        .type            n371_stmt_mark_bx, @function
n371_stmt_mark_bx:
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 58 0
n371_stmt_mark_α:       mov              r11, 285
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 30
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 58
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n372_statement_begin_α
                        .size            n371_stmt_mark_bx, .-n371_stmt_mark_bx
                        .type            n372_statement_begin_bx, @function
n372_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_statement_begin_α: mov              r11, 286
                        mov              r10, 30;                             jmp   n373_kw_snobol4_α
n372_statement_begin_β: mov              r11, 286;                            jmp   n376_stmt_mark_α
                        .size            n372_statement_begin_bx, .-n372_statement_begin_bx
                        .type            n373_kw_snobol4_bx, @function
n373_kw_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_kw_snobol4_α:      sub              rsp, 16
                        mov              r11, 287
                        mov              rdi, qword ptr [rip + .Lkw_snobol4_α_929_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n374_assign_α
.Lkw_snobol4_α_929_0:   .quad            26
                        .size            n373_kw_snobol4_bx, .-n373_kw_snobol4_bx
                        .type            n374_assign_bx, @function
n374_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_assign_α:          mov              r11, 288
                        mov              rax, qword ptr [rsp + 0]             # kw_snobol4
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # LCASE
                        mov              qword ptr [r9 + 232], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_930_0]
                        .section         .rodata
.Lassign_α_930_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_930_1_s]
                        mov              r8, 58
                        mov              r9, 30
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n375_statement_end_α
.Lassign_α_930_0:       .quad            .Lassign_α_930_0_s
.Lassign_α_930_0_s:     .string          "LCASE"
                        .size            n374_assign_bx, .-n374_assign_bx
                        .type            n375_statement_end_bx, @function
n375_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_statement_end_α:   mov              r11, 289
                        mov              r10, 30
                        add              rsp, 16;                             jmp   n376_stmt_mark_α
                        .size            n375_statement_end_bx, .-n375_statement_end_bx
                        .type            n376_stmt_mark_bx, @function
n376_stmt_mark_bx:
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 59 0
n376_stmt_mark_α:       mov              r11, 290
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 31
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 59
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n377_statement_begin_α
                        .size            n376_stmt_mark_bx, .-n376_stmt_mark_bx
                        .type            n377_statement_begin_bx, @function
n377_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_statement_begin_α: mov              r11, 291
                        mov              r10, 31;                             jmp   n378_lit_string_α
n377_statement_begin_β: mov              r11, 291;                            jmp   n381_stmt_mark_α
                        .size            n377_statement_begin_bx, .-n377_statement_begin_bx
                        .type            n378_lit_string_bx, @function
n378_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:      sub              rsp, 16
                        mov              r11, 292
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_937_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n379_assign_α
.Llit_string_α_937_0:   .quad            .Llit_string_α_937_0_s
.Llit_string_α_937_0_s: .string          "0123456789"
                        .size            n378_lit_string_bx, .-n378_lit_string_bx
                        .type            n379_assign_bx, @function
n379_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_assign_α:          mov              r11, 293
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # DIGITS
                        mov              qword ptr [r9 + 248], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_938_0]
                        .section         .rodata
.Lassign_α_938_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_938_1_s]
                        mov              r8, 59
                        mov              r9, 31
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n380_statement_end_α
.Lassign_α_938_0:       .quad            .Lassign_α_938_0_s
.Lassign_α_938_0_s:     .string          "DIGITS"
                        .size            n379_assign_bx, .-n379_assign_bx
                        .type            n380_statement_end_bx, @function
n380_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_statement_end_α:   mov              r11, 294
                        mov              r10, 31
                        add              rsp, 16;                             jmp   n381_stmt_mark_α
                        .size            n380_statement_end_bx, .-n380_statement_end_bx
                        .type            n381_stmt_mark_bx, @function
n381_stmt_mark_bx:
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 60 0
n381_stmt_mark_α:       mov              r11, 295
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 32
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 60
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n382_statement_begin_α
                        .size            n381_stmt_mark_bx, .-n381_stmt_mark_bx
                        .type            n382_statement_begin_bx, @function
n382_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_statement_begin_α: mov              r11, 296
                        mov              r10, 32;                             jmp   n383_lit_string_α
n382_statement_begin_β: mov              r11, 296;                            jmp   n387_stmt_mark_α
                        .size            n382_statement_begin_bx, .-n382_statement_begin_bx
                        .type            n383_lit_string_bx, @function
n383_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_string_α:      sub              rsp, 16
                        mov              r11, 297
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_945_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n384_call_α
.Llit_string_α_945_0:   .quad            .Llit_string_α_945_0_s
.Llit_string_α_945_0_s: .string          "PAT$0"
                        .size            n383_lit_string_bx, .-n383_lit_string_bx
                        .type            n384_call_bx, @function
n384_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_call_α:            sub              rsp, 16
                        mov              r11, 298
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd947:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd947]
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
                        cmp              al, 104;                             jne   .Lcall_α_946_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n382_statement_begin_β
.Lcall_α_946_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n385_assign_α
n384_call_β:            mov              r11, 298
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n382_statement_begin_β
                        .size            n384_call_bx, .-n384_call_bx
                        .type            n385_assign_bx, @function
n385_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_assign_α:          mov              r11, 299
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # V
                        mov              qword ptr [r9 + 264], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_948_0]
                        .section         .rodata
.Lassign_α_948_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_948_1_s]
                        mov              r8, 60
                        mov              r9, 32
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n386_statement_end_α
.Lassign_α_948_0:       .quad            .Lassign_α_948_0_s
.Lassign_α_948_0_s:     .string          "V"
                        .size            n385_assign_bx, .-n385_assign_bx
                        .type            n386_statement_end_bx, @function
n386_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_statement_end_α:   mov              r11, 300
                        mov              r10, 32
                        add              rsp, 32;                             jmp   n387_stmt_mark_α
                        .size            n386_statement_end_bx, .-n386_statement_end_bx
                        .type            n387_stmt_mark_bx, @function
n387_stmt_mark_bx:
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 61 0
n387_stmt_mark_α:       mov              r11, 301
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 33
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 61
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n388_statement_begin_α
                        .size            n387_stmt_mark_bx, .-n387_stmt_mark_bx
                        .type            n388_statement_begin_bx, @function
n388_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n388_statement_begin_α: mov              r11, 302
                        mov              r10, 33;                             jmp   n389_lit_string_α
n388_statement_begin_β: mov              r11, 302;                            jmp   n393_stmt_mark_α
                        .size            n388_statement_begin_bx, .-n388_statement_begin_bx
                        .type            n389_lit_string_bx, @function
n389_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_string_α:      sub              rsp, 16
                        mov              r11, 303
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_955_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n390_call_α
.Llit_string_α_955_0:   .quad            .Llit_string_α_955_0_s
.Llit_string_α_955_0_s: .string          "PAT$1"
                        .size            n389_lit_string_bx, .-n389_lit_string_bx
                        .type            n390_call_bx, @function
n390_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_call_α:            sub              rsp, 16
                        mov              r11, 304
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd957:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd957]
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
                        cmp              al, 104;                             jne   .Lcall_α_956_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n388_statement_begin_β
.Lcall_α_956_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n391_assign_α
n390_call_β:            mov              r11, 304
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n388_statement_begin_β
                        .size            n390_call_bx, .-n390_call_bx
                        .type            n391_assign_bx, @function
n391_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n391_assign_α:          mov              r11, 305
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # I
                        mov              qword ptr [r9 + 280], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_958_0]
                        .section         .rodata
.Lassign_α_958_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_958_1_s]
                        mov              r8, 61
                        mov              r9, 33
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n392_statement_end_α
.Lassign_α_958_0:       .quad            .Lassign_α_958_0_s
.Lassign_α_958_0_s:     .string          "I"
                        .size            n391_assign_bx, .-n391_assign_bx
                        .type            n392_statement_end_bx, @function
n392_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n392_statement_end_α:   mov              r11, 306
                        mov              r10, 33
                        add              rsp, 32;                             jmp   n393_stmt_mark_α
                        .size            n392_statement_end_bx, .-n392_statement_end_bx
                        .type            n393_stmt_mark_bx, @function
n393_stmt_mark_bx:
#=======================================================================================================================
#         A = FENCE(V | I | '(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 62 0
n393_stmt_mark_α:       mov              r11, 307
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 34
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 62
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n394_statement_begin_α
                        .size            n393_stmt_mark_bx, .-n393_stmt_mark_bx
                        .type            n394_statement_begin_bx, @function
n394_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_statement_begin_α: mov              r11, 308
                        mov              r10, 34;                             jmp   n395_var_α
n394_statement_begin_β: mov              r11, 308;                            jmp   n404_stmt_mark_α
                        .size            n394_statement_begin_bx, .-n394_statement_begin_bx
                        .type            n395_var_bx, @function
n395_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n395_var_α:             sub              rsp, 16
                        mov              r11, 309
                        mov              rax, qword ptr [r9 + 256]            # V
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n396_var_α
                        .size            n395_var_bx, .-n395_var_bx
                        .type            n396_var_bx, @function
n396_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_var_α:             sub              rsp, 16
                        mov              r11, 310
                        mov              rax, qword ptr [r9 + 272]            # I
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n397_assign_α
n396_var_β:             mov              r11, 310
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n394_statement_begin_β
                        .size            n396_var_bx, .-n396_var_bx
                        .type            n397_assign_bx, @function
n397_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_assign_α:          mov              r11, 311
                        mov              rax, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 448], rax            # PAT$2$V0
                        mov              qword ptr [r9 + 456], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_967_0]
                        .section         .rodata
.Lassign_α_967_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_967_1_s]
                        mov              r8, 62
                        mov              r9, 34
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n398_assign_α
.Lassign_α_967_0:       .quad            .Lassign_α_967_0_s
.Lassign_α_967_0_s:     .string          "PAT$2$V0"
                        .size            n397_assign_bx, .-n397_assign_bx
                        .type            n398_assign_bx, @function
n398_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n398_assign_α:          mov              r11, 312
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax            # PAT$2$V1
                        mov              qword ptr [r9 + 472], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_968_0]
                        .section         .rodata
.Lassign_α_968_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_968_1_s]
                        mov              r8, 62
                        mov              r9, 34
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n399_lit_string_α
.Lassign_α_968_0:       .quad            .Lassign_α_968_0_s
.Lassign_α_968_0_s:     .string          "PAT$2$V1"
                        .size            n398_assign_bx, .-n398_assign_bx
                        .type            n399_lit_string_bx, @function
n399_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:      sub              rsp, 16
                        mov              r11, 313
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_969_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n400_lit_string_α
n399_lit_string_β:      mov              r11, 313
                        add              rsp, 16;                             jmp   n396_var_β
.Llit_string_α_969_0:   .quad            .Llit_string_α_969_0_s
.Llit_string_α_969_0_s: .string          "PAT$2"
                        .size            n399_lit_string_bx, .-n399_lit_string_bx
                        .type            n400_lit_string_bx, @function
n400_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_string_α:      sub              rsp, 16
                        mov              r11, 314
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_970_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n401_call_α
n400_lit_string_β:      mov              r11, 314
                        add              rsp, 16;                             jmp   n399_lit_string_β
.Llit_string_α_970_0:   .quad            .Llit_string_α_970_0_s
.Llit_string_α_970_0_s: .string          "2"
                        .size            n400_lit_string_bx, .-n400_lit_string_bx
                        .type            n401_call_bx, @function
n401_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_call_α:            sub              rsp, 16
                        mov              r11, 315
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
.Lcall_α_rkfnzd972:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd972]
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
                        cmp              al, 104;                             jne   .Lcall_α_971_240
                        add              rsp, 16;                             jmp   n400_lit_string_β
.Lcall_α_971_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n402_assign_α
n401_call_β:            mov              r11, 315
                        add              rsp, 16;                             jmp   n400_lit_string_β
                        .size            n401_call_bx, .-n401_call_bx
                        .type            n402_assign_bx, @function
n402_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n402_assign_α:          mov              r11, 316
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # A
                        mov              qword ptr [r9 + 296], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_973_0]
                        .section         .rodata
.Lassign_α_973_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_973_1_s]
                        mov              r8, 62
                        mov              r9, 34
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n403_statement_end_α
.Lassign_α_973_0:       .quad            .Lassign_α_973_0_s
.Lassign_α_973_0_s:     .string          "A"
                        .size            n402_assign_bx, .-n402_assign_bx
                        .type            n403_statement_end_bx, @function
n403_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n403_statement_end_α:   mov              r11, 317
                        mov              r10, 34
                        add              rsp, 80;                             jmp   n404_stmt_mark_α
                        .size            n403_statement_end_bx, .-n403_statement_end_bx
                        .type            n404_stmt_mark_bx, @function
n404_stmt_mark_bx:
#=======================================================================================================================
#         F = FENCE(A | ANY('+-') . *PSH() *F . *SGN())
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 63 0
n404_stmt_mark_α:       mov              r11, 318
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 35
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n405_statement_begin_α
                        .size            n404_stmt_mark_bx, .-n404_stmt_mark_bx
                        .type            n405_statement_begin_bx, @function
n405_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n405_statement_begin_α: mov              r11, 319
                        mov              r10, 35;                             jmp   n406_var_α
n405_statement_begin_β: mov              r11, 319;                            jmp   n413_stmt_mark_α
                        .size            n405_statement_begin_bx, .-n405_statement_begin_bx
                        .type            n406_var_bx, @function
n406_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n406_var_α:             sub              rsp, 16
                        mov              r11, 320
                        mov              rax, qword ptr [r9 + 288]            # A
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n407_assign_α
                        .size            n406_var_bx, .-n406_var_bx
                        .type            n407_assign_bx, @function
n407_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n407_assign_α:          mov              r11, 321
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 488], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_981_0]
                        .section         .rodata
.Lassign_α_981_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_981_1_s]
                        mov              r8, 63
                        mov              r9, 35
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n408_lit_string_α
.Lassign_α_981_0:       .quad            .Lassign_α_981_0_s
.Lassign_α_981_0_s:     .string          "PAT$3$V0"
                        .size            n407_assign_bx, .-n407_assign_bx
                        .type            n408_lit_string_bx, @function
n408_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_string_α:      sub              rsp, 16
                        mov              r11, 322
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_982_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n409_lit_string_α
n408_lit_string_β:      mov              r11, 322
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n405_statement_begin_β
.Llit_string_α_982_0:   .quad            .Llit_string_α_982_0_s
.Llit_string_α_982_0_s: .string          "PAT$3"
                        .size            n408_lit_string_bx, .-n408_lit_string_bx
                        .type            n409_lit_string_bx, @function
n409_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_string_α:      sub              rsp, 16
                        mov              r11, 323
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_983_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n410_call_α
n409_lit_string_β:      mov              r11, 323
                        add              rsp, 16;                             jmp   n408_lit_string_β
.Llit_string_α_983_0:   .quad            .Llit_string_α_983_0_s
.Llit_string_α_983_0_s: .string          "1"
                        .size            n409_lit_string_bx, .-n409_lit_string_bx
                        .type            n410_call_bx, @function
n410_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n410_call_α:            sub              rsp, 16
                        mov              r11, 324
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
.Lcall_α_rkfnzd985:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd985]
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
                        cmp              al, 104;                             jne   .Lcall_α_984_240
                        add              rsp, 16;                             jmp   n409_lit_string_β
.Lcall_α_984_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n411_assign_α
n410_call_β:            mov              r11, 324
                        add              rsp, 16;                             jmp   n409_lit_string_β
                        .size            n410_call_bx, .-n410_call_bx
                        .type            n411_assign_bx, @function
n411_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n411_assign_α:          mov              r11, 325
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # F
                        mov              qword ptr [r9 + 312], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_986_0]
                        .section         .rodata
.Lassign_α_986_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_986_1_s]
                        mov              r8, 63
                        mov              r9, 35
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n412_statement_end_α
.Lassign_α_986_0:       .quad            .Lassign_α_986_0_s
.Lassign_α_986_0_s:     .string          "F"
                        .size            n411_assign_bx, .-n411_assign_bx
                        .type            n412_statement_end_bx, @function
n412_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n412_statement_end_α:   mov              r11, 326
                        mov              r10, 35
                        add              rsp, 64;                             jmp   n413_stmt_mark_α
                        .size            n412_statement_end_bx, .-n412_statement_end_bx
                        .type            n413_stmt_mark_bx, @function
n413_stmt_mark_bx:
#=======================================================================================================================
#         T = F ARBNO('*' F . *MUL() | '/' F . *DIV())
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 64 0
n413_stmt_mark_α:       mov              r11, 327
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 36
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 64
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n414_statement_begin_α
                        .size            n413_stmt_mark_bx, .-n413_stmt_mark_bx
                        .type            n414_statement_begin_bx, @function
n414_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_statement_begin_α: mov              r11, 328
                        mov              r10, 36;                             jmp   n415_var_α
n414_statement_begin_β: mov              r11, 328;                            jmp   n426_stmt_mark_α
                        .size            n414_statement_begin_bx, .-n414_statement_begin_bx
                        .type            n415_var_bx, @function
n415_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n415_var_α:             sub              rsp, 16
                        mov              r11, 329
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n416_var_α
                        .size            n415_var_bx, .-n415_var_bx
                        .type            n416_var_bx, @function
n416_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_var_α:             sub              rsp, 16
                        mov              r11, 330
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n417_var_α
n416_var_β:             mov              r11, 330
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n414_statement_begin_β
                        .size            n416_var_bx, .-n416_var_bx
                        .type            n417_var_bx, @function
n417_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n417_var_α:             sub              rsp, 16
                        mov              r11, 331
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n418_assign_α
n417_var_β:             mov              r11, 331
                        add              rsp, 16;                             jmp   n416_var_β
                        .size            n417_var_bx, .-n417_var_bx
                        .type            n418_assign_bx, @function
n418_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n418_assign_α:          mov              r11, 332
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 496], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 504], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_996_0]
                        .section         .rodata
.Lassign_α_996_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_996_1_s]
                        mov              r8, 64
                        mov              r9, 36
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n419_assign_α
.Lassign_α_996_0:       .quad            .Lassign_α_996_0_s
.Lassign_α_996_0_s:     .string          "PAT$4$V0"
                        .size            n418_assign_bx, .-n418_assign_bx
                        .type            n419_assign_bx, @function
n419_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_assign_α:          mov              r11, 333
                        mov              rax, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 512], rax            # PAT$4$V1
                        mov              qword ptr [r9 + 520], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_997_0]
                        .section         .rodata
.Lassign_α_997_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_997_1_s]
                        mov              r8, 64
                        mov              r9, 36
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n420_assign_α
.Lassign_α_997_0:       .quad            .Lassign_α_997_0_s
.Lassign_α_997_0_s:     .string          "PAT$4$V1"
                        .size            n419_assign_bx, .-n419_assign_bx
                        .type            n420_assign_bx, @function
n420_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_assign_α:          mov              r11, 334
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 528], rax            # PAT$4$V2
                        mov              qword ptr [r9 + 536], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_998_0]
                        .section         .rodata
.Lassign_α_998_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_998_1_s]
                        mov              r8, 64
                        mov              r9, 36
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n421_lit_string_α
.Lassign_α_998_0:       .quad            .Lassign_α_998_0_s
.Lassign_α_998_0_s:     .string          "PAT$4$V2"
                        .size            n420_assign_bx, .-n420_assign_bx
                        .type            n421_lit_string_bx, @function
n421_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_lit_string_α:      sub              rsp, 16
                        mov              r11, 335
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_999_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n422_lit_string_α
n421_lit_string_β:      mov              r11, 335
                        add              rsp, 16;                             jmp   n417_var_β
.Llit_string_α_999_0:   .quad            .Llit_string_α_999_0_s
.Llit_string_α_999_0_s: .string          "PAT$4"
                        .size            n421_lit_string_bx, .-n421_lit_string_bx
                        .type            n422_lit_string_bx, @function
n422_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:      sub              rsp, 16
                        mov              r11, 336
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1000_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n423_call_α
n422_lit_string_β:      mov              r11, 336
                        add              rsp, 16;                             jmp   n421_lit_string_β
.Llit_string_α_1000_0:  .quad            .Llit_string_α_1000_0_s
.Llit_string_α_1000_0_s:
                        .string          "3"
                        .size            n422_lit_string_bx, .-n422_lit_string_bx
                        .type            n423_call_bx, @function
n423_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n423_call_α:            sub              rsp, 16
                        mov              r11, 337
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
.Lcall_α_rkfnzd1002:    .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1002]
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
                        cmp              al, 104;                             jne   .Lcall_α_1001_240
                        add              rsp, 16;                             jmp   n422_lit_string_β
.Lcall_α_1001_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n424_assign_α
n423_call_β:            mov              r11, 337
                        add              rsp, 16;                             jmp   n422_lit_string_β
                        .size            n423_call_bx, .-n423_call_bx
                        .type            n424_assign_bx, @function
n424_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_assign_α:          mov              r11, 338
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # T
                        mov              qword ptr [r9 + 328], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1003_0]
                        .section         .rodata
.Lassign_α_1003_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1003_1_s]
                        mov              r8, 64
                        mov              r9, 36
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n425_statement_end_α
.Lassign_α_1003_0:      .quad            .Lassign_α_1003_0_s
.Lassign_α_1003_0_s:    .string          "T"
                        .size            n424_assign_bx, .-n424_assign_bx
                        .type            n425_statement_end_bx, @function
n425_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_statement_end_α:   mov              r11, 339
                        mov              r10, 36
                        add              rsp, 96;                             jmp   n426_stmt_mark_α
                        .size            n425_statement_end_bx, .-n425_statement_end_bx
                        .type            n426_stmt_mark_bx, @function
n426_stmt_mark_bx:
#=======================================================================================================================
#         X = T ARBNO('+' T . *ADD() | '-' T . *SUB())
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 65 0
n426_stmt_mark_α:       mov              r11, 340
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 37
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 65
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n427_statement_begin_α
                        .size            n426_stmt_mark_bx, .-n426_stmt_mark_bx
                        .type            n427_statement_begin_bx, @function
n427_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n427_statement_begin_α: mov              r11, 341
                        mov              r10, 37;                             jmp   n428_var_α
n427_statement_begin_β: mov              r11, 341;                            jmp   n439_stmt_mark_α
                        .size            n427_statement_begin_bx, .-n427_statement_begin_bx
                        .type            n428_var_bx, @function
n428_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n428_var_α:             sub              rsp, 16
                        mov              r11, 342
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n429_var_α
                        .size            n428_var_bx, .-n428_var_bx
                        .type            n429_var_bx, @function
n429_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_var_α:             sub              rsp, 16
                        mov              r11, 343
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n430_var_α
n429_var_β:             mov              r11, 343
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n427_statement_begin_β
                        .size            n429_var_bx, .-n429_var_bx
                        .type            n430_var_bx, @function
n430_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_var_α:             sub              rsp, 16
                        mov              r11, 344
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n431_assign_α
n430_var_β:             mov              r11, 344
                        add              rsp, 16;                             jmp   n429_var_β
                        .size            n430_var_bx, .-n430_var_bx
                        .type            n431_assign_bx, @function
n431_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n431_assign_α:          mov              r11, 345
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 544], rax            # PAT$5$V0
                        mov              qword ptr [r9 + 552], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1013_0]
                        .section         .rodata
.Lassign_α_1013_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1013_1_s]
                        mov              r8, 65
                        mov              r9, 37
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n432_assign_α
.Lassign_α_1013_0:      .quad            .Lassign_α_1013_0_s
.Lassign_α_1013_0_s:    .string          "PAT$5$V0"
                        .size            n431_assign_bx, .-n431_assign_bx
                        .type            n432_assign_bx, @function
n432_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_assign_α:          mov              r11, 346
                        mov              rax, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 560], rax            # PAT$5$V1
                        mov              qword ptr [r9 + 568], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1014_0]
                        .section         .rodata
.Lassign_α_1014_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1014_1_s]
                        mov              r8, 65
                        mov              r9, 37
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n433_assign_α
.Lassign_α_1014_0:      .quad            .Lassign_α_1014_0_s
.Lassign_α_1014_0_s:    .string          "PAT$5$V1"
                        .size            n432_assign_bx, .-n432_assign_bx
                        .type            n433_assign_bx, @function
n433_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_assign_α:          mov              r11, 347
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 576], rax            # PAT$5$V2
                        mov              qword ptr [r9 + 584], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1015_0]
                        .section         .rodata
.Lassign_α_1015_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1015_1_s]
                        mov              r8, 65
                        mov              r9, 37
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n434_lit_string_α
.Lassign_α_1015_0:      .quad            .Lassign_α_1015_0_s
.Lassign_α_1015_0_s:    .string          "PAT$5$V2"
                        .size            n433_assign_bx, .-n433_assign_bx
                        .type            n434_lit_string_bx, @function
n434_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_lit_string_α:      sub              rsp, 16
                        mov              r11, 348
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_1016_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n435_lit_string_α
n434_lit_string_β:      mov              r11, 348
                        add              rsp, 16;                             jmp   n430_var_β
.Llit_string_α_1016_0:  .quad            .Llit_string_α_1016_0_s
.Llit_string_α_1016_0_s:
                        .string          "PAT$5"
                        .size            n434_lit_string_bx, .-n434_lit_string_bx
                        .type            n435_lit_string_bx, @function
n435_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_string_α:      sub              rsp, 16
                        mov              r11, 349
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1017_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n436_call_α
n435_lit_string_β:      mov              r11, 349
                        add              rsp, 16;                             jmp   n434_lit_string_β
.Llit_string_α_1017_0:  .quad            .Llit_string_α_1017_0_s
.Llit_string_α_1017_0_s:
                        .string          "3"
                        .size            n435_lit_string_bx, .-n435_lit_string_bx
                        .type            n436_call_bx, @function
n436_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_call_α:            sub              rsp, 16
                        mov              r11, 350
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
.Lcall_α_rkfnzd1019:    .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1019]
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
                        cmp              al, 104;                             jne   .Lcall_α_1018_240
                        add              rsp, 16;                             jmp   n435_lit_string_β
.Lcall_α_1018_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n437_assign_α
n436_call_β:            mov              r11, 350
                        add              rsp, 16;                             jmp   n435_lit_string_β
                        .size            n436_call_bx, .-n436_call_bx
                        .type            n437_assign_bx, @function
n437_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_assign_α:          mov              r11, 351
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # X
                        mov              qword ptr [r9 + 344], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1020_0]
                        .section         .rodata
.Lassign_α_1020_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1020_1_s]
                        mov              r8, 65
                        mov              r9, 37
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n438_statement_end_α
.Lassign_α_1020_0:      .quad            .Lassign_α_1020_0_s
.Lassign_α_1020_0_s:    .string          "X"
                        .size            n437_assign_bx, .-n437_assign_bx
                        .type            n438_statement_end_bx, @function
n438_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_statement_end_α:   mov              r11, 352
                        mov              r10, 37
                        add              rsp, 96;                             jmp   n439_stmt_mark_α
                        .size            n438_statement_end_bx, .-n438_statement_end_bx
                        .type            n439_stmt_mark_bx, @function
n439_stmt_mark_bx:
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 66 0
n439_stmt_mark_α:       mov              r11, 353
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 38
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 66
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n440_statement_begin_α
                        .size            n439_stmt_mark_bx, .-n439_stmt_mark_bx
                        .type            n440_statement_begin_bx, @function
n440_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_statement_begin_α: mov              r11, 354
                        mov              r10, 38;                             jmp   n441_lit_integer_α
n440_statement_begin_β: mov              r11, 354;                            jmp   n449_stmt_mark_α
                        .size            n440_statement_begin_bx, .-n440_statement_begin_bx
                        .type            n441_lit_integer_bx, @function
n441_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_lit_integer_α:     sub              rsp, 16
                        mov              r11, 355
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1027_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n442_call_α
.Llit_integer_α_1027_0: .quad            10
                        .size            n441_lit_integer_bx, .-n441_lit_integer_bx
                        .type            n442_call_bx, @function
n442_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_call_α:            sub              rsp, 16
                        mov              r11, 356
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_bynamefnzd356: .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd356]
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
                        cmp              al, 104;                             jne   .Lcall_α_1028_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n440_statement_begin_β
.Lcall_α_1028_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n443_assign_α
n442_call_β:            mov              r11, 356
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n440_statement_begin_β
                        .size            n442_call_bx, .-n442_call_bx
                        .type            n443_assign_bx, @function
n443_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_assign_α:          mov              r11, 357
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax            # PAT$6$V0
                        mov              qword ptr [r9 + 600], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1029_0]
                        .section         .rodata
.Lassign_α_1029_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1029_1_s]
                        mov              r8, 66
                        mov              r9, 38
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n444_lit_string_α
.Lassign_α_1029_0:      .quad            .Lassign_α_1029_0_s
.Lassign_α_1029_0_s:    .string          "PAT$6$V0"
                        .size            n443_assign_bx, .-n443_assign_bx
                        .type            n444_lit_string_bx, @function
n444_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_string_α:      sub              rsp, 16
                        mov              r11, 358
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_1030_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n445_lit_string_α
n444_lit_string_β:      mov              r11, 358
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n440_statement_begin_β
.Llit_string_α_1030_0:  .quad            .Llit_string_α_1030_0_s
.Llit_string_α_1030_0_s:
                        .string          "PAT$6"
                        .size            n444_lit_string_bx, .-n444_lit_string_bx
                        .type            n445_lit_string_bx, @function
n445_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_string_α:      sub              rsp, 16
                        mov              r11, 359
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1031_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n446_call_α
n445_lit_string_β:      mov              r11, 359
                        add              rsp, 16;                             jmp   n444_lit_string_β
.Llit_string_α_1031_0:  .quad            .Llit_string_α_1031_0_s
.Llit_string_α_1031_0_s:
                        .string          "1"
                        .size            n445_lit_string_bx, .-n445_lit_string_bx
                        .type            n446_call_bx, @function
n446_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_call_α:            sub              rsp, 16
                        mov              r11, 360
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
.Lcall_α_rkfnzd1033:    .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1033]
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
                        cmp              al, 104;                             jne   .Lcall_α_1032_240
                        add              rsp, 16;                             jmp   n445_lit_string_β
.Lcall_α_1032_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n447_assign_α
n446_call_β:            mov              r11, 360
                        add              rsp, 16;                             jmp   n445_lit_string_β
                        .size            n446_call_bx, .-n446_call_bx
                        .type            n447_assign_bx, @function
n447_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n447_assign_α:          mov              r11, 361
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # eol
                        mov              qword ptr [r9 + 360], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1034_0]
                        .section         .rodata
.Lassign_α_1034_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1034_1_s]
                        mov              r8, 66
                        mov              r9, 38
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n448_statement_end_α
.Lassign_α_1034_0:      .quad            .Lassign_α_1034_0_s
.Lassign_α_1034_0_s:    .string          "eol"
                        .size            n447_assign_bx, .-n447_assign_bx
                        .type            n448_statement_end_bx, @function
n448_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_statement_end_α:   mov              r11, 362
                        mov              r10, 38
                        add              rsp, 80;                             jmp   n449_stmt_mark_α
                        .size            n448_statement_end_bx, .-n448_statement_end_bx
                        .type            n449_stmt_mark_bx, @function
n449_stmt_mark_bx:
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 67 0
n449_stmt_mark_α:       mov              r11, 363
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 39
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 67
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n450_statement_begin_α
                        .size            n449_stmt_mark_bx, .-n449_stmt_mark_bx
                        .type            n450_statement_begin_bx, @function
n450_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_statement_begin_α: mov              r11, 364
                        mov              r10, 39;                             jmp   n451_var_α
n450_statement_begin_β: mov              r11, 364;                            jmp   n462_stmt_mark_α
                        .size            n450_statement_begin_bx, .-n450_statement_begin_bx
                        .type            n451_var_bx, @function
n451_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n451_var_α:             sub              rsp, 16
                        mov              r11, 365
                        mov              rax, qword ptr [r9 + 336]            # X
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n452_var_α
                        .size            n451_var_bx, .-n451_var_bx
                        .type            n452_var_bx, @function
n452_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_var_α:             sub              rsp, 16
                        mov              r11, 366
                        mov              rax, qword ptr [r9 + 352]            # eol
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n453_var_α
n452_var_β:             mov              r11, 366
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n450_statement_begin_β
                        .size            n452_var_bx, .-n452_var_bx
                        .type            n453_var_bx, @function
n453_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n453_var_α:             sub              rsp, 16
                        mov              r11, 367
                        mov              rax, qword ptr [r9 + 384]            # epsilon
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n454_assign_α
n453_var_β:             mov              r11, 367
                        add              rsp, 16;                             jmp   n452_var_β
                        .size            n453_var_bx, .-n453_var_bx
                        .type            n454_assign_bx, @function
n454_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n454_assign_α:          mov              r11, 368
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 608], rax            # PAT$7$V0
                        mov              qword ptr [r9 + 616], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1044_0]
                        .section         .rodata
.Lassign_α_1044_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1044_1_s]
                        mov              r8, 67
                        mov              r9, 39
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n455_assign_α
.Lassign_α_1044_0:      .quad            .Lassign_α_1044_0_s
.Lassign_α_1044_0_s:    .string          "PAT$7$V0"
                        .size            n454_assign_bx, .-n454_assign_bx
                        .type            n455_assign_bx, @function
n455_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n455_assign_α:          mov              r11, 369
                        mov              rax, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 624], rax            # PAT$7$V1
                        mov              qword ptr [r9 + 632], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1045_0]
                        .section         .rodata
.Lassign_α_1045_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1045_1_s]
                        mov              r8, 67
                        mov              r9, 39
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n456_assign_α
.Lassign_α_1045_0:      .quad            .Lassign_α_1045_0_s
.Lassign_α_1045_0_s:    .string          "PAT$7$V1"
                        .size            n455_assign_bx, .-n455_assign_bx
                        .type            n456_assign_bx, @function
n456_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n456_assign_α:          mov              r11, 370
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 640], rax            # PAT$7$V2
                        mov              qword ptr [r9 + 648], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1046_0]
                        .section         .rodata
.Lassign_α_1046_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1046_1_s]
                        mov              r8, 67
                        mov              r9, 39
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n457_lit_string_α
.Lassign_α_1046_0:      .quad            .Lassign_α_1046_0_s
.Lassign_α_1046_0_s:    .string          "PAT$7$V2"
                        .size            n456_assign_bx, .-n456_assign_bx
                        .type            n457_lit_string_bx, @function
n457_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n457_lit_string_α:      sub              rsp, 16
                        mov              r11, 371
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_1047_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n458_lit_string_α
n457_lit_string_β:      mov              r11, 371
                        add              rsp, 16;                             jmp   n453_var_β
.Llit_string_α_1047_0:  .quad            .Llit_string_α_1047_0_s
.Llit_string_α_1047_0_s:
                        .string          "PAT$7"
                        .size            n457_lit_string_bx, .-n457_lit_string_bx
                        .type            n458_lit_string_bx, @function
n458_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_string_α:      sub              rsp, 16
                        mov              r11, 372
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1048_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n459_call_α
n458_lit_string_β:      mov              r11, 372
                        add              rsp, 16;                             jmp   n457_lit_string_β
.Llit_string_α_1048_0:  .quad            .Llit_string_α_1048_0_s
.Llit_string_α_1048_0_s:
                        .string          "3"
                        .size            n458_lit_string_bx, .-n458_lit_string_bx
                        .type            n459_call_bx, @function
n459_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n459_call_α:            sub              rsp, 16
                        mov              r11, 373
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
.Lcall_α_rkfnzd1050:    .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1050]
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
                        cmp              al, 104;                             jne   .Lcall_α_1049_240
                        add              rsp, 16;                             jmp   n458_lit_string_β
.Lcall_α_1049_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n460_assign_α
n459_call_β:            mov              r11, 373
                        add              rsp, 16;                             jmp   n458_lit_string_β
                        .size            n459_call_bx, .-n459_call_bx
                        .type            n460_assign_bx, @function
n460_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n460_assign_α:          mov              r11, 374
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # C
                        mov              qword ptr [r9 + 376], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1051_0]
                        .section         .rodata
.Lassign_α_1051_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1051_1_s]
                        mov              r8, 67
                        mov              r9, 39
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n461_statement_end_α
.Lassign_α_1051_0:      .quad            .Lassign_α_1051_0_s
.Lassign_α_1051_0_s:    .string          "C"
                        .size            n460_assign_bx, .-n460_assign_bx
                        .type            n461_statement_end_bx, @function
n461_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n461_statement_end_α:   mov              r11, 375
                        mov              r10, 39
                        add              rsp, 96;                             jmp   n462_stmt_mark_α
                        .size            n461_statement_end_bx, .-n461_statement_end_bx
                        .type            n462_stmt_mark_bx, @function
n462_stmt_mark_bx:
#=======================================================================================================================
#         &TRIM = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 69 0
n462_stmt_mark_α:       mov              r11, 376
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 40
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 69
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n463_statement_begin_α
                        .size            n462_stmt_mark_bx, .-n462_stmt_mark_bx
                        .type            n463_statement_begin_bx, @function
n463_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n463_statement_begin_α: mov              r11, 377
                        mov              r10, 40;                             jmp   n464_lit_integer_α
n463_statement_begin_β: mov              r11, 377;                            jmp   n467_stmt_mark_α
                        .size            n463_statement_begin_bx, .-n463_statement_begin_bx
                        .type            n464_lit_integer_bx, @function
n464_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n464_lit_integer_α:     sub              rsp, 16
                        mov              r11, 378
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1058_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n465_kw_assign_snobol4_α
.Llit_integer_α_1058_0: .quad            0
                        .size            n464_lit_integer_bx, .-n464_lit_integer_bx
                        .type            n465_kw_assign_snobol4_bx, @function
n465_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n465_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 379
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_1059_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_1059_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n463_statement_begin_β
.Lkw_assign_snobol4_α_1059_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n466_statement_end_α
.Lkw_assign_snobol4_α_1059_0:
                        .quad            1
                        .size            n465_kw_assign_snobol4_bx, .-n465_kw_assign_snobol4_bx
                        .type            n466_statement_end_bx, @function
n466_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n466_statement_end_α:   mov              r11, 380
                        mov              r10, 40
                        add              rsp, 32;                             jmp   n467_stmt_mark_α
                        .size            n466_statement_end_bx, .-n466_statement_end_bx
                        .type            n467_stmt_mark_bx, @function
n467_stmt_mark_bx:
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 70 0
n467_stmt_mark_α:       mov              r11, 381
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 41
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n468_statement_begin_α
                        .size            n467_stmt_mark_bx, .-n467_stmt_mark_bx
                        .type            n468_statement_begin_bx, @function
n468_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n468_statement_begin_α: mov              r11, 382
                        mov              r10, 41;                             jmp   n469_call_α
n468_statement_begin_β: mov              r11, 382;                            jmp   n472_stmt_mark_α
                        .size            n468_statement_begin_bx, .-n468_statement_begin_bx
                        .type            n469_call_bx, @function
n469_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n469_call_α:            sub              rsp, 16
                        mov              r11, 383
                        .section         .rodata
.Lcall_α_rkfnzd1067:    .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1067]
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
                        cmp              al, 104;                             jne   .Lcall_α_1066_240
                        add              rsp, 16;                             jmp   n468_statement_begin_β
.Lcall_α_1066_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n470_assign_α
n469_call_β:            mov              r11, 383
                        add              rsp, 16;                             jmp   n468_statement_begin_β
                        .size            n469_call_bx, .-n469_call_bx
                        .type            n470_assign_bx, @function
n470_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n470_assign_α:          mov              r11, 384
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # vars
                        mov              qword ptr [r9 + 216], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1068_0]
                        .section         .rodata
.Lassign_α_1068_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1068_1_s]
                        mov              r8, 70
                        mov              r9, 41
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n471_statement_end_α
.Lassign_α_1068_0:      .quad            .Lassign_α_1068_0_s
.Lassign_α_1068_0_s:    .string          "vars"
                        .size            n470_assign_bx, .-n470_assign_bx
                        .type            n471_statement_end_bx, @function
n471_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n471_statement_end_α:   mov              r11, 385
                        mov              r10, 41
                        add              rsp, 16;                             jmp   n472_stmt_mark_α
                        .size            n471_statement_end_bx, .-n471_statement_end_bx
                        .type            n472_stmt_mark_bx, @function
n472_stmt_mark_bx:
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 71 0
n472_stmt_mark_α:       mov              r11, 386
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 42
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 71
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n473_statement_begin_α
                        .size            n472_stmt_mark_bx, .-n472_stmt_mark_bx
                        .type            n473_statement_begin_bx, @function
n473_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n473_statement_begin_α: mov              r11, 387
                        mov              r10, 42;                             jmp   n474_var_α
n473_statement_begin_β: mov              r11, 387;                            jmp   n479_stmt_mark_α
                        .size            n473_statement_begin_bx, .-n473_statement_begin_bx
                        .type            n474_var_bx, @function
n474_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n474_var_α:             sub              rsp, 16
                        mov              r11, 388
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n475_lit_string_α
                        .size            n474_var_bx, .-n474_var_bx
                        .type            n475_lit_string_bx, @function
n475_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n475_lit_string_α:      sub              rsp, 16
                        mov              r11, 389
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1076_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n476_lit_integer_α
n475_lit_string_β:      mov              r11, 389
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n473_statement_begin_β
.Llit_string_α_1076_0:  .quad            .Llit_string_α_1076_0_s
.Llit_string_α_1076_0_s:
                        .string          "x"
                        .size            n475_lit_string_bx, .-n475_lit_string_bx
                        .type            n476_lit_integer_bx, @function
n476_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n476_lit_integer_α:     sub              rsp, 16
                        mov              r11, 390
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1077_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n477_assign_var_α
n476_lit_integer_β:     mov              r11, 390
                        add              rsp, 16;                             jmp   n475_lit_string_β
.Llit_integer_α_1077_0: .quad            1
                        .size            n476_lit_integer_bx, .-n476_lit_integer_bx
                        .type            n477_assign_var_bx, @function
n477_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n477_assign_var_α:      sub              rsp, 16
                        mov              r11, 391
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_1079_0
                        test             rsi, rsi;                            je    .Lassign_var_α_1079_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_1079_238
                        add              rsp, 16;                             jmp   n476_lit_integer_β
.Lassign_var_α_1079_238:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n478_statement_end_α
.Lassign_var_α_1079_0:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_1079_239
                        add              rsp, 16;                             jmp   n476_lit_integer_β
.Lassign_var_α_1079_239:
                        mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_1079_240
                        add              rsp, 16;                             jmp   n476_lit_integer_β
.Lassign_var_α_1079_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n478_statement_end_α
                        .size            n477_assign_var_bx, .-n477_assign_var_bx
                        .type            n478_statement_end_bx, @function
n478_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n478_statement_end_α:   mov              r11, 392
                        mov              r10, 42
                        add              rsp, 64;                             jmp   n479_stmt_mark_α
                        .size            n478_statement_end_bx, .-n478_statement_end_bx
                        .type            n479_stmt_mark_bx, @function
n479_stmt_mark_bx:
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 72 0
n479_stmt_mark_α:       mov              r11, 393
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 43
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 72
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n480_statement_begin_α
                        .size            n479_stmt_mark_bx, .-n479_stmt_mark_bx
                        .type            n480_statement_begin_bx, @function
n480_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n480_statement_begin_α: mov              r11, 394
                        mov              r10, 43;                             jmp   n481_var_α
n480_statement_begin_β: mov              r11, 394;                            jmp   n486_stmt_mark_α
                        .size            n480_statement_begin_bx, .-n480_statement_begin_bx
                        .type            n481_var_bx, @function
n481_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n481_var_α:             sub              rsp, 16
                        mov              r11, 395
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n482_lit_string_α
                        .size            n481_var_bx, .-n481_var_bx
                        .type            n482_lit_string_bx, @function
n482_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n482_lit_string_α:      sub              rsp, 16
                        mov              r11, 396
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1087_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n483_lit_integer_α
n482_lit_string_β:      mov              r11, 396
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n480_statement_begin_β
.Llit_string_α_1087_0:  .quad            .Llit_string_α_1087_0_s
.Llit_string_α_1087_0_s:
                        .string          "y"
                        .size            n482_lit_string_bx, .-n482_lit_string_bx
                        .type            n483_lit_integer_bx, @function
n483_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n483_lit_integer_α:     sub              rsp, 16
                        mov              r11, 397
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1088_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n484_assign_var_α
n483_lit_integer_β:     mov              r11, 397
                        add              rsp, 16;                             jmp   n482_lit_string_β
.Llit_integer_α_1088_0: .quad            2
                        .size            n483_lit_integer_bx, .-n483_lit_integer_bx
                        .type            n484_assign_var_bx, @function
n484_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n484_assign_var_α:      sub              rsp, 16
                        mov              r11, 398
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_1090_0
                        test             rsi, rsi;                            je    .Lassign_var_α_1090_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_1090_238
                        add              rsp, 16;                             jmp   n483_lit_integer_β
.Lassign_var_α_1090_238:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n485_statement_end_α
.Lassign_var_α_1090_0:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_1090_239
                        add              rsp, 16;                             jmp   n483_lit_integer_β
.Lassign_var_α_1090_239:
                        mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_1090_240
                        add              rsp, 16;                             jmp   n483_lit_integer_β
.Lassign_var_α_1090_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n485_statement_end_α
                        .size            n484_assign_var_bx, .-n484_assign_var_bx
                        .type            n485_statement_end_bx, @function
n485_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n485_statement_end_α:   mov              r11, 399
                        mov              r10, 43
                        add              rsp, 64;                             jmp   n486_stmt_mark_α
                        .size            n485_statement_end_bx, .-n485_statement_end_bx
                        .type            n486_stmt_mark_bx, @function
n486_stmt_mark_bx:
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 73 0
n486_stmt_mark_α:       mov              r11, 400
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 44
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 73
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n487_statement_begin_α
                        .size            n486_stmt_mark_bx, .-n486_stmt_mark_bx
                        .type            n487_statement_begin_bx, @function
n487_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n487_statement_begin_α: mov              r11, 401
                        mov              r10, 44;                             jmp   n488_var_α
n487_statement_begin_β: mov              r11, 401;                            jmp   n493_stmt_mark_α
                        .size            n487_statement_begin_bx, .-n487_statement_begin_bx
                        .type            n488_var_bx, @function
n488_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n488_var_α:             sub              rsp, 16
                        mov              r11, 402
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n489_lit_string_α
                        .size            n488_var_bx, .-n488_var_bx
                        .type            n489_lit_string_bx, @function
n489_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_string_α:      sub              rsp, 16
                        mov              r11, 403
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1098_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n490_lit_integer_α
n489_lit_string_β:      mov              r11, 403
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n487_statement_begin_β
.Llit_string_α_1098_0:  .quad            .Llit_string_α_1098_0_s
.Llit_string_α_1098_0_s:
                        .string          "z"
                        .size            n489_lit_string_bx, .-n489_lit_string_bx
                        .type            n490_lit_integer_bx, @function
n490_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_integer_α:     sub              rsp, 16
                        mov              r11, 404
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1099_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n491_assign_var_α
n490_lit_integer_β:     mov              r11, 404
                        add              rsp, 16;                             jmp   n489_lit_string_β
.Llit_integer_α_1099_0: .quad            3
                        .size            n490_lit_integer_bx, .-n490_lit_integer_bx
                        .type            n491_assign_var_bx, @function
n491_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n491_assign_var_α:      sub              rsp, 16
                        mov              r11, 405
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_1101_0
                        test             rsi, rsi;                            je    .Lassign_var_α_1101_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_1101_238
                        add              rsp, 16;                             jmp   n490_lit_integer_β
.Lassign_var_α_1101_238:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n492_statement_end_α
.Lassign_var_α_1101_0:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_1101_239
                        add              rsp, 16;                             jmp   n490_lit_integer_β
.Lassign_var_α_1101_239:
                        mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_1101_240
                        add              rsp, 16;                             jmp   n490_lit_integer_β
.Lassign_var_α_1101_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n492_statement_end_α
                        .size            n491_assign_var_bx, .-n491_assign_var_bx
                        .type            n492_statement_end_bx, @function
n492_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n492_statement_end_α:   mov              r11, 406
                        mov              r10, 44
                        add              rsp, 64;                             jmp   n493_stmt_mark_α
                        .size            n492_statement_end_bx, .-n492_statement_end_bx
                        .type            n493_stmt_mark_bx, @function
n493_stmt_mark_bx:
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 75 0
n493_stmt_mark_α:       mov              r11, 407
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 45
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 75
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n494_statement_begin_α
                        .size            n493_stmt_mark_bx, .-n493_stmt_mark_bx
                        .type            n494_statement_begin_bx, @function
n494_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n494_statement_begin_α: mov              r11, 408
                        mov              r10, 45;                             jmp   n495_lit_name_α
n494_statement_begin_β: mov              r11, 408;                            jmp   n500_stmt_mark_α
                        .size            n494_statement_begin_bx, .-n494_statement_begin_bx
                        .type            n495_lit_name_bx, @function
n495_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_name_α:        sub              rsp, 16
                        mov              r11, 409
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_1108_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n496_lit_integer_α
.Llit_name_α_1108_0:    .quad            .Llit_name_α_1108_0_s
.Llit_name_α_1108_0_s:  .string          "INPUT"
                        .size            n495_lit_name_bx, .-n495_lit_name_bx
                        .type            n496_lit_integer_bx, @function
n496_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n496_lit_integer_α:     sub              rsp, 16
                        mov              r11, 410
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1109_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n497_lit_string_α
n496_lit_integer_β:     mov              r11, 410
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n494_statement_begin_β
.Llit_integer_α_1109_0: .quad            9
                        .size            n496_lit_integer_bx, .-n496_lit_integer_bx
                        .type            n497_lit_string_bx, @function
n497_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_string_α:      sub              rsp, 16
                        mov              r11, 411
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_1110_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n498_call_α
n497_lit_string_β:      mov              r11, 411
                        add              rsp, 16;                             jmp   n496_lit_integer_β
.Llit_string_α_1110_0:  .quad            .Llit_string_α_1110_0_s
.Llit_string_α_1110_0_s:
                        .string          "[-f0 -r4194304]"
                        .size            n497_lit_string_bx, .-n497_lit_string_bx
                        .type            n498_call_bx, @function
n498_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n498_call_α:            sub              rsp, 16
                        mov              r11, 412
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
.Lcall_α_bynamefnzd412: .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd412]
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
                        cmp              al, 104;                             jne   .Lcall_α_1111_240
                        add              rsp, 16;                             jmp   n497_lit_string_β
.Lcall_α_1111_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n499_statement_end_α
n498_call_β:            mov              r11, 412
                        add              rsp, 16;                             jmp   n497_lit_string_β
                        .size            n498_call_bx, .-n498_call_bx
                        .type            n499_statement_end_bx, @function
n499_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n499_statement_end_α:   mov              r11, 413
                        mov              r10, 45
                        add              rsp, 64;                             jmp   n500_stmt_mark_α
                        .size            n499_statement_end_bx, .-n499_statement_end_bx
                        .type            n500_stmt_mark_bx, @function
n500_stmt_mark_bx:
#=======================================================================================================================
#         src = INPUT
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 76 0
n500_stmt_mark_α:       mov              r11, 414
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 46
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 76
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n501_statement_begin_α
                        .size            n500_stmt_mark_bx, .-n500_stmt_mark_bx
                        .type            n501_statement_begin_bx, @function
n501_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n501_statement_begin_α: mov              r11, 415
                        mov              r10, 46;                             jmp   n502_var_α
n501_statement_begin_β: mov              r11, 415;                            jmp   n505_stmt_mark_α
                        .size            n501_statement_begin_bx, .-n501_statement_begin_bx
                        .type            n502_var_bx, @function
n502_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n502_var_α:             sub              rsp, 16
                        mov              r11, 416
                        mov              rdi, qword ptr [rip + .Lvar_α_1118_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_1118_240
                        add              rsp, 16;                             jmp   n501_statement_begin_β
.Lvar_α_1118_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n503_assign_α
.Lvar_α_1118_0:         .quad            .Lvar_α_1118_0_s
.Lvar_α_1118_0_s:       .string          "INPUT"
                        .size            n502_var_bx, .-n502_var_bx
                        .type            n503_assign_bx, @function
n503_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n503_assign_α:          mov              r11, 417
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # src
                        mov              qword ptr [r9 + 408], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1119_0]
                        .section         .rodata
.Lassign_α_1119_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1119_1_s]
                        mov              r8, 76
                        mov              r9, 46
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n504_statement_end_α
.Lassign_α_1119_0:      .quad            .Lassign_α_1119_0_s
.Lassign_α_1119_0_s:    .string          "src"
                        .size            n503_assign_bx, .-n503_assign_bx
                        .type            n504_statement_end_bx, @function
n504_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n504_statement_end_α:   mov              r11, 418
                        mov              r10, 46
                        add              rsp, 16;                             jmp   n505_stmt_mark_α
                        .size            n504_statement_end_bx, .-n504_statement_end_bx
                        .type            n505_stmt_mark_bx, @function
n505_stmt_mark_bx:
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 79 0
n505_stmt_mark_α:       mov              r11, 419
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 47
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 79
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n506_statement_begin_α
                        .size            n505_stmt_mark_bx, .-n505_stmt_mark_bx
                        .type            n506_statement_begin_bx, @function
n506_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n506_statement_begin_α: mov              r11, 420
                        mov              r10, 47;                             jmp   n507_call_α
n506_statement_begin_β: mov              r11, 420;                            jmp   n510_stmt_mark_α
                        .size            n506_statement_begin_bx, .-n506_statement_begin_bx
                        .type            n507_call_bx, @function
n507_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n507_call_α:            sub              rsp, 16
                        mov              r11, 421
                        .section         .rodata
.Lcall_α_rkfnzd1127:    .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1127]
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
                        cmp              al, 104;                             jne   .Lcall_α_1126_240
                        add              rsp, 16;                             jmp   n506_statement_begin_β
.Lcall_α_1126_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n508_assign_α
n507_call_β:            mov              r11, 421
                        add              rsp, 16;                             jmp   n506_statement_begin_β
                        .size            n507_call_bx, .-n507_call_bx
                        .type            n508_assign_bx, @function
n508_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n508_assign_α:          mov              r11, 422
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax            # t0
                        mov              qword ptr [r9 + 424], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1128_0]
                        .section         .rodata
.Lassign_α_1128_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1128_1_s]
                        mov              r8, 79
                        mov              r9, 47
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n509_statement_end_α
.Lassign_α_1128_0:      .quad            .Lassign_α_1128_0_s
.Lassign_α_1128_0_s:    .string          "t0"
                        .size            n508_assign_bx, .-n508_assign_bx
                        .type            n509_statement_end_bx, @function
n509_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n509_statement_end_α:   mov              r11, 423
                        mov              r10, 47
                        add              rsp, 16;                             jmp   n510_stmt_mark_α
                        .size            n509_statement_end_bx, .-n509_statement_end_bx
                        .type            n510_stmt_mark_bx, @function
n510_stmt_mark_bx:
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 80 0
n510_stmt_mark_α:       mov              r11, 424
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 48
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 80
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n511_statement_begin_α
                        .size            n510_stmt_mark_bx, .-n510_stmt_mark_bx
                        .type            n511_statement_begin_bx, @function
n511_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n511_statement_begin_α: mov              r11, 425
                        mov              r10, 48;                             jmp   n512_var_α
n511_statement_begin_β: mov              r11, 425;                            jmp   n520_stmt_mark_α
                        .size            n511_statement_begin_bx, .-n511_statement_begin_bx
                        .type            n512_var_bx, @function
n512_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n512_var_α:             sub              rsp, 16
                        mov              r11, 426
                        mov              rax, qword ptr [r9 + 400]            # src
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n513_var_α
                        .size            n512_var_bx, .-n512_var_bx
                        .type            n513_var_bx, @function
n513_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n513_var_α:             sub              rsp, 16
                        mov              r11, 427
                        mov              rax, qword ptr [r9 + 368]            # C
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n514_assign_α
n513_var_β:             mov              r11, 427
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n520_stmt_mark_α
                        .size            n513_var_bx, .-n513_var_bx
                        .type            n514_assign_bx, @function
n514_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n514_assign_α:          mov              r11, 428
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1137_0]
                        .section         .rodata
.Lassign_α_1137_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1137_1_s]
                        mov              r8, 80
                        mov              r9, 48
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1137_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n515_match_begin_α
n514_assign_β:          mov              r11, 428;                            jmp   n513_var_β
.Lassign_α_1137_0:      .quad            .Lassign_α_1137_0_s
.Lassign_α_1137_0_s:    .string          "PATV$0"
                        .size            n514_assign_bx, .-n514_assign_bx
                        .type            n515_match_begin_bx, @function
n515_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n515_match_begin_α:     mov              r11, 429
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
.Lmatch_begin_α_1139_0: mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_1139_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n516_match_defer_α
n515_match_begin_β:     mov              r11, 429
.Lmatch_begin_α_1139_13:
                        lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_1139_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_1139_1
                                                                              jmp   .Lmatch_begin_α_1139_0
.Lmatch_begin_β_1139_1:
.Lmatch_begin_γ_515_af: mov              r11, 429
.Lmatch_begin_ω_515_af: mov              r11, 429
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
                        pop              rbp;                                 jmp   n514_assign_β
                        .size            n515_match_begin_bx, .-n515_match_begin_bx
                        .type            n516_match_defer_bx, @function
n516_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n516_match_defer_α:     mov              r11, 430
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S22]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_1140_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_1140_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_1140_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_1140_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_1140_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_1140_23
                                                                              jmp   .Lmatch_defer_α_1140_22
.Lmatch_defer_α_1140_32:
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_1140_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_1140_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_1140_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_1140_0
.Lmatch_defer_α_1140_31:
                        mov              edx, -1;                             jmp   .Lmatch_defer_α_1140_0
.Lmatch_defer_α_1140_22:
                        push             r14
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
.Lmatch_defer_α_1140_23:
                        test             rax, rax;                            jz    .Lmatch_defer_α_1140_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_1140_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_1140_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_1140_4:                                                       jmp   n517_match_end_α
.Lmatch_defer_α_1140_5:                                                       jmp   n515_match_begin_β
.Lmatch_defer_α_1140_0: mov              eax, edx
                        test             eax, eax;                            js    n515_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_1140_6]
                        push             rcx
                        push             rax;                                 jmp   n517_match_end_α
.Lmatch_defer_α_1140_6: add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n515_match_begin_β
n516_match_defer_β:     mov              r11, 430
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_1140_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_1140_12
                                                                              jmp   rax
.Lmatch_defer_β_1140_12:
                                                                              jmp   qword ptr [rsp]
                        .size            n516_match_defer_bx, .-n516_match_defer_bx
                        .type            n517_match_end_bx, @function
n517_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n517_match_end_α:       mov              r11, 431
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
                        test             rax, rax;                            je    .Lmatch_end_α_1142_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_515_af
.Lmatch_end_α_1142_13:  add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n518_statement_end_α
                        .size            n517_match_end_bx, .-n517_match_end_bx
                        .type            n518_statement_end_bx, @function
n518_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n518_statement_end_α:   mov              r11, 432
                        mov              r10, 48
                        add              rsp, 32;                             jmp   n519_stmt_mark_α
                        .size            n518_statement_end_bx, .-n518_statement_end_bx
                        .type            n519_stmt_mark_bx, @function
n519_stmt_mark_bx:
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 81 0
n519_stmt_mark_α:       mov              r11, 433
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 49
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 81
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n521_statement_begin_α
                        .size            n519_stmt_mark_bx, .-n519_stmt_mark_bx
                        .type            n520_stmt_mark_bx, @function
n520_stmt_mark_bx:
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 83 0
n520_stmt_mark_α:       mov              r11, 434
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 51
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 83
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n536_statement_begin_α
                        .size            n520_stmt_mark_bx, .-n520_stmt_mark_bx
                        .type            n521_statement_begin_bx, @function
n521_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n521_statement_begin_α: mov              r11, 435
                        mov              r10, 49;                             jmp   n522_call_α
n521_statement_begin_β: mov              r11, 435;                            jmp   n525_stmt_mark_α
                        .size            n521_statement_begin_bx, .-n521_statement_begin_bx
                        .type            n522_call_bx, @function
n522_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n522_call_α:            sub              rsp, 16
                        mov              r11, 436
                        .section         .rodata
.Lcall_α_rkfnzd1152:    .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1152]
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
                        cmp              al, 104;                             jne   .Lcall_α_1151_240
                        add              rsp, 16;                             jmp   n521_statement_begin_β
.Lcall_α_1151_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n523_assign_α
n522_call_β:            mov              r11, 436
                        add              rsp, 16;                             jmp   n521_statement_begin_β
                        .size            n522_call_bx, .-n522_call_bx
                        .type            n523_assign_bx, @function
n523_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n523_assign_α:          mov              r11, 437
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # t1
                        mov              qword ptr [r9 + 440], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1153_0]
                        .section         .rodata
.Lassign_α_1153_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1153_1_s]
                        mov              r8, 83
                        mov              r9, 49
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n524_statement_end_α
.Lassign_α_1153_0:      .quad            .Lassign_α_1153_0_s
.Lassign_α_1153_0_s:    .string          "t1"
                        .size            n523_assign_bx, .-n523_assign_bx
                        .type            n524_statement_end_bx, @function
n524_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n524_statement_end_α:   mov              r11, 438
                        mov              r10, 49
                        add              rsp, 16;                             jmp   n525_stmt_mark_α
                        .size            n524_statement_end_bx, .-n524_statement_end_bx
                        .type            n525_stmt_mark_bx, @function
n525_stmt_mark_bx:
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0) / 1000000        :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 82 0
n525_stmt_mark_α:       mov              r11, 439
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 50
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 82
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n526_statement_begin_α
                        .size            n525_stmt_mark_bx, .-n525_stmt_mark_bx
                        .type            n526_statement_begin_bx, @function
n526_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n526_statement_begin_α: mov              r11, 440
                        mov              r10, 50;                             jmp   n527_lit_string_α
n526_statement_begin_β: mov              r11, 440;                            jmp   main_γ
                        .size            n526_statement_begin_bx, .-n526_statement_begin_bx
                        .type            n527_lit_string_bx, @function
n527_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n527_lit_string_α:      sub              rsp, 16
                        mov              r11, 441
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_1160_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n528_var_α
.Llit_string_α_1160_0:  .quad            .Llit_string_α_1160_0_s
.Llit_string_α_1160_0_s:
                        .string          "match_ms="
                        .size            n527_lit_string_bx, .-n527_lit_string_bx
                        .type            n528_var_bx, @function
n528_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n528_var_α:             sub              rsp, 16
                        mov              r11, 442
                        mov              rax, qword ptr [r9 + 432]            # t1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n529_var_α
n528_var_β:             mov              r11, 442
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n526_statement_begin_β
                        .size            n528_var_bx, .-n528_var_bx
                        .type            n529_var_bx, @function
n529_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n529_var_α:             sub              rsp, 16
                        mov              r11, 443
                        mov              rax, qword ptr [r9 + 416]            # t0
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n530_binop_α
n529_var_β:             mov              r11, 443
                        add              rsp, 16;                             jmp   n528_var_β
                        .size            n529_var_bx, .-n529_var_bx
                        .type            n530_binop_bx, @function
n530_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n530_binop_α:           sub              rsp, 16
                        mov              r11, 444
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1163_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_1163_7
.Lbinop_α_1163_2:       and              edx, 1;                              jz    .Lbinop_α_1163_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_1163_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1163_4
.Lbinop_α_1163_3:       movq             xmm0, rsi
.Lbinop_α_1163_4:       cmp              cl, 5;                               je    .Lbinop_α_1163_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1163_6
.Lbinop_α_1163_5:       movq             xmm1, rdi
.Lbinop_α_1163_6:       subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_1163_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_1163_7:                                                             jmp   n531_lit_integer_α
.Lbinop_α_1163_0:       mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_1163_240
                        add              rsp, 16;                             jmp   n529_var_β
.Lbinop_α_1163_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n531_lit_integer_α
n530_binop_β:           mov              r11, 444
                        add              rsp, 16;                             jmp   n529_var_β
                        .size            n530_binop_bx, .-n530_binop_bx
                        .type            n531_lit_integer_bx, @function
n531_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n531_lit_integer_α:     sub              rsp, 16
                        mov              r11, 445
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1164_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n532_binop_α
n531_lit_integer_β:     mov              r11, 445
                        add              rsp, 16;                             jmp   n530_binop_β
.Llit_integer_α_1164_0: .quad            1000000
                        .size            n531_lit_integer_bx, .-n531_lit_integer_bx
                        .type            n532_binop_bx, @function
n532_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n532_binop_α:           sub              rsp, 16
                        mov              r11, 446
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
                        cmp              al, 104;                             jne   .Lbinop_α_1165_240
                        add              rsp, 16;                             jmp   n531_lit_integer_β
.Lbinop_α_1165_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n533_binop_α
n532_binop_β:           mov              r11, 446
                        add              rsp, 16;                             jmp   n531_lit_integer_β
                        .size            n532_binop_bx, .-n532_binop_bx
                        .type            n533_binop_bx, @function
n533_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n533_binop_α:           sub              rsp, 16
                        mov              r11, 447
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n534_assign_α
                        .size            n533_binop_bx, .-n533_binop_bx
                        .type            n534_assign_bx, @function
n534_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n534_assign_α:          mov              r11, 448
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1167_0]
                        .section         .rodata
.Lassign_α_1167_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1167_1_s]
                        mov              r8, 82
                        mov              r9, 50
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1167_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n535_statement_end_α
.Lassign_α_1167_0:      .quad            .Lassign_α_1167_0_s
.Lassign_α_1167_0_s:    .string          "TERMINAL"
                        .size            n534_assign_bx, .-n534_assign_bx
                        .type            n535_statement_end_bx, @function
n535_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n535_statement_end_α:   mov              r11, 449
                        mov              r10, 50
                        add              rsp, 112;                            jmp   main_γ
                        .size            n535_statement_end_bx, .-n535_statement_end_bx
                        .type            n536_statement_begin_bx, @function
n536_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n536_statement_begin_α: mov              r11, 450
                        mov              r10, 51;                             jmp   n537_call_α
n536_statement_begin_β: mov              r11, 450;                            jmp   n540_stmt_mark_α
                        .size            n536_statement_begin_bx, .-n536_statement_begin_bx
                        .type            n537_call_bx, @function
n537_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n537_call_α:            sub              rsp, 16
                        mov              r11, 451
                        .section         .rodata
.Lcall_α_rkfnzd1173:    .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1173]
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
                        cmp              al, 104;                             jne   .Lcall_α_1172_240
                        add              rsp, 16;                             jmp   n536_statement_begin_β
.Lcall_α_1172_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n538_assign_α
n537_call_β:            mov              r11, 451
                        add              rsp, 16;                             jmp   n536_statement_begin_β
                        .size            n537_call_bx, .-n537_call_bx
                        .type            n538_assign_bx, @function
n538_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n538_assign_α:          mov              r11, 452
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # t1
                        mov              qword ptr [r9 + 440], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1174_0]
                        .section         .rodata
.Lassign_α_1174_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1174_1_s]
                        mov              r8, 82
                        mov              r9, 51
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n539_statement_end_α
.Lassign_α_1174_0:      .quad            .Lassign_α_1174_0_s
.Lassign_α_1174_0_s:    .string          "t1"
                        .size            n538_assign_bx, .-n538_assign_bx
                        .type            n539_statement_end_bx, @function
n539_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n539_statement_end_α:   mov              r11, 453
                        mov              r10, 51
                        add              rsp, 16;                             jmp   n540_stmt_mark_α
                        .size            n539_statement_end_bx, .-n539_statement_end_bx
                        .type            n540_stmt_mark_bx, @function
n540_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 84 0
n540_stmt_mark_α:       mov              r11, 454
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 52
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 84
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n541_statement_begin_α
                        .size            n540_stmt_mark_bx, .-n540_stmt_mark_bx
                        .type            n541_statement_begin_bx, @function
n541_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n541_statement_begin_α: mov              r11, 455
                        mov              r10, 52;                             jmp   n542_lit_string_α
n541_statement_begin_β: mov              r11, 455;                            jmp   n545_stmt_mark_α
                        .size            n541_statement_begin_bx, .-n541_statement_begin_bx
                        .type            n542_lit_string_bx, @function
n542_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n542_lit_string_α:      sub              rsp, 16
                        mov              r11, 456
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1181_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n543_assign_α
.Llit_string_α_1181_0:  .quad            .Llit_string_α_1181_0_s
.Llit_string_α_1181_0_s:
                        .string          "Boo!"
                        .size            n542_lit_string_bx, .-n542_lit_string_bx
                        .type            n543_assign_bx, @function
n543_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n543_assign_α:          mov              r11, 457
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1182_0]
                        .section         .rodata
.Lassign_α_1182_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1182_1_s]
                        mov              r8, 84
                        mov              r9, 52
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1182_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n544_statement_end_α
.Lassign_α_1182_0:      .quad            .Lassign_α_1182_0_s
.Lassign_α_1182_0_s:    .string          "OUTPUT"
                        .size            n543_assign_bx, .-n543_assign_bx
                        .type            n544_statement_end_bx, @function
n544_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n544_statement_end_α:   mov              r11, 458
                        mov              r10, 52
                        add              rsp, 16;                             jmp   n545_stmt_mark_α
                        .size            n544_statement_end_bx, .-n544_statement_end_bx
                        .type            n545_stmt_mark_bx, @function
n545_stmt_mark_bx:
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0) / 1000000
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 85 0
n545_stmt_mark_α:       mov              r11, 459
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 53
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 85
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n546_statement_begin_α
                        .size            n545_stmt_mark_bx, .-n545_stmt_mark_bx
                        .type            n546_statement_begin_bx, @function
n546_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n546_statement_begin_α: mov              r11, 460
                        mov              r10, 53;                             jmp   n547_lit_string_α
n546_statement_begin_β: mov              r11, 460;                            jmp   main_γ
                        .size            n546_statement_begin_bx, .-n546_statement_begin_bx
                        .type            n547_lit_string_bx, @function
n547_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n547_lit_string_α:      sub              rsp, 16
                        mov              r11, 461
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_1189_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n548_var_α
.Llit_string_α_1189_0:  .quad            .Llit_string_α_1189_0_s
.Llit_string_α_1189_0_s:
                        .string          "match_ms="
                        .size            n547_lit_string_bx, .-n547_lit_string_bx
                        .type            n548_var_bx, @function
n548_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n548_var_α:             sub              rsp, 16
                        mov              r11, 462
                        mov              rax, qword ptr [r9 + 432]            # t1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n549_var_α
n548_var_β:             mov              r11, 462
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n546_statement_begin_β
                        .size            n548_var_bx, .-n548_var_bx
                        .type            n549_var_bx, @function
n549_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n549_var_α:             sub              rsp, 16
                        mov              r11, 463
                        mov              rax, qword ptr [r9 + 416]            # t0
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n550_binop_α
n549_var_β:             mov              r11, 463
                        add              rsp, 16;                             jmp   n548_var_β
                        .size            n549_var_bx, .-n549_var_bx
                        .type            n550_binop_bx, @function
n550_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n550_binop_α:           sub              rsp, 16
                        mov              r11, 464
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1192_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_1192_7
.Lbinop_α_1192_2:       and              edx, 1;                              jz    .Lbinop_α_1192_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_1192_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1192_4
.Lbinop_α_1192_3:       movq             xmm0, rsi
.Lbinop_α_1192_4:       cmp              cl, 5;                               je    .Lbinop_α_1192_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1192_6
.Lbinop_α_1192_5:       movq             xmm1, rdi
.Lbinop_α_1192_6:       subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_1192_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_1192_7:                                                             jmp   n551_lit_integer_α
.Lbinop_α_1192_0:       mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_1192_240
                        add              rsp, 16;                             jmp   n549_var_β
.Lbinop_α_1192_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n551_lit_integer_α
n550_binop_β:           mov              r11, 464
                        add              rsp, 16;                             jmp   n549_var_β
                        .size            n550_binop_bx, .-n550_binop_bx
                        .type            n551_lit_integer_bx, @function
n551_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n551_lit_integer_α:     sub              rsp, 16
                        mov              r11, 465
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1193_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n552_binop_α
n551_lit_integer_β:     mov              r11, 465
                        add              rsp, 16;                             jmp   n550_binop_β
.Llit_integer_α_1193_0: .quad            1000000
                        .size            n551_lit_integer_bx, .-n551_lit_integer_bx
                        .type            n552_binop_bx, @function
n552_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n552_binop_α:           sub              rsp, 16
                        mov              r11, 466
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
                        cmp              al, 104;                             jne   .Lbinop_α_1194_240
                        add              rsp, 16;                             jmp   n551_lit_integer_β
.Lbinop_α_1194_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n553_binop_α
n552_binop_β:           mov              r11, 466
                        add              rsp, 16;                             jmp   n551_lit_integer_β
                        .size            n552_binop_bx, .-n552_binop_bx
                        .type            n553_binop_bx, @function
n553_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n553_binop_α:           sub              rsp, 16
                        mov              r11, 467
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n554_assign_α
                        .size            n553_binop_bx, .-n553_binop_bx
                        .type            n554_assign_bx, @function
n554_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n554_assign_α:          mov              r11, 468
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1196_0]
                        .section         .rodata
.Lassign_α_1196_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1196_1_s]
                        mov              r8, 85
                        mov              r9, 53
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1196_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n555_statement_end_α
.Lassign_α_1196_0:      .quad            .Lassign_α_1196_0_s
.Lassign_α_1196_0_s:    .string          "TERMINAL"
                        .size            n554_assign_bx, .-n554_assign_bx
                        .type            n555_statement_end_bx, @function
n555_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n555_statement_end_α:   mov              r11, 469
                        mov              r10, 53
                        add              rsp, 112;                            jmp   main_γ
                        .size            n555_statement_end_bx, .-n555_statement_end_bx
                        .type            n556_goto_bx, @function
n556_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n556_goto_α:            mov              r11, 470;                            jmp   LBL__EMIT
n556_goto_β:            mov              r11, 470;                            jmp   main_ω
                        .size            n556_goto_bx, .-n556_goto_bx
                        .type            n557_stmt_mark_bx, @function
n557_stmt_mark_bx:
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 36 0
LBL__EMIT:              mov              r11, 471
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 36
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n176_statement_begin_α
                        .size            n557_stmt_mark_bx, .-n557_stmt_mark_bx
                        .type            n558_goto_bx, @function
n558_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n558_goto_α:            mov              r11, 472;                            jmp   LBL__PSH
n558_goto_β:            mov              r11, 472;                            jmp   main_ω
                        .size            n558_goto_bx, .-n558_goto_bx
                        .type            n559_stmt_mark_bx, @function
n559_stmt_mark_bx:
#=======================================================================================================================
# PSH     PSH = .S[sp = sp + 1]                   :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 39 0
LBL__PSH:               mov              r11, 473
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 39
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n194_statement_begin_α
                        .size            n559_stmt_mark_bx, .-n559_stmt_mark_bx
                        .type            n560_goto_bx, @function
n560_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n560_goto_α:            mov              r11, 474;                            jmp   LBL__DRF
n560_goto_β:            mov              r11, 474;                            jmp   main_ω
                        .size            n560_goto_bx, .-n560_goto_bx
                        .type            n561_stmt_mark_bx, @function
n561_stmt_mark_bx:
#=======================================================================================================================
# DRF     DRF = nm
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 40 0
LBL__DRF:               mov              r11, 475
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 40
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n203_statement_begin_α
                        .size            n561_stmt_mark_bx, .-n561_stmt_mark_bx
                        .type            n562_goto_bx, @function
n562_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n562_goto_α:            mov              r11, 476;                            jmp   LBL__ADD
n562_goto_β:            mov              r11, 476;                            jmp   main_ω
                        .size            n562_goto_bx, .-n562_goto_bx
                        .type            n563_stmt_mark_bx, @function
n563_stmt_mark_bx:
#=======================================================================================================================
# ADD     S[sp = sp - 1] = DRF(S[sp]) + DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 43 0
LBL__ADD:               mov              r11, 477
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 43
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n224_statement_begin_α
                        .size            n563_stmt_mark_bx, .-n563_stmt_mark_bx
                        .type            n564_goto_bx, @function
n564_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n564_goto_α:            mov              r11, 478;                            jmp   LBL__SUB
n564_goto_β:            mov              r11, 478;                            jmp   main_ω
                        .size            n564_goto_bx, .-n564_goto_bx
                        .type            n565_stmt_mark_bx, @function
n565_stmt_mark_bx:
#=======================================================================================================================
# SUB     S[sp = sp - 1] = DRF(S[sp]) - DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 45 0
LBL__SUB:               mov              r11, 479
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 18
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 45
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n250_statement_begin_α
                        .size            n565_stmt_mark_bx, .-n565_stmt_mark_bx
                        .type            n566_goto_bx, @function
n566_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n566_goto_α:            mov              r11, 480;                            jmp   LBL__MUL
n566_goto_β:            mov              r11, 480;                            jmp   main_ω
                        .size            n566_goto_bx, .-n566_goto_bx
                        .type            n567_stmt_mark_bx, @function
n567_stmt_mark_bx:
#=======================================================================================================================
# MUL     S[sp = sp - 1] = DRF(S[sp]) * DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 47 0
LBL__MUL:               mov              r11, 481
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 20
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 47
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n276_statement_begin_α
                        .size            n567_stmt_mark_bx, .-n567_stmt_mark_bx
                        .type            n568_goto_bx, @function
n568_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n568_goto_α:            mov              r11, 482;                            jmp   LBL__DIV
n568_goto_β:            mov              r11, 482;                            jmp   main_ω
                        .size            n568_goto_bx, .-n568_goto_bx
                        .type            n569_stmt_mark_bx, @function
n569_stmt_mark_bx:
#=======================================================================================================================
# DIV     S[sp = sp - 1] = DRF(S[sp]) / DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 49 0
LBL__DIV:               mov              r11, 483
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 22
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 49
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n302_statement_begin_α
                        .size            n569_stmt_mark_bx, .-n569_stmt_mark_bx
                        .type            n570_goto_bx, @function
n570_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n570_goto_α:            mov              r11, 484;                            jmp   LBL__SGN
n570_goto_β:            mov              r11, 484;                            jmp   main_ω
                        .size            n570_goto_bx, .-n570_goto_bx
                        .type            n571_stmt_mark_bx, @function
n571_stmt_mark_bx:
#=======================================================================================================================
# SGN     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 51 0
LBL__SGN:               mov              r11, 485
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 24
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n328_statement_begin_α
                        .size            n571_stmt_mark_bx, .-n571_stmt_mark_bx
                        .type            n572_goto_bx, @function
n572_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n572_goto_α:            mov              r11, 486;                            jmp   n175_stmt_mark_α
n572_goto_β:            mov              r11, 486;                            jmp   main_ω
                        .size            n572_goto_bx, .-n572_goto_bx
                        .type            n573_goto_bx, @function
n573_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n573_goto_α:            mov              r11, 487;                            jmp   n520_stmt_mark_α
n573_goto_β:            mov              r11, 487;                            jmp   main_ω
                        .size            n573_goto_bx, .-n573_goto_bx
                        .type            n574_define_bx, @function
n574_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 488
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
                        .size            n574_define_bx, .-n574_define_bx
                        .type            n575_define_bx, @function
n575_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              r11, 489
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
                        .size            n575_define_bx, .-n575_define_bx
                        .type            n576_lit_string_bx, @function
n576_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              r11, 490
                        push             rax
                        mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rax + 0], 1
                        pop              rax;                                 jmp   RETURN
                        .size            n576_lit_string_bx, .-n576_lit_string_bx
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
.Lstartup_pname0:       .string          "LBL__EMIT"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__EMIT
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4768
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__PSH"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            LBL__PSH
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4768
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "LBL__DRF"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            LBL__DRF
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4768
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "LBL__ADD"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            LBL__ADD
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4768
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "LBL__SUB"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            LBL__SUB
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4768
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "LBL__MUL"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            LBL__MUL
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4768
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "LBL__DIV"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            LBL__DIV
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4768
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "LBL__SGN"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            LBL__SGN
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4768
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
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
