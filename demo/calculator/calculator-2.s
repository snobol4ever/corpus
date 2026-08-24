                        .intel_syntax    noprefix
                        .text
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
#-----------------------------------------------------------------------------------------------------------------------
n0_match_assign_save_α: sub              rsp, 16
                        mov              r11, 1
                        mov              dword ptr [rsp + 0], r14d;           jmp   n1_match_any_α
n0_match_assign_save_β: mov              r11, 1
                        add              rsp, 16;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_any_α:         mov              r11, 2
                        mov              eax, r14d
                        cmp              eax, r15d;                           jl    .Lx6_239
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lx6_239:               movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               jne   .Lx6_240
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lx6_240:               add              r14d, 1;                             jmp   n2_match_assign_cond_α
n1_match_any_β:         mov              r11, 2
                        sub              r14d, 1
                        add              rsp, 16;                             jmp   PAT$0_ω
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
#-----------------------------------------------------------------------------------------------------------------------
n9_match_assign_save_α: sub              rsp, 16
                        mov              r11, 4
                        mov              dword ptr [rsp + 0], r14d;           jmp   n10_match_span_α
n9_match_assign_save_β: mov              r11, 4
                        add              rsp, 16;                             jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_match_span_α:       sub              rsp, 16
                        mov              r11, 5
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx15_0:                cmp              ecx, r15d;                           jge   .Lx15_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx15_1
                        add              ecx, 1;                              jmp   .Lx15_0
.Lx15_1:                cmp              ecx, r14d;                           jg    .Lx15_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$1_ω
.Lx15_240:              mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   n11_match_assign_cond_α
n10_match_span_β:       mov              r11, 5
                        mov              r14d, dword ptr [rbp + -60]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$1_ω
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
#-----------------------------------------------------------------------------------------------------------------------
n18_match_alternate_α:  mov              r11, 7
                        mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .Lx25_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n23_match_defer_α
.Lx25_21:               lea              rax, [rip + .Lx25_22]
                        mov              qword ptr [rbp + -56], rax;          jmp   n22_match_defer_α
.Lx25_22:               lea              rax, [rip + .Lx25_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n19_match_lit_α
n18_match_alternate_s0: mov              r11, 7
                        lea              rax, [rip + .Lx25_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   n18_match_alternate_as
n18_match_alternate_s1: mov              r11, 7
                        lea              rax, [rip + .Lx25_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   n18_match_alternate_as
n18_match_alternate_s2: mov              r11, 7
                        lea              rax, [rip + .Lx25_42]
                        mov              qword ptr [rbp + -64], rax;          jmp   n18_match_alternate_as
.Lx25_40:                                                                     jmp   n23_match_defer_β
.Lx25_41:                                                                     jmp   n22_match_defer_β
.Lx25_42:                                                                     jmp   n21_match_lit_β
n18_match_alternate_as: mov              r11, 7;                              jmp   PAT$2_γ
n18_match_alternate_β:  mov              r11, 7
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
n18_match_alternate_af: mov              r11, 7
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lx25_19:                                                                     jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_match_lit_α:        mov              r11, 8
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n18_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n18_match_alternate_af
                        add              r14d, 1;                             jmp   n20_match_defer_α
n19_match_lit_β:        mov              r11, 8
                        sub              r14d, 1;                             jmp   n18_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n20_match_defer_α:      mov              r11, 9
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx28_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx28_11
.Lx28_13:               mov              rax, qword ptr [r9 + 336]            # X
                        mov              rdx, qword ptr [r9 + 344]
                        cmp              al, 8;                               jne   .Lx28_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx28_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 344];           jmp   .Lx28_10
.Lx28_9:                cmp              al, 88;                              jne   .Lx28_21
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
                        test             rax, rax;                            je    .Lx28_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx28_10
.Lx28_21:               xor              eax, eax
.Lx28_10:               test             rax, rax;                            je    .Lx28_15
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rdx
.Lx28_15:
.Lx28_11:               test             rax, rax;                            jz    .Lx28_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx28_5]
                        push             rcx
                        lea              rcx, [rip + .Lx28_4]
                        push             rcx;                                 jmp   rax
.Lx28_4:                                                                      jmp   n21_match_lit_α
.Lx28_5:                                                                      jmp   n19_match_lit_β
.Lx28_0:                push             r14
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
                        lea              rax, [rip + .Lx28_6]
                        push             rcx
                        push             rax;                                 jmp   n21_match_lit_α
.Lx28_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n19_match_lit_β
n20_match_defer_β:      mov              r11, 9
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx28_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx28_12
                                                                              jmp   rax
.Lx28_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n21_match_lit_α:        mov              r11, 10
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n20_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n20_match_defer_β
                        add              r14d, 1;                             jmp   n18_match_alternate_s2
n21_match_lit_β:        mov              r11, 10
                        sub              r14d, 1;                             jmp   n20_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_defer_α:      mov              r11, 11
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx31_16
                        mov              rax, qword ptr [rdx + 0]
.Lx31_16:               test             rax, rax;                            jz    .Lx31_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx31_5]
                        push             rcx
                        lea              rcx, [rip + .Lx31_4]
                        push             rcx;                                 jmp   rax
.Lx31_4:                                                                      jmp   n18_match_alternate_s1
.Lx31_5:                                                                      jmp   n18_match_alternate_af
.Lx31_0:                push             r14
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
                        test             eax, eax;                            js    n18_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx31_6]
                        push             rcx
                        push             rax;                                 jmp   n18_match_alternate_s1
.Lx31_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n18_match_alternate_af
n22_match_defer_β:      mov              r11, 11
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx31_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx31_12
                                                                              jmp   rax
.Lx31_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n23_match_defer_α:      mov              r11, 12
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx32_16
                        mov              rax, qword ptr [rdx + 0]
.Lx32_16:               test             rax, rax;                            jz    .Lx32_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx32_5]
                        push             rcx
                        lea              rcx, [rip + .Lx32_4]
                        push             rcx;                                 jmp   rax
.Lx32_4:                                                                      jmp   n18_match_alternate_s0
.Lx32_5:                                                                      jmp   n18_match_alternate_af
.Lx32_0:                push             r14
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
                        test             eax, eax;                            js    n18_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx32_6]
                        push             rcx
                        push             rax;                                 jmp   n18_match_alternate_s0
.Lx32_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n18_match_alternate_af
n23_match_defer_β:      mov              r11, 12
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx32_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx32_12
                                                                              jmp   rax
.Lx32_12:                                                                     jmp   qword ptr [rsp]
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
#-----------------------------------------------------------------------------------------------------------------------
n33_match_alternate_α:  mov              r11, 13
                        mov              dword ptr [rbp + -120], r14d
                        lea              rax, [rip + .Lx42_21]
                        mov              qword ptr [rbp + -104], rax;         jmp   n40_match_defer_α
.Lx42_21:               lea              rax, [rip + .Lx42_19]
                        mov              qword ptr [rbp + -104], rax;         jmp   n34_match_assign_save_α
n33_match_alternate_s0: mov              r11, 13
                        lea              rax, [rip + .Lx42_40]
                        mov              qword ptr [rbp + -112], rax;         jmp   n33_match_alternate_as
n33_match_alternate_s1: mov              r11, 13
                        lea              rax, [rip + .Lx42_41]
                        mov              qword ptr [rbp + -112], rax;         jmp   n33_match_alternate_as
.Lx42_40:                                                                     jmp   n40_match_defer_β
.Lx42_41:                                                                     jmp   n39_match_assign_cond_β
n33_match_alternate_as: mov              r11, 13;                             jmp   PAT$3_γ
n33_match_alternate_β:  mov              r11, 13
                        mov              rax, qword ptr [rbp + -112];         jmp   rax
n33_match_alternate_af: mov              r11, 13
                        mov              r14d, dword ptr [rbp + -120]
                        mov              rax, qword ptr [rbp + -104];         jmp   rax
.Lx42_19:                                                                     jmp   PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n34_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 14
                        mov              dword ptr [rbp + -48], r14d;         jmp   n35_match_any_α
n34_match_assign_save_β:
                        mov              r11, 14
                        add              rsp, 16;                             jmp   n33_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n35_match_any_α:        mov              r11, 15
                        mov              eax, r14d
                        cmp              eax, r15d;                           jl    .Lx46_240
                        add              rsp, 16;                             jmp   n33_match_alternate_af
.Lx46_240:              movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43;                             je    .Lx46_0
                        cmp              esi, 45;                             je    .Lx46_0
                        add              rsp, 16;                             jmp   n33_match_alternate_af
.Lx46_0:                add              r14d, 1;                             jmp   n36_match_assign_cond_α
n35_match_any_β:        mov              r11, 15
                        sub              r14d, 1
                        add              rsp, 16;                             jmp   n33_match_alternate_af
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
#-----------------------------------------------------------------------------------------------------------------------
n37_match_assign_save_α:
                        mov              r11, 17
                        mov              dword ptr [rbp + -64], r14d;         jmp   n38_match_defer_α
n37_match_assign_save_β:
                        mov              r11, 17;                             jmp   n36_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n38_match_defer_α:      mov              r11, 18
                        push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        cmp              al, 8;                               jne   .Lx51_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx51_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 312];           jmp   .Lx51_10
.Lx51_9:                cmp              al, 88;                              jne   .Lx51_21
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
                        test             rax, rax;                            je    .Lx51_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx51_10
.Lx51_21:               xor              eax, eax
.Lx51_10:               test             rax, rax;                            jz    .Lx51_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx51_5]
                        push             rcx
                        lea              rcx, [rip + .Lx51_4]
                        push             rcx;                                 jmp   rax
.Lx51_4:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n39_match_assign_cond_α
.Lx51_5:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n37_match_assign_save_β
.Lx51_0:                push             r14
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
                        lea              rax, [rip + .Lx51_6]
                        push             rcx
                        push             rax;                                 jmp   n39_match_assign_cond_α
.Lx51_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n37_match_assign_save_β
n38_match_defer_β:      mov              r11, 18
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n37_match_assign_save_β
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
                        add              r12, 24;                             jmp   n33_match_alternate_s1
n39_match_assign_cond_β:
                        mov              r11, 19
                        sub              r12, 24;                             jmp   n38_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n40_match_defer_α:      mov              r11, 20
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx54_16
                        mov              rax, qword ptr [rdx + 0]
.Lx54_16:               test             rax, rax;                            jz    .Lx54_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx54_5]
                        push             rcx
                        lea              rcx, [rip + .Lx54_4]
                        push             rcx;                                 jmp   rax
.Lx54_4:                                                                      jmp   n33_match_alternate_s0
.Lx54_5:                                                                      jmp   n33_match_alternate_af
.Lx54_0:                push             r14
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
                        test             eax, eax;                            js    n33_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx54_6]
                        push             rcx
                        push             rax;                                 jmp   n33_match_alternate_s0
.Lx54_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n33_match_alternate_af
n40_match_defer_β:      mov              r11, 20
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx54_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx54_12
                                                                              jmp   rax
.Lx54_12:                                                                     jmp   qword ptr [rsp]
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
#-----------------------------------------------------------------------------------------------------------------------
n55_match_defer_α:      sub              rsp, 16
                        mov              r11, 21
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx66_16
                        mov              rax, qword ptr [rdx + 0]
.Lx66_16:               test             rax, rax;                            jz    .Lx66_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx66_5]
                        push             rcx
                        lea              rcx, [rip + .Lx66_4]
                        push             rcx;                                 jmp   rax
.Lx66_4:                                                                      jmp   n56_match_arbno_α
.Lx66_5:                add              rsp, 16;                             jmp   PAT$4_ω
.Lx66_0:                push             r14
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
                        test             eax, eax;                            jns   .Lx66_240
                        add              rsp, 16;                             jmp   PAT$4_ω
.Lx66_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx66_6]
                        push             rcx
                        push             rax;                                 jmp   n56_match_arbno_α
.Lx66_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$4_ω
n55_match_defer_β:      mov              r11, 21
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx66_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx66_12
                                                                              jmp   rax
.Lx66_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n56_match_arbno_α:      mov              r11, 22
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   PAT$4_γ
n56_match_arbno_β:      mov              r11, 22
                        mov              r12, qword ptr [rbp + -40];          jmp   n57_match_alternate_α
n56_match_arbno_as:     mov              r11, 22
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n57_match_alternate_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   PAT$4_γ
n56_match_arbno_af:     mov              r11, 22
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n55_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n57_match_alternate_α:  mov              r11, 23
                        mov              dword ptr [rbp + -152], r14d
                        lea              rax, [rip + .Lx70_21]
                        mov              qword ptr [rbp + -136], rax;         jmp   n62_match_lit_α
.Lx70_21:               lea              rax, [rip + .Lx70_19]
                        mov              qword ptr [rbp + -136], rax;         jmp   n58_match_lit_α
n57_match_alternate_s0: mov              r11, 23
                        lea              rax, [rip + .Lx70_40]
                        mov              qword ptr [rbp + -144], rax;         jmp   n57_match_alternate_as
n57_match_alternate_s1: mov              r11, 23
                        lea              rax, [rip + .Lx70_41]
                        mov              qword ptr [rbp + -144], rax;         jmp   n57_match_alternate_as
.Lx70_40:                                                                     jmp   n65_match_assign_cond_β
.Lx70_41:                                                                     jmp   n61_match_assign_cond_β
n57_match_alternate_as: mov              r11, 23;                             jmp   n56_match_arbno_as
n57_match_alternate_β:  mov              r11, 23
                        mov              rax, qword ptr [rbp + -144];         jmp   rax
n57_match_alternate_af: mov              r11, 23
                        mov              r14d, dword ptr [rbp + -152]
                        mov              rax, qword ptr [rbp + -136];         jmp   rax
.Lx70_19:                                                                     jmp   n56_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n58_match_lit_α:        mov              r11, 24
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n57_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47;                             jne   n57_match_alternate_af
                        add              r14d, 1;                             jmp   n59_match_assign_save_α
n58_match_lit_β:        mov              r11, 24
                        sub              r14d, 1;                             jmp   n57_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n59_match_assign_save_α:
                        mov              r11, 25
                        mov              dword ptr [rbp + -96], r14d;         jmp   n60_match_defer_α
n59_match_assign_save_β:
                        mov              r11, 25;                             jmp   n58_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n60_match_defer_α:      mov              r11, 26
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx75_16
                        mov              rax, qword ptr [rdx + 0]
.Lx75_16:               test             rax, rax;                            jz    .Lx75_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx75_5]
                        push             rcx
                        lea              rcx, [rip + .Lx75_4]
                        push             rcx;                                 jmp   rax
.Lx75_4:                                                                      jmp   n61_match_assign_cond_α
.Lx75_5:                                                                      jmp   n59_match_assign_save_β
.Lx75_0:                push             r14
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
                        lea              rax, [rip + .Lx75_6]
                        push             rcx
                        push             rax;                                 jmp   n61_match_assign_cond_α
.Lx75_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n59_match_assign_save_β
n60_match_defer_β:      mov              r11, 26
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx75_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx75_12
                                                                              jmp   rax
.Lx75_12:                                                                     jmp   qword ptr [rsp]
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
                        add              r12, 24;                             jmp   n57_match_alternate_s1
n61_match_assign_cond_β:
                        mov              r11, 27
                        sub              r12, 24;                             jmp   n60_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n62_match_lit_α:        mov              r11, 28
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n57_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42;                             jne   n57_match_alternate_af
                        add              r14d, 1;                             jmp   n63_match_assign_save_α
n62_match_lit_β:        mov              r11, 28
                        sub              r14d, 1;                             jmp   n57_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n63_match_assign_save_α:
                        mov              r11, 29
                        mov              dword ptr [rbp + -64], r14d;         jmp   n64_match_defer_α
n63_match_assign_save_β:
                        mov              r11, 29;                             jmp   n62_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n64_match_defer_α:      mov              r11, 30
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx82_16
                        mov              rax, qword ptr [rdx + 0]
.Lx82_16:               test             rax, rax;                            jz    .Lx82_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx82_5]
                        push             rcx
                        lea              rcx, [rip + .Lx82_4]
                        push             rcx;                                 jmp   rax
.Lx82_4:                                                                      jmp   n65_match_assign_cond_α
.Lx82_5:                                                                      jmp   n63_match_assign_save_β
.Lx82_0:                push             r14
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
                        lea              rax, [rip + .Lx82_6]
                        push             rcx
                        push             rax;                                 jmp   n65_match_assign_cond_α
.Lx82_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n63_match_assign_save_β
n64_match_defer_β:      mov              r11, 30
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx82_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx82_12
                                                                              jmp   rax
.Lx82_12:                                                                     jmp   qword ptr [rsp]
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
                        add              r12, 24;                             jmp   n57_match_alternate_s0
n65_match_assign_cond_β:
                        mov              r11, 31
                        sub              r12, 24;                             jmp   n64_match_defer_β
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
#-----------------------------------------------------------------------------------------------------------------------
n85_match_defer_α:      sub              rsp, 16
                        mov              r11, 32
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx96_16
                        mov              rax, qword ptr [rdx + 0]
.Lx96_16:               test             rax, rax;                            jz    .Lx96_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx96_5]
                        push             rcx
                        lea              rcx, [rip + .Lx96_4]
                        push             rcx;                                 jmp   rax
.Lx96_4:                                                                      jmp   n86_match_arbno_α
.Lx96_5:                add              rsp, 16;                             jmp   PAT$5_ω
.Lx96_0:                push             r14
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
                        test             eax, eax;                            jns   .Lx96_240
                        add              rsp, 16;                             jmp   PAT$5_ω
.Lx96_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx96_6]
                        push             rcx
                        push             rax;                                 jmp   n86_match_arbno_α
.Lx96_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$5_ω
n85_match_defer_β:      mov              r11, 32
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx96_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx96_12
                                                                              jmp   rax
.Lx96_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n86_match_arbno_α:      mov              r11, 33
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   PAT$5_γ
n86_match_arbno_β:      mov              r11, 33
                        mov              r12, qword ptr [rbp + -40];          jmp   n87_match_alternate_α
n86_match_arbno_as:     mov              r11, 33
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n87_match_alternate_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   PAT$5_γ
n86_match_arbno_af:     mov              r11, 33
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n85_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n87_match_alternate_α:  mov              r11, 34
                        mov              dword ptr [rbp + -152], r14d
                        lea              rax, [rip + .Lx100_21]
                        mov              qword ptr [rbp + -136], rax;         jmp   n92_match_lit_α
.Lx100_21:              lea              rax, [rip + .Lx100_19]
                        mov              qword ptr [rbp + -136], rax;         jmp   n88_match_lit_α
n87_match_alternate_s0: mov              r11, 34
                        lea              rax, [rip + .Lx100_40]
                        mov              qword ptr [rbp + -144], rax;         jmp   n87_match_alternate_as
n87_match_alternate_s1: mov              r11, 34
                        lea              rax, [rip + .Lx100_41]
                        mov              qword ptr [rbp + -144], rax;         jmp   n87_match_alternate_as
.Lx100_40:                                                                    jmp   n95_match_assign_cond_β
.Lx100_41:                                                                    jmp   n91_match_assign_cond_β
n87_match_alternate_as: mov              r11, 34;                             jmp   n86_match_arbno_as
n87_match_alternate_β:  mov              r11, 34
                        mov              rax, qword ptr [rbp + -144];         jmp   rax
n87_match_alternate_af: mov              r11, 34
                        mov              r14d, dword ptr [rbp + -152]
                        mov              rax, qword ptr [rbp + -136];         jmp   rax
.Lx100_19:                                                                    jmp   n86_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n88_match_lit_α:        mov              r11, 35
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n87_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n87_match_alternate_af
                        add              r14d, 1;                             jmp   n89_match_assign_save_α
n88_match_lit_β:        mov              r11, 35
                        sub              r14d, 1;                             jmp   n87_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n89_match_assign_save_α:
                        mov              r11, 36
                        mov              dword ptr [rbp + -96], r14d;         jmp   n90_match_defer_α
n89_match_assign_save_β:
                        mov              r11, 36;                             jmp   n88_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n90_match_defer_α:      mov              r11, 37
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx105_16
                        mov              rax, qword ptr [rdx + 0]
.Lx105_16:              test             rax, rax;                            jz    .Lx105_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx105_5]
                        push             rcx
                        lea              rcx, [rip + .Lx105_4]
                        push             rcx;                                 jmp   rax
.Lx105_4:                                                                     jmp   n91_match_assign_cond_α
.Lx105_5:                                                                     jmp   n89_match_assign_save_β
.Lx105_0:               push             r14
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
                        lea              rax, [rip + .Lx105_6]
                        push             rcx
                        push             rax;                                 jmp   n91_match_assign_cond_α
.Lx105_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n89_match_assign_save_β
n90_match_defer_β:      mov              r11, 37
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx105_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx105_12
                                                                              jmp   rax
.Lx105_12:                                                                    jmp   qword ptr [rsp]
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
                        add              r12, 24;                             jmp   n87_match_alternate_s1
n91_match_assign_cond_β:
                        mov              r11, 38
                        sub              r12, 24;                             jmp   n90_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n92_match_lit_α:        mov              r11, 39
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n87_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   n87_match_alternate_af
                        add              r14d, 1;                             jmp   n93_match_assign_save_α
n92_match_lit_β:        mov              r11, 39
                        sub              r14d, 1;                             jmp   n87_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n93_match_assign_save_α:
                        mov              r11, 40
                        mov              dword ptr [rbp + -64], r14d;         jmp   n94_match_defer_α
n93_match_assign_save_β:
                        mov              r11, 40;                             jmp   n92_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n94_match_defer_α:      mov              r11, 41
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx112_16
                        mov              rax, qword ptr [rdx + 0]
.Lx112_16:              test             rax, rax;                            jz    .Lx112_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx112_5]
                        push             rcx
                        lea              rcx, [rip + .Lx112_4]
                        push             rcx;                                 jmp   rax
.Lx112_4:                                                                     jmp   n95_match_assign_cond_α
.Lx112_5:                                                                     jmp   n93_match_assign_save_β
.Lx112_0:               push             r14
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
                        lea              rax, [rip + .Lx112_6]
                        push             rcx
                        push             rax;                                 jmp   n95_match_assign_cond_α
.Lx112_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n93_match_assign_save_β
n94_match_defer_β:      mov              r11, 41
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx112_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx112_12
                                                                              jmp   rax
.Lx112_12:                                                                    jmp   qword ptr [rsp]
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
                        add              r12, 24;                             jmp   n87_match_alternate_s0
n95_match_assign_cond_β:
                        mov              r11, 42
                        sub              r12, 24;                             jmp   n94_match_defer_β
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
#-----------------------------------------------------------------------------------------------------------------------
n115_match_defer_α:     sub              rsp, 16
                        mov              r11, 43
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx117_16
                        mov              rax, qword ptr [rdx + 0]
.Lx117_16:              test             rax, rax;                            jz    .Lx117_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx117_5]
                        push             rcx
                        lea              rcx, [rip + .Lx117_4]
                        push             rcx;                                 jmp   rax
.Lx117_4:                                                                     jmp   n116_match_fence0_α
.Lx117_5:               add              rsp, 16;                             jmp   PAT$6_ω
.Lx117_0:               push             r14
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
                        test             eax, eax;                            jns   .Lx117_240
                        add              rsp, 16;                             jmp   PAT$6_ω
.Lx117_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx117_6]
                        push             rcx
                        push             rax;                                 jmp   n116_match_fence0_α
.Lx117_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$6_ω
n115_match_defer_β:     mov              r11, 43
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx117_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx117_12
                                                                              jmp   rax
.Lx117_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n116_match_fence0_α:    mov              r11, 44
                        mov              rsp, rbp
                        sub              rsp, 40;                             jmp   PAT$6_γ
n116_match_fence0_β:    mov              r11, 44;                             jmp   PAT$6_ω
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
#-----------------------------------------------------------------------------------------------------------------------
n120_match_pos_α:       mov              r11, 45
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$7_ω
                                                                              jmp   n121_match_arbno_α
n120_match_pos_β:       mov              r11, 45;                             jmp   PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n121_match_arbno_α:     mov              r11, 46
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n122_match_rpos_α
n121_match_arbno_β:     mov              r11, 46
                        mov              r12, qword ptr [rbp + -40];          jmp   n123_match_defer_α
n121_match_arbno_as:    mov              r11, 46
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n123_match_defer_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n122_match_rpos_α
n121_match_arbno_af:    mov              r11, 46
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n120_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n122_match_rpos_α:      mov              r11, 47
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n121_match_arbno_β
                                                                              jmp   PAT$7_γ
n122_match_rpos_β:      mov              r11, 47;                             jmp   n121_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n123_match_defer_α:     mov              r11, 48
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx132_16
                        mov              rax, qword ptr [rdx + 0]
.Lx132_16:              test             rax, rax;                            jz    .Lx132_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx132_5]
                        push             rcx
                        lea              rcx, [rip + .Lx132_4]
                        push             rcx;                                 jmp   rax
.Lx132_4:                                                                     jmp   n124_match_defer_α
.Lx132_5:                                                                     jmp   n121_match_arbno_af
.Lx132_0:               push             r14
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
                        test             eax, eax;                            js    n121_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx132_6]
                        push             rcx
                        push             rax;                                 jmp   n124_match_defer_α
.Lx132_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n121_match_arbno_af
n123_match_defer_β:     mov              r11, 48
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx132_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx132_12
                                                                              jmp   rax
.Lx132_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n124_match_defer_α:     mov              r11, 49
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx133_16
                        mov              rax, qword ptr [rdx + 0]
.Lx133_16:              test             rax, rax;                            jz    .Lx133_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx133_5]
                        push             rcx
                        lea              rcx, [rip + .Lx133_4]
                        push             rcx;                                 jmp   rax
.Lx133_4:                                                                     jmp   n125_match_assign_save_α
.Lx133_5:                                                                     jmp   n123_match_defer_β
.Lx133_0:               push             r14
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
                        lea              rax, [rip + .Lx133_6]
                        push             rcx
                        push             rax;                                 jmp   n125_match_assign_save_α
.Lx133_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n123_match_defer_β
n124_match_defer_β:     mov              r11, 49
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx133_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx133_12
                                                                              jmp   rax
.Lx133_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n125_match_assign_save_α:
                        mov              r11, 50
                        mov              dword ptr [rbp + -80], r14d;         jmp   n126_match_defer_α
n125_match_assign_save_β:
                        mov              r11, 50;                             jmp   n124_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n126_match_defer_α:     mov              r11, 51
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx136_16
                        mov              rax, qword ptr [rdx + 0]
.Lx136_16:              test             rax, rax;                            jz    .Lx136_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx136_5]
                        push             rcx
                        lea              rcx, [rip + .Lx136_4]
                        push             rcx;                                 jmp   rax
.Lx136_4:                                                                     jmp   n127_match_assign_cond_α
.Lx136_5:                                                                     jmp   n125_match_assign_save_β
.Lx136_0:               push             r14
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
                        lea              rax, [rip + .Lx136_6]
                        push             rcx
                        push             rax;                                 jmp   n127_match_assign_cond_α
.Lx136_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n125_match_assign_save_β
n126_match_defer_β:     mov              r11, 51
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx136_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx136_12
                                                                              jmp   rax
.Lx136_12:                                                                    jmp   qword ptr [rsp]
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
                        add              r12, 24;                             jmp   n121_match_arbno_as
n127_match_assign_cond_β:
                        mov              r11, 52
                        sub              r12, 24;                             jmp   n126_match_defer_β
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
                        sub              rsp, 8
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
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
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
#=======================================================================================================================
#         DEFINE('EMIT()')
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_begin_α: mov              r11, 53
                        mov              r10, 1;                              jmp   n140_define_α
n139_statement_begin_β: mov              r11, 53;                             jmp   n142_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n140_define_α:          mov              r11, 54
                        mov              rdi, qword ptr [rip + .Lx521_0]
                        mov              rsi, qword ptr [rip + .Lx521_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n163_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx521_0]
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
.Lx521_0:               .quad            .Lx521_0_s
.Lx521_0_s:             .string          "EMIT"
.Lx521_1:               .quad            .Lx521_1_s
.Lx521_1_s:             .string          ""
                                                                              jmp   .Lx522_245
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
.Lx522_245:
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_end_α:   mov              r11, 55
                        mov              r10, 1;                              jmp   n142_statement_begin_α
#=======================================================================================================================
#         DEFINE('PSH()')
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_begin_α: mov              r11, 56
                        mov              r10, 2;                              jmp   n143_define_α
n142_statement_begin_β: mov              r11, 56;                             jmp   n145_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n143_define_α:          mov              r11, 57
                        mov              rdi, qword ptr [rip + .Lx528_0]
                        mov              rsi, qword ptr [rip + .Lx528_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n179_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx528_0]
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
.Lx528_0:               .quad            .Lx528_0_s
.Lx528_0_s:             .string          "PSH"
.Lx528_1:               .quad            .Lx528_1_s
.Lx528_1_s:             .string          ""
                                                                              jmp   .Lx529_245
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
.Lx529_245:
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_end_α:   mov              r11, 58
                        mov              r10, 2;                              jmp   n145_statement_begin_α
#=======================================================================================================================
#         DEFINE('DRF(nm)')
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_begin_α: mov              r11, 59
                        mov              r10, 3;                              jmp   n146_define_α
n145_statement_begin_β: mov              r11, 59;                             jmp   n148_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n146_define_α:          mov              r11, 60
                        mov              rdi, qword ptr [rip + .Lx535_0]
                        mov              rsi, qword ptr [rip + .Lx535_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n188_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx535_0]
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
.Lx535_0:               .quad            .Lx535_0_s
.Lx535_0_s:             .string          "DRF"
.Lx535_1:               .quad            .Lx535_1_s
.Lx535_1_s:             .string          "nm"
                                                                              jmp   .Lx536_245
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
                        cmp              rdx, 0;                              jbe   .Lx536_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # nm
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx536_41
.Lx536_10:              mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx536_41:              lea              rcx, [rip + DRF_γ]
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
                        cmp              rdx, 0;                              jbe   .Lx536_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx536_110
.Lx536_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx536_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx536_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx536_180
.Lx536_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx536_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx536_245:
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_end_α:   mov              r11, 61
                        mov              r10, 3;                              jmp   n148_statement_begin_α
#=======================================================================================================================
#         DEFINE('ADD()')
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_begin_α: mov              r11, 62
                        mov              r10, 4;                              jmp   n149_define_α
n148_statement_begin_β: mov              r11, 62;                             jmp   n151_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n149_define_α:          mov              r11, 63
                        mov              rdi, qword ptr [rip + .Lx542_0]
                        mov              rsi, qword ptr [rip + .Lx542_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n207_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx542_0]
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
.Lx542_0:               .quad            .Lx542_0_s
.Lx542_0_s:             .string          "ADD"
.Lx542_1:               .quad            .Lx542_1_s
.Lx542_1_s:             .string          ""
                                                                              jmp   .Lx543_245
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
.Lx543_245:
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_end_α:   mov              r11, 64
                        mov              r10, 4;                              jmp   n151_statement_begin_α
#=======================================================================================================================
#         DEFINE('SUB()')
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_begin_α: mov              r11, 65
                        mov              r10, 5;                              jmp   n152_define_α
n151_statement_begin_β: mov              r11, 65;                             jmp   n154_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n152_define_α:          mov              r11, 66
                        mov              rdi, qword ptr [rip + .Lx549_0]
                        mov              rsi, qword ptr [rip + .Lx549_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n233_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx549_0]
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
.Lx549_0:               .quad            .Lx549_0_s
.Lx549_0_s:             .string          "SUB"
.Lx549_1:               .quad            .Lx549_1_s
.Lx549_1_s:             .string          ""
                                                                              jmp   .Lx550_245
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
                        lea              rax, [rip + n233_statement_begin_α]; jmp   rax
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
.Lx550_245:
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_end_α:   mov              r11, 67
                        mov              r10, 5;                              jmp   n154_statement_begin_α
#=======================================================================================================================
#         DEFINE('MUL()')
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_begin_α: mov              r11, 68
                        mov              r10, 6;                              jmp   n155_define_α
n154_statement_begin_β: mov              r11, 68;                             jmp   n157_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n155_define_α:          mov              r11, 69
                        mov              rdi, qword ptr [rip + .Lx556_0]
                        mov              rsi, qword ptr [rip + .Lx556_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n259_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx556_0]
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
.Lx556_0:               .quad            .Lx556_0_s
.Lx556_0_s:             .string          "MUL"
.Lx556_1:               .quad            .Lx556_1_s
.Lx556_1_s:             .string          ""
                                                                              jmp   .Lx557_245
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
                        lea              rax, [rip + n259_statement_begin_α]; jmp   rax
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
.Lx557_245:
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_end_α:   mov              r11, 70
                        mov              r10, 6;                              jmp   n157_statement_begin_α
#=======================================================================================================================
#         DEFINE('DIV()')
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_begin_α: mov              r11, 71
                        mov              r10, 7;                              jmp   n158_define_α
n157_statement_begin_β: mov              r11, 71;                             jmp   n160_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n158_define_α:          mov              r11, 72
                        mov              rdi, qword ptr [rip + .Lx563_0]
                        mov              rsi, qword ptr [rip + .Lx563_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n285_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx563_0]
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
.Lx563_0:               .quad            .Lx563_0_s
.Lx563_0_s:             .string          "DIV"
.Lx563_1:               .quad            .Lx563_1_s
.Lx563_1_s:             .string          ""
                                                                              jmp   .Lx564_245
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
                        lea              rax, [rip + n285_statement_begin_α]; jmp   rax
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
.Lx564_245:
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_end_α:   mov              r11, 73
                        mov              r10, 7;                              jmp   n160_statement_begin_α
#=======================================================================================================================
#         DEFINE('SGN()p1')                       :(FNS_end)
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_begin_α: mov              r11, 74
                        mov              r10, 8;                              jmp   n161_define_α
n160_statement_begin_β: mov              r11, 74;                             jmp   n344_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n161_define_α:          mov              r11, 75
                        mov              rdi, qword ptr [rip + .Lx570_0]
                        mov              rsi, qword ptr [rip + .Lx570_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n311_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx570_0]
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
.Lx570_0:               .quad            .Lx570_0_s
.Lx570_0_s:             .string          "SGN"
.Lx570_1:               .quad            .Lx570_1_s
.Lx570_1_s:             .string          "p1"
                                                                              jmp   .Lx571_245
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
                        cmp              rdx, 0;                              jbe   .Lx571_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 144]            # p1
                        mov              qword ptr [r9 + 144], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 152]
                        mov              qword ptr [r9 + 152], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx571_41
.Lx571_10:              mov              rax, qword ptr [r9 + 144]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 144], 0
                        mov              qword ptr [r9 + 152], 0
.Lx571_41:              lea              rcx, [rip + SGN_γ]
                        lea              rax, [rip + SGN_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n311_statement_begin_α]; jmp   rax
SGN_γ:                  mov              rdi, qword ptr [r9 + 128]            # SGN
                        mov              rsi, qword ptr [r9 + 136]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rdx, 0;                              jbe   .Lx571_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 144], rax            # p1
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 152], rax;           jmp   .Lx571_110
.Lx571_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 152], rax
.Lx571_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx571_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 144], rax            # p1
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 152], rax;           jmp   .Lx571_180
.Lx571_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 152], rax
.Lx571_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx571_245:
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_end_α:   mov              r11, 76
                        mov              r10, 8;                              jmp   n344_statement_begin_α
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_begin_α: mov              r11, 77
                        mov              r10, 9;                              jmp   n164_var_α
n163_statement_begin_β: mov              r11, 77;                             jmp   n171_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:             sub              rsp, 16
                        mov              r11, 78
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n165_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:     sub              rsp, 16
                        mov              r11, 79
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n166_subscript_α
n165_lit_integer_β:     mov              r11, 79
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n163_statement_begin_β
.Lx577_0:               .quad            1
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
                        cmp              al, 104;                             jne   .Lx578_240
                        add              rsp, 16;                             jmp   n165_lit_integer_β
.Lx578_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n167_deref_α
n166_subscript_β:       mov              r11, 80
                        add              rsp, 16;                             jmp   n165_lit_integer_β
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
                        cmp              al, 104;                             jne   .Lx579_240
                        add              rsp, 16;                             jmp   n166_subscript_β
.Lx579_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n168_call_α
n167_deref_β:           mov              r11, 81
                        add              rsp, 16;                             jmp   n166_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n168_call_α:            sub              rsp, 16
                        mov              r11, 82
                        lea              rcx, [rip + .Lsig581z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig581z:              .quad            1
                        .quad            .Lx581_2
                        .quad            .Lx581_2
                        .quad            16
.Lx581_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx581_29
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
.Lx581_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx581_240
                        add              rsp, 16;                             jmp   n167_deref_β
.Lx581_240:                                                                   jmp   n169_assign_α
n168_call_β:            mov              r11, 82;                             jmp   n167_deref_β
.Lx581_0:               .quad            .Lx581_0_s
.Lx581_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_α:          mov              r11, 83
                        mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx582_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n170_statement_end_α
.Lx582_0:               .quad            .Lx582_0_s
.Lx582_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   mov              r11, 84
                        mov              r10, 9
                        add              rsp, 80;                             jmp   n171_statement_begin_α
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_begin_α: mov              r11, 85
                        mov              r10, 10;                             jmp   n172_lit_integer_α
n171_statement_begin_β: mov              r11, 85;                             jmp   n175_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:     sub              rsp, 16
                        mov              r11, 86
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx587_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n173_assign_α
.Lx587_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n173_assign_α:          mov              r11, 87
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n174_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_end_α:   mov              r11, 88
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n175_statement_begin_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_begin_α: mov              r11, 89
                        mov              r10, 11;                             jmp   n176_lit_name_α
n175_statement_begin_β: mov              r11, 89;                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_name_α:        sub              rsp, 16
                        mov              r11, 90
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx593_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n177_assign_α
.Lx593_0:               .quad            .Lx593_0_s
.Lx593_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n177_assign_α:          mov              r11, 91
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # EMIT
                        mov              qword ptr [r9 + 8], rdx;             jmp   n178_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_end_α:   mov              r11, 92
                        mov              r10, 11
                        add              rsp, 16;                             jmp   NRETURN
#=======================================================================================================================
# PSH     PSH = .S[sp = sp + 1]                   :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_begin_α: mov              r11, 93
                        mov              r10, 12;                             jmp   n180_var_α
n179_statement_begin_β: mov              r11, 93;                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:             sub              rsp, 16
                        mov              r11, 94
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n181_var_α
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
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_integer_α:     sub              rsp, 16
                        mov              r11, 96
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n183_binop_α
n182_lit_integer_β:     mov              r11, 96
                        add              rsp, 16;                             jmp   n181_var_β
.Lx601_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n183_binop_α:           sub              rsp, 16
                        mov              r11, 97
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx602_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx602_7
.Lx602_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx602_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx602_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx602_4
.Lx602_3:               movq             xmm0, rsi
.Lx602_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx602_7:                                                                     jmp   n184_assign_α
.Lx602_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx602_240
                        add              rsp, 16;                             jmp   n182_lit_integer_β
.Lx602_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n184_assign_α
n183_binop_β:           mov              r11, 97
                        add              rsp, 16;                             jmp   n182_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n184_assign_α:          mov              r11, 98
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n185_subscript_α
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
                        cmp              al, 104;                             jne   .Lx604_240
                        add              rsp, 16;                             jmp   n183_binop_β
.Lx604_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n186_assign_α:          mov              r11, 100
                        mov              rax, qword ptr [rsp + 0]             # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # PSH
                        mov              qword ptr [r9 + 24], rdx;            jmp   n187_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_end_α:   mov              r11, 101
                        mov              r10, 12
                        add              rsp, 80;                             jmp   NRETURN
#=======================================================================================================================
# DRF     DRF = nm
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_begin_α: mov              r11, 102
                        mov              r10, 13;                             jmp   n189_var_α
n188_statement_begin_β: mov              r11, 102;                            jmp   n192_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:             sub              rsp, 16
                        mov              r11, 103
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n190_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n190_assign_α:          mov              r11, 104
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx;            jmp   n191_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_end_α:   mov              r11, 105
                        mov              r10, 13
                        add              rsp, 16;                             jmp   n192_statement_begin_α
#=======================================================================================================================
#         nm POS(0) ANY(&LCASE) RPOS(0)           :F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_begin_α: mov              r11, 106
                        mov              r10, 14;                             jmp   n193_var_α
n192_statement_begin_β: mov              r11, 106;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:             sub              rsp, 16
                        mov              r11, 107
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n194_match_begin_α
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
.Lx618_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx618_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n195_match_pos_α
n194_match_begin_β:     mov              r11, 108
.Lx618_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx618_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx618_1
                                                                              jmp   .Lx618_0
.Lx618_1:
n194_match_begin_af:    mov              r11, 108
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
n195_match_pos_α:       mov              r11, 109
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n194_match_begin_β
                                                                              jmp   n196_match_any_α
n195_match_pos_β:       mov              r11, 109;                            jmp   n194_match_begin_β
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
#-----------------------------------------------------------------------------------------------------------------------
n197_match_rpos_α:      mov              r11, 111
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n196_match_any_β
                                                                              jmp   n198_match_end_α
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
                        test             rax, rax;                            je    .Lx624_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n194_match_begin_af
.Lx624_13:              add              rsp, 16
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
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_end_α:   mov              r11, 113
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n200_statement_begin_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_begin_α: mov              r11, 114
                        mov              r10, 15;                             jmp   n201_var_α
n200_statement_begin_β: mov              r11, 114;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:             sub              rsp, 16
                        mov              r11, 115
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_var_α
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
                        cmp              al, 104;                             jne   .Lx631_240
                        add              rsp, 16;                             jmp   n202_var_β
.Lx631_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n204_deref_α
n203_subscript_β:       mov              r11, 117
                        add              rsp, 16;                             jmp   n202_var_β
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
                        cmp              al, 104;                             jne   .Lx632_240
                        add              rsp, 16;                             jmp   n203_subscript_β
.Lx632_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n205_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n205_assign_α:          mov              r11, 119
                        mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx;            jmp   n206_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_end_α:   mov              r11, 120
                        mov              r10, 15
                        add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# ADD     S[sp = sp - 1] = DRF(S[sp]) + DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
n207_statement_begin_α: mov              r11, 121
                        mov              r10, 16;                             jmp   n208_var_α
n207_statement_begin_β: mov              r11, 121;                            jmp   n229_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:             sub              rsp, 16
                        mov              r11, 122
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n209_var_α
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
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_integer_α:     sub              rsp, 16
                        mov              r11, 124
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx640_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n211_binop_α
n210_lit_integer_β:     mov              r11, 124
                        add              rsp, 16;                             jmp   n209_var_β
.Lx640_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n211_binop_α:           sub              rsp, 16
                        mov              r11, 125
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx641_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx641_7
.Lx641_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx641_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx641_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx641_4
.Lx641_3:               movq             xmm0, rsi
.Lx641_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx641_7:                                                                     jmp   n212_assign_α
.Lx641_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx641_240
                        add              rsp, 16;                             jmp   n210_lit_integer_β
.Lx641_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n212_assign_α
n211_binop_β:           mov              r11, 125
                        add              rsp, 16;                             jmp   n210_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n212_assign_α:          mov              r11, 126
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n213_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n213_subscript_α:       sub              rsp, 16
                        mov              r11, 127
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
                        cmp              al, 104;                             jne   .Lx643_240
                        add              rsp, 16;                             jmp   n211_binop_β
.Lx643_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n214_var_α
n213_subscript_β:       mov              r11, 127
                        add              rsp, 16;                             jmp   n211_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:             sub              rsp, 16
                        mov              r11, 128
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n215_var_α
n214_var_β:             mov              r11, 128
                        add              rsp, 16;                             jmp   n213_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n215_var_α:             sub              rsp, 16
                        mov              r11, 129
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n216_subscript_α
n215_var_β:             mov              r11, 129
                        add              rsp, 16;                             jmp   n214_var_β
#-----------------------------------------------------------------------------------------------------------------------
n216_subscript_α:       sub              rsp, 16
                        mov              r11, 130
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
                        cmp              al, 104;                             jne   .Lx646_240
                        add              rsp, 16;                             jmp   n215_var_β
.Lx646_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n217_deref_α
n216_subscript_β:       mov              r11, 130
                        add              rsp, 16;                             jmp   n215_var_β
#-----------------------------------------------------------------------------------------------------------------------
n217_deref_α:           sub              rsp, 16
                        mov              r11, 131
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
                        cmp              al, 104;                             jne   .Lx647_240
                        add              rsp, 16;                             jmp   n216_subscript_β
.Lx647_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n218_call_α
n217_deref_β:           mov              r11, 131
                        add              rsp, 16;                             jmp   n216_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n218_call_α:            sub              rsp, 16
                        mov              r11, 132
                        lea              rcx, [rip + .Lsig649z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig649z:              .quad            1
                        .quad            .Lx649_2
                        .quad            .Lx649_2
                        .quad            16
.Lx649_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx649_29
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
.Lx649_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx649_240
                        add              rsp, 16;                             jmp   n217_deref_β
.Lx649_240:                                                                   jmp   n219_var_α
n218_call_β:            mov              r11, 132;                            jmp   n217_deref_β
.Lx649_0:               .quad            .Lx649_0_s
.Lx649_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             sub              rsp, 16
                        mov              r11, 133
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_var_α
n219_var_β:             mov              r11, 133
                        add              rsp, 32;                             jmp   n217_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n220_var_α:             sub              rsp, 16
                        mov              r11, 134
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n221_lit_integer_α
n220_var_β:             mov              r11, 134
                        add              rsp, 16;                             jmp   n219_var_β
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_integer_α:     sub              rsp, 16
                        mov              r11, 135
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx652_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n222_binop_α
n221_lit_integer_β:     mov              r11, 135
                        add              rsp, 16;                             jmp   n220_var_β
.Lx652_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n222_binop_α:           sub              rsp, 16
                        mov              r11, 136
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx653_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx653_7
.Lx653_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx653_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx653_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx653_4
.Lx653_3:               movq             xmm0, rsi
.Lx653_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx653_7:                                                                     jmp   n223_subscript_α
.Lx653_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx653_240
                        add              rsp, 16;                             jmp   n221_lit_integer_β
.Lx653_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n223_subscript_α
n222_binop_β:           mov              r11, 136
                        add              rsp, 16;                             jmp   n221_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n223_subscript_α:       sub              rsp, 16
                        mov              r11, 137
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
                        cmp              al, 104;                             jne   .Lx654_240
                        add              rsp, 16;                             jmp   n222_binop_β
.Lx654_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n224_deref_α
n223_subscript_β:       mov              r11, 137
                        add              rsp, 16;                             jmp   n222_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n224_deref_α:           sub              rsp, 16
                        mov              r11, 138
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
                        cmp              al, 104;                             jne   .Lx655_240
                        add              rsp, 16;                             jmp   n223_subscript_β
.Lx655_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n225_call_α
n224_deref_β:           mov              r11, 138
                        add              rsp, 16;                             jmp   n223_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n225_call_α:            sub              rsp, 16
                        mov              r11, 139
                        lea              rcx, [rip + .Lsig657z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig657z:              .quad            1
                        .quad            .Lx657_2
                        .quad            .Lx657_2
                        .quad            16
.Lx657_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx657_29
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
.Lx657_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx657_240
                        add              rsp, 16;                             jmp   n224_deref_β
.Lx657_240:                                                                   jmp   n226_binop_α
n225_call_β:            mov              r11, 139;                            jmp   n224_deref_β
.Lx657_0:               .quad            .Lx657_0_s
.Lx657_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n226_binop_α:           sub              rsp, 16
                        mov              r11, 140
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx658_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx658_7
.Lx658_2:               and              edx, 1;                              jz    .Lx658_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx658_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx658_4
.Lx658_3:               movq             xmm0, rsi
.Lx658_4:               cmp              cl, 5;                               je    .Lx658_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx658_6
.Lx658_5:               movq             xmm1, rdi
.Lx658_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx658_7:                                                                     jmp   n227_assign_var_α
.Lx658_0:               mov              rdi, qword ptr [rsp + 128]           # call
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx658_240
                        add              rsp, 32;                             jmp   n224_deref_β
.Lx658_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n227_assign_var_α
n226_binop_β:           mov              r11, 140
                        add              rsp, 32;                             jmp   n224_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n227_assign_var_α:      sub              rsp, 16
                        mov              r11, 141
                        mov              rdi, qword ptr [rsp + 224]           # subscript
                        mov              rsi, qword ptr [rsp + 232]
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
                        cmp              al, 104;                             jne   .Lx659_240
                        add              rsp, 16;                             jmp   n226_binop_β
.Lx659_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n228_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n228_statement_end_α:   mov              r11, 142
                        mov              r10, 16
                        add              rsp, 304;                            jmp   n229_statement_begin_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n229_statement_begin_α: mov              r11, 143
                        mov              r10, 17;                             jmp   n230_lit_name_α
n229_statement_begin_β: mov              r11, 143;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_name_α:        sub              rsp, 16
                        mov              r11, 144
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n231_assign_α
.Lx664_0:               .quad            .Lx664_0_s
.Lx664_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n231_assign_α:          mov              r11, 145
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ADD
                        mov              qword ptr [r9 + 72], rdx;            jmp   n232_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n232_statement_end_α:   mov              r11, 146
                        mov              r10, 17
                        add              rsp, 16;                             jmp   NRETURN
#=======================================================================================================================
# SUB     S[sp = sp - 1] = DRF(S[sp]) - DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
n233_statement_begin_α: mov              r11, 147
                        mov              r10, 18;                             jmp   n234_var_α
n233_statement_begin_β: mov              r11, 147;                            jmp   n255_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n234_var_α:             sub              rsp, 16
                        mov              r11, 148
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n235_var_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_α:             sub              rsp, 16
                        mov              r11, 149
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n236_lit_integer_α
n235_var_β:             mov              r11, 149
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n233_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_integer_α:     sub              rsp, 16
                        mov              r11, 150
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx672_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n237_binop_α
n236_lit_integer_β:     mov              r11, 150
                        add              rsp, 16;                             jmp   n235_var_β
.Lx672_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n237_binop_α:           sub              rsp, 16
                        mov              r11, 151
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx673_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx673_7
.Lx673_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx673_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx673_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx673_4
.Lx673_3:               movq             xmm0, rsi
.Lx673_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx673_7:                                                                     jmp   n238_assign_α
.Lx673_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx673_240
                        add              rsp, 16;                             jmp   n236_lit_integer_β
.Lx673_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n238_assign_α
n237_binop_β:           mov              r11, 151
                        add              rsp, 16;                             jmp   n236_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n238_assign_α:          mov              r11, 152
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n239_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n239_subscript_α:       sub              rsp, 16
                        mov              r11, 153
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
                        cmp              al, 104;                             jne   .Lx675_240
                        add              rsp, 16;                             jmp   n237_binop_β
.Lx675_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n240_var_α
n239_subscript_β:       mov              r11, 153
                        add              rsp, 16;                             jmp   n237_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n240_var_α:             sub              rsp, 16
                        mov              r11, 154
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n241_var_α
n240_var_β:             mov              r11, 154
                        add              rsp, 16;                             jmp   n239_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:             sub              rsp, 16
                        mov              r11, 155
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_subscript_α
n241_var_β:             mov              r11, 155
                        add              rsp, 16;                             jmp   n240_var_β
#-----------------------------------------------------------------------------------------------------------------------
n242_subscript_α:       sub              rsp, 16
                        mov              r11, 156
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
                        cmp              al, 104;                             jne   .Lx678_240
                        add              rsp, 16;                             jmp   n241_var_β
.Lx678_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n243_deref_α
n242_subscript_β:       mov              r11, 156
                        add              rsp, 16;                             jmp   n241_var_β
#-----------------------------------------------------------------------------------------------------------------------
n243_deref_α:           sub              rsp, 16
                        mov              r11, 157
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
                        cmp              al, 104;                             jne   .Lx679_240
                        add              rsp, 16;                             jmp   n242_subscript_β
.Lx679_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n244_call_α
n243_deref_β:           mov              r11, 157
                        add              rsp, 16;                             jmp   n242_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n244_call_α:            sub              rsp, 16
                        mov              r11, 158
                        lea              rcx, [rip + .Lsig681z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig681z:              .quad            1
                        .quad            .Lx681_2
                        .quad            .Lx681_2
                        .quad            16
.Lx681_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx681_29
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
.Lx681_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx681_240
                        add              rsp, 16;                             jmp   n243_deref_β
.Lx681_240:                                                                   jmp   n245_var_α
n244_call_β:            mov              r11, 158;                            jmp   n243_deref_β
.Lx681_0:               .quad            .Lx681_0_s
.Lx681_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n245_var_α:             sub              rsp, 16
                        mov              r11, 159
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n246_var_α
n245_var_β:             mov              r11, 159
                        add              rsp, 32;                             jmp   n243_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:             sub              rsp, 16
                        mov              r11, 160
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n247_lit_integer_α
n246_var_β:             mov              r11, 160
                        add              rsp, 16;                             jmp   n245_var_β
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_integer_α:     sub              rsp, 16
                        mov              r11, 161
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx684_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n248_binop_α
n247_lit_integer_β:     mov              r11, 161
                        add              rsp, 16;                             jmp   n246_var_β
.Lx684_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n248_binop_α:           sub              rsp, 16
                        mov              r11, 162
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx685_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx685_7
.Lx685_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx685_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx685_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx685_4
.Lx685_3:               movq             xmm0, rsi
.Lx685_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx685_7:                                                                     jmp   n249_subscript_α
.Lx685_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx685_240
                        add              rsp, 16;                             jmp   n247_lit_integer_β
.Lx685_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n249_subscript_α
n248_binop_β:           mov              r11, 162
                        add              rsp, 16;                             jmp   n247_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n249_subscript_α:       sub              rsp, 16
                        mov              r11, 163
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
                        cmp              al, 104;                             jne   .Lx686_240
                        add              rsp, 16;                             jmp   n248_binop_β
.Lx686_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n250_deref_α
n249_subscript_β:       mov              r11, 163
                        add              rsp, 16;                             jmp   n248_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n250_deref_α:           sub              rsp, 16
                        mov              r11, 164
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
                        cmp              al, 104;                             jne   .Lx687_240
                        add              rsp, 16;                             jmp   n249_subscript_β
.Lx687_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_call_α
n250_deref_β:           mov              r11, 164
                        add              rsp, 16;                             jmp   n249_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n251_call_α:            sub              rsp, 16
                        mov              r11, 165
                        lea              rcx, [rip + .Lsig689z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig689z:              .quad            1
                        .quad            .Lx689_2
                        .quad            .Lx689_2
                        .quad            16
.Lx689_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx689_29
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
.Lx689_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx689_240
                        add              rsp, 16;                             jmp   n250_deref_β
.Lx689_240:                                                                   jmp   n252_binop_α
n251_call_β:            mov              r11, 165;                            jmp   n250_deref_β
.Lx689_0:               .quad            .Lx689_0_s
.Lx689_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n252_binop_α:           sub              rsp, 16
                        mov              r11, 166
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx690_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx690_7
.Lx690_2:               and              edx, 1;                              jz    .Lx690_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx690_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx690_4
.Lx690_3:               movq             xmm0, rsi
.Lx690_4:               cmp              cl, 5;                               je    .Lx690_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx690_6
.Lx690_5:               movq             xmm1, rdi
.Lx690_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx690_7:                                                                     jmp   n253_assign_var_α
.Lx690_0:               mov              rdi, qword ptr [rsp + 128]           # call
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx690_240
                        add              rsp, 32;                             jmp   n250_deref_β
.Lx690_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n253_assign_var_α
n252_binop_β:           mov              r11, 166
                        add              rsp, 32;                             jmp   n250_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n253_assign_var_α:      sub              rsp, 16
                        mov              r11, 167
                        mov              rdi, qword ptr [rsp + 224]           # subscript
                        mov              rsi, qword ptr [rsp + 232]
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
                        cmp              al, 104;                             jne   .Lx691_240
                        add              rsp, 16;                             jmp   n252_binop_β
.Lx691_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n254_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n254_statement_end_α:   mov              r11, 168
                        mov              r10, 18
                        add              rsp, 304;                            jmp   n255_statement_begin_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n255_statement_begin_α: mov              r11, 169
                        mov              r10, 19;                             jmp   n256_lit_name_α
n255_statement_begin_β: mov              r11, 169;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_name_α:        sub              rsp, 16
                        mov              r11, 170
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx696_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n257_assign_α
.Lx696_0:               .quad            .Lx696_0_s
.Lx696_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n257_assign_α:          mov              r11, 171
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # SUB
                        mov              qword ptr [r9 + 88], rdx;            jmp   n258_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n258_statement_end_α:   mov              r11, 172
                        mov              r10, 19
                        add              rsp, 16;                             jmp   NRETURN
#=======================================================================================================================
# MUL     S[sp = sp - 1] = DRF(S[sp]) * DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
n259_statement_begin_α: mov              r11, 173
                        mov              r10, 20;                             jmp   n260_var_α
n259_statement_begin_β: mov              r11, 173;                            jmp   n281_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n260_var_α:             sub              rsp, 16
                        mov              r11, 174
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n261_var_α
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:             sub              rsp, 16
                        mov              r11, 175
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n262_lit_integer_α
n261_var_β:             mov              r11, 175
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n259_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_integer_α:     sub              rsp, 16
                        mov              r11, 176
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx704_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n263_binop_α
n262_lit_integer_β:     mov              r11, 176
                        add              rsp, 16;                             jmp   n261_var_β
.Lx704_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n263_binop_α:           sub              rsp, 16
                        mov              r11, 177
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx705_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx705_7
.Lx705_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx705_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx705_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx705_4
.Lx705_3:               movq             xmm0, rsi
.Lx705_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx705_7:                                                                     jmp   n264_assign_α
.Lx705_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx705_240
                        add              rsp, 16;                             jmp   n262_lit_integer_β
.Lx705_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n264_assign_α
n263_binop_β:           mov              r11, 177
                        add              rsp, 16;                             jmp   n262_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n264_assign_α:          mov              r11, 178
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n265_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n265_subscript_α:       sub              rsp, 16
                        mov              r11, 179
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
                        cmp              al, 104;                             jne   .Lx707_240
                        add              rsp, 16;                             jmp   n263_binop_β
.Lx707_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n266_var_α
n265_subscript_β:       mov              r11, 179
                        add              rsp, 16;                             jmp   n263_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n266_var_α:             sub              rsp, 16
                        mov              r11, 180
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n267_var_α
n266_var_β:             mov              r11, 180
                        add              rsp, 16;                             jmp   n265_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n267_var_α:             sub              rsp, 16
                        mov              r11, 181
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n268_subscript_α
n267_var_β:             mov              r11, 181
                        add              rsp, 16;                             jmp   n266_var_β
#-----------------------------------------------------------------------------------------------------------------------
n268_subscript_α:       sub              rsp, 16
                        mov              r11, 182
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
                        cmp              al, 104;                             jne   .Lx710_240
                        add              rsp, 16;                             jmp   n267_var_β
.Lx710_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n269_deref_α
n268_subscript_β:       mov              r11, 182
                        add              rsp, 16;                             jmp   n267_var_β
#-----------------------------------------------------------------------------------------------------------------------
n269_deref_α:           sub              rsp, 16
                        mov              r11, 183
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
                        cmp              al, 104;                             jne   .Lx711_240
                        add              rsp, 16;                             jmp   n268_subscript_β
.Lx711_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n270_call_α
n269_deref_β:           mov              r11, 183
                        add              rsp, 16;                             jmp   n268_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n270_call_α:            sub              rsp, 16
                        mov              r11, 184
                        lea              rcx, [rip + .Lsig713z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig713z:              .quad            1
                        .quad            .Lx713_2
                        .quad            .Lx713_2
                        .quad            16
.Lx713_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx713_29
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
.Lx713_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx713_240
                        add              rsp, 16;                             jmp   n269_deref_β
.Lx713_240:                                                                   jmp   n271_var_α
n270_call_β:            mov              r11, 184;                            jmp   n269_deref_β
.Lx713_0:               .quad            .Lx713_0_s
.Lx713_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n271_var_α:             sub              rsp, 16
                        mov              r11, 185
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n272_var_α
n271_var_β:             mov              r11, 185
                        add              rsp, 32;                             jmp   n269_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:             sub              rsp, 16
                        mov              r11, 186
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n273_lit_integer_α
n272_var_β:             mov              r11, 186
                        add              rsp, 16;                             jmp   n271_var_β
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_integer_α:     sub              rsp, 16
                        mov              r11, 187
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx716_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n274_binop_α
n273_lit_integer_β:     mov              r11, 187
                        add              rsp, 16;                             jmp   n272_var_β
.Lx716_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n274_binop_α:           sub              rsp, 16
                        mov              r11, 188
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx717_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx717_7
.Lx717_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx717_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx717_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx717_4
.Lx717_3:               movq             xmm0, rsi
.Lx717_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx717_7:                                                                     jmp   n275_subscript_α
.Lx717_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx717_240
                        add              rsp, 16;                             jmp   n273_lit_integer_β
.Lx717_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n275_subscript_α
n274_binop_β:           mov              r11, 188
                        add              rsp, 16;                             jmp   n273_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n275_subscript_α:       sub              rsp, 16
                        mov              r11, 189
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
                        cmp              al, 104;                             jne   .Lx718_240
                        add              rsp, 16;                             jmp   n274_binop_β
.Lx718_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n276_deref_α
n275_subscript_β:       mov              r11, 189
                        add              rsp, 16;                             jmp   n274_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n276_deref_α:           sub              rsp, 16
                        mov              r11, 190
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
                        cmp              al, 104;                             jne   .Lx719_240
                        add              rsp, 16;                             jmp   n275_subscript_β
.Lx719_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n277_call_α
n276_deref_β:           mov              r11, 190
                        add              rsp, 16;                             jmp   n275_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n277_call_α:            sub              rsp, 16
                        mov              r11, 191
                        lea              rcx, [rip + .Lsig721z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig721z:              .quad            1
                        .quad            .Lx721_2
                        .quad            .Lx721_2
                        .quad            16
.Lx721_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx721_29
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
.Lx721_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx721_240
                        add              rsp, 16;                             jmp   n276_deref_β
.Lx721_240:                                                                   jmp   n278_binop_α
n277_call_β:            mov              r11, 191;                            jmp   n276_deref_β
.Lx721_0:               .quad            .Lx721_0_s
.Lx721_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n278_binop_α:           sub              rsp, 16
                        mov              r11, 192
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx722_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx722_7
.Lx722_2:               and              edx, 1;                              jz    .Lx722_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx722_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx722_4
.Lx722_3:               movq             xmm0, rsi
.Lx722_4:               cmp              cl, 5;                               je    .Lx722_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx722_6
.Lx722_5:               movq             xmm1, rdi
.Lx722_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx722_7:                                                                     jmp   n279_assign_var_α
.Lx722_0:               mov              rdi, qword ptr [rsp + 128]           # call
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx722_240
                        add              rsp, 32;                             jmp   n276_deref_β
.Lx722_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n279_assign_var_α
n278_binop_β:           mov              r11, 192
                        add              rsp, 32;                             jmp   n276_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n279_assign_var_α:      sub              rsp, 16
                        mov              r11, 193
                        mov              rdi, qword ptr [rsp + 224]           # subscript
                        mov              rsi, qword ptr [rsp + 232]
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
                        cmp              al, 104;                             jne   .Lx723_240
                        add              rsp, 16;                             jmp   n278_binop_β
.Lx723_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n280_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n280_statement_end_α:   mov              r11, 194
                        mov              r10, 20
                        add              rsp, 304;                            jmp   n281_statement_begin_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n281_statement_begin_α: mov              r11, 195
                        mov              r10, 21;                             jmp   n282_lit_name_α
n281_statement_begin_β: mov              r11, 195;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_name_α:        sub              rsp, 16
                        mov              r11, 196
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx728_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n283_assign_α
.Lx728_0:               .quad            .Lx728_0_s
.Lx728_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n283_assign_α:          mov              r11, 197
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # MUL
                        mov              qword ptr [r9 + 104], rdx;           jmp   n284_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n284_statement_end_α:   mov              r11, 198
                        mov              r10, 21
                        add              rsp, 16;                             jmp   NRETURN
#=======================================================================================================================
# DIV     S[sp = sp - 1] = DRF(S[sp]) / DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
n285_statement_begin_α: mov              r11, 199
                        mov              r10, 22;                             jmp   n286_var_α
n285_statement_begin_β: mov              r11, 199;                            jmp   n307_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n286_var_α:             sub              rsp, 16
                        mov              r11, 200
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n287_var_α
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:             sub              rsp, 16
                        mov              r11, 201
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n288_lit_integer_α
n287_var_β:             mov              r11, 201
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n285_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_integer_α:     sub              rsp, 16
                        mov              r11, 202
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx736_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n289_binop_α
n288_lit_integer_β:     mov              r11, 202
                        add              rsp, 16;                             jmp   n287_var_β
.Lx736_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n289_binop_α:           sub              rsp, 16
                        mov              r11, 203
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx737_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx737_7
.Lx737_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx737_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx737_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx737_4
.Lx737_3:               movq             xmm0, rsi
.Lx737_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx737_7:                                                                     jmp   n290_assign_α
.Lx737_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx737_240
                        add              rsp, 16;                             jmp   n288_lit_integer_β
.Lx737_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n290_assign_α
n289_binop_β:           mov              r11, 203
                        add              rsp, 16;                             jmp   n288_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n290_assign_α:          mov              r11, 204
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n291_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n291_subscript_α:       sub              rsp, 16
                        mov              r11, 205
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
                        cmp              al, 104;                             jne   .Lx739_240
                        add              rsp, 16;                             jmp   n289_binop_β
.Lx739_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n292_var_α
n291_subscript_β:       mov              r11, 205
                        add              rsp, 16;                             jmp   n289_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n292_var_α:             sub              rsp, 16
                        mov              r11, 206
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n293_var_α
n292_var_β:             mov              r11, 206
                        add              rsp, 16;                             jmp   n291_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n293_var_α:             sub              rsp, 16
                        mov              r11, 207
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n294_subscript_α
n293_var_β:             mov              r11, 207
                        add              rsp, 16;                             jmp   n292_var_β
#-----------------------------------------------------------------------------------------------------------------------
n294_subscript_α:       sub              rsp, 16
                        mov              r11, 208
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
                        cmp              al, 104;                             jne   .Lx742_240
                        add              rsp, 16;                             jmp   n293_var_β
.Lx742_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_deref_α
n294_subscript_β:       mov              r11, 208
                        add              rsp, 16;                             jmp   n293_var_β
#-----------------------------------------------------------------------------------------------------------------------
n295_deref_α:           sub              rsp, 16
                        mov              r11, 209
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
                        cmp              al, 104;                             jne   .Lx743_240
                        add              rsp, 16;                             jmp   n294_subscript_β
.Lx743_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n296_call_α
n295_deref_β:           mov              r11, 209
                        add              rsp, 16;                             jmp   n294_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n296_call_α:            sub              rsp, 16
                        mov              r11, 210
                        lea              rcx, [rip + .Lsig745z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig745z:              .quad            1
                        .quad            .Lx745_2
                        .quad            .Lx745_2
                        .quad            16
.Lx745_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx745_29
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
.Lx745_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx745_240
                        add              rsp, 16;                             jmp   n295_deref_β
.Lx745_240:                                                                   jmp   n297_var_α
n296_call_β:            mov              r11, 210;                            jmp   n295_deref_β
.Lx745_0:               .quad            .Lx745_0_s
.Lx745_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n297_var_α:             sub              rsp, 16
                        mov              r11, 211
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n298_var_α
n297_var_β:             mov              r11, 211
                        add              rsp, 32;                             jmp   n295_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n298_var_α:             sub              rsp, 16
                        mov              r11, 212
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n299_lit_integer_α
n298_var_β:             mov              r11, 212
                        add              rsp, 16;                             jmp   n297_var_β
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_integer_α:     sub              rsp, 16
                        mov              r11, 213
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx748_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n300_binop_α
n299_lit_integer_β:     mov              r11, 213
                        add              rsp, 16;                             jmp   n298_var_β
.Lx748_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n300_binop_α:           sub              rsp, 16
                        mov              r11, 214
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx749_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx749_7
.Lx749_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx749_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx749_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx749_4
.Lx749_3:               movq             xmm0, rsi
.Lx749_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx749_7:                                                                     jmp   n301_subscript_α
.Lx749_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx749_240
                        add              rsp, 16;                             jmp   n299_lit_integer_β
.Lx749_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n301_subscript_α
n300_binop_β:           mov              r11, 214
                        add              rsp, 16;                             jmp   n299_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n301_subscript_α:       sub              rsp, 16
                        mov              r11, 215
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
                        cmp              al, 104;                             jne   .Lx750_240
                        add              rsp, 16;                             jmp   n300_binop_β
.Lx750_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n302_deref_α
n301_subscript_β:       mov              r11, 215
                        add              rsp, 16;                             jmp   n300_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n302_deref_α:           sub              rsp, 16
                        mov              r11, 216
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
                        cmp              al, 104;                             jne   .Lx751_240
                        add              rsp, 16;                             jmp   n301_subscript_β
.Lx751_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n303_call_α
n302_deref_β:           mov              r11, 216
                        add              rsp, 16;                             jmp   n301_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n303_call_α:            sub              rsp, 16
                        mov              r11, 217
                        lea              rcx, [rip + .Lsig753z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig753z:              .quad            1
                        .quad            .Lx753_2
                        .quad            .Lx753_2
                        .quad            16
.Lx753_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx753_29
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
.Lx753_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx753_240
                        add              rsp, 16;                             jmp   n302_deref_β
.Lx753_240:                                                                   jmp   n304_binop_α
n303_call_β:            mov              r11, 217;                            jmp   n302_deref_β
.Lx753_0:               .quad            .Lx753_0_s
.Lx753_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n304_binop_α:           sub              rsp, 16
                        mov              r11, 218
                        mov              rdi, qword ptr [rsp + 128]           # call
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx754_240
                        add              rsp, 32;                             jmp   n302_deref_β
.Lx754_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n305_assign_var_α
n304_binop_β:           mov              r11, 218
                        add              rsp, 32;                             jmp   n302_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n305_assign_var_α:      sub              rsp, 16
                        mov              r11, 219
                        mov              rdi, qword ptr [rsp + 224]           # subscript
                        mov              rsi, qword ptr [rsp + 232]
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
                        cmp              al, 104;                             jne   .Lx755_240
                        add              rsp, 16;                             jmp   n304_binop_β
.Lx755_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n306_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n306_statement_end_α:   mov              r11, 220
                        mov              r10, 22
                        add              rsp, 304;                            jmp   n307_statement_begin_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n307_statement_begin_α: mov              r11, 221
                        mov              r10, 23;                             jmp   n308_lit_name_α
n307_statement_begin_β: mov              r11, 221;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_name_α:        sub              rsp, 16
                        mov              r11, 222
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx760_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n309_assign_α
.Lx760_0:               .quad            .Lx760_0_s
.Lx760_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n309_assign_α:          mov              r11, 223
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # DIV
                        mov              qword ptr [r9 + 120], rdx;           jmp   n310_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n310_statement_end_α:   mov              r11, 224
                        mov              r10, 23
                        add              rsp, 16;                             jmp   NRETURN
#=======================================================================================================================
# SGN     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n311_statement_begin_α: mov              r11, 225
                        mov              r10, 24;                             jmp   n312_var_α
n311_statement_begin_β: mov              r11, 225;                            jmp   n319_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n312_var_α:             sub              rsp, 16
                        mov              r11, 226
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n313_var_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:             sub              rsp, 16
                        mov              r11, 227
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n314_subscript_α
n313_var_β:             mov              r11, 227
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n311_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n314_subscript_α:       sub              rsp, 16
                        mov              r11, 228
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
                        cmp              al, 104;                             jne   .Lx768_240
                        add              rsp, 16;                             jmp   n313_var_β
.Lx768_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n315_deref_α
n314_subscript_β:       mov              r11, 228
                        add              rsp, 16;                             jmp   n313_var_β
#-----------------------------------------------------------------------------------------------------------------------
n315_deref_α:           sub              rsp, 16
                        mov              r11, 229
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
                        cmp              al, 104;                             jne   .Lx769_240
                        add              rsp, 16;                             jmp   n314_subscript_β
.Lx769_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n316_call_α
n315_deref_β:           mov              r11, 229
                        add              rsp, 16;                             jmp   n314_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n316_call_α:            sub              rsp, 16
                        mov              r11, 230
                        lea              rcx, [rip + .Lsig771z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig771z:              .quad            1
                        .quad            .Lx771_2
                        .quad            .Lx771_2
                        .quad            16
.Lx771_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx771_29
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
.Lx771_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx771_240
                        add              rsp, 16;                             jmp   n315_deref_β
.Lx771_240:                                                                   jmp   n317_assign_α
n316_call_β:            mov              r11, 230;                            jmp   n315_deref_β
.Lx771_0:               .quad            .Lx771_0_s
.Lx771_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n317_assign_α:          mov              r11, 231
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # p1
                        mov              qword ptr [r9 + 152], rdx;           jmp   n318_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n318_statement_end_α:   mov              r11, 232
                        mov              r10, 24
                        add              rsp, 80;                             jmp   n319_statement_begin_α
#=======================================================================================================================
#         p1 = IDENT(S[sp = sp - 1], '-') -p1
#-----------------------------------------------------------------------------------------------------------------------
n319_statement_begin_α: mov              r11, 233
                        mov              r10, 25;                             jmp   n320_var_α
n319_statement_begin_β: mov              r11, 233;                            jmp   n333_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n320_var_α:             sub              rsp, 16
                        mov              r11, 234
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n321_var_α
#-----------------------------------------------------------------------------------------------------------------------
n321_var_α:             sub              rsp, 16
                        mov              r11, 235
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n322_lit_integer_α
n321_var_β:             mov              r11, 235
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n319_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_integer_α:     sub              rsp, 16
                        mov              r11, 236
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx779_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n323_binop_α
n322_lit_integer_β:     mov              r11, 236
                        add              rsp, 16;                             jmp   n321_var_β
.Lx779_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n323_binop_α:           sub              rsp, 16
                        mov              r11, 237
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx780_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx780_7
.Lx780_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx780_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx780_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx780_4
.Lx780_3:               movq             xmm0, rsi
.Lx780_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx780_7:                                                                     jmp   n324_assign_α
.Lx780_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx780_240
                        add              rsp, 16;                             jmp   n322_lit_integer_β
.Lx780_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n324_assign_α
n323_binop_β:           mov              r11, 237
                        add              rsp, 16;                             jmp   n322_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n324_assign_α:          mov              r11, 238
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n325_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n325_subscript_α:       sub              rsp, 16
                        mov              r11, 239
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
                        cmp              al, 104;                             jne   .Lx782_240
                        add              rsp, 16;                             jmp   n323_binop_β
.Lx782_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n326_deref_α
n325_subscript_β:       mov              r11, 239
                        add              rsp, 16;                             jmp   n323_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n326_deref_α:           sub              rsp, 16
                        mov              r11, 240
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
                        cmp              al, 104;                             jne   .Lx783_240
                        add              rsp, 16;                             jmp   n325_subscript_β
.Lx783_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n327_lit_string_α
n326_deref_β:           mov              r11, 240
                        add              rsp, 16;                             jmp   n325_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_string_α:      sub              rsp, 16
                        mov              r11, 241
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx784_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n328_ident_α
n327_lit_string_β:      mov              r11, 241
                        add              rsp, 16;                             jmp   n326_deref_β
.Lx784_0:               .quad            .Lx784_0_s
.Lx784_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n328_ident_α:           sub              rsp, 16
                        mov              r11, 242
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
                        test             eax, eax;                            jne   .Lx786_240
                        add              rsp, 16;                             jmp   n327_lit_string_β
.Lx786_240:                                                                   jmp   n329_var_α
n328_ident_β:           mov              r11, 242
                        add              rsp, 16;                             jmp   n327_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n329_var_α:             sub              rsp, 16
                        mov              r11, 243
                        mov              rax, qword ptr [r9 + 144]            # p1
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n330_unop_α
n329_var_β:             mov              r11, 243
                        add              rsp, 16;                             jmp   n328_ident_β
#-----------------------------------------------------------------------------------------------------------------------
n330_unop_α:            sub              rsp, 16
                        mov              r11, 244
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n331_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n331_assign_α:          mov              r11, 245
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # p1
                        mov              qword ptr [r9 + 152], rdx;           jmp   n332_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n332_statement_end_α:   mov              r11, 246
                        mov              r10, 25
                        add              rsp, 160;                            jmp   n333_statement_begin_α
#=======================================================================================================================
#         S[sp] = p1
#-----------------------------------------------------------------------------------------------------------------------
n333_statement_begin_α: mov              r11, 247
                        mov              r10, 26;                             jmp   n334_var_α
n333_statement_begin_β: mov              r11, 247;                            jmp   n340_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n334_var_α:             sub              rsp, 16
                        mov              r11, 248
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n335_var_α
#-----------------------------------------------------------------------------------------------------------------------
n335_var_α:             sub              rsp, 16
                        mov              r11, 249
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n336_subscript_α
n335_var_β:             mov              r11, 249
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n333_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n336_subscript_α:       sub              rsp, 16
                        mov              r11, 250
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx796_240
                        add              rsp, 16;                             jmp   n335_var_β
.Lx796_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n337_var_α
n336_subscript_β:       mov              r11, 250
                        add              rsp, 16;                             jmp   n335_var_β
#-----------------------------------------------------------------------------------------------------------------------
n337_var_α:             sub              rsp, 16
                        mov              r11, 251
                        mov              rax, qword ptr [r9 + 144]            # p1
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n338_assign_var_α
n337_var_β:             mov              r11, 251
                        add              rsp, 16;                             jmp   n336_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n338_assign_var_α:      sub              rsp, 16
                        mov              r11, 252
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
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
                        cmp              al, 104;                             jne   .Lx798_240
                        add              rsp, 16;                             jmp   n337_var_β
.Lx798_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n339_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n339_statement_end_α:   mov              r11, 253
                        mov              r10, 26
                        add              rsp, 80;                             jmp   n340_statement_begin_α
#=======================================================================================================================
#         SGN = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n340_statement_begin_α: mov              r11, 254
                        mov              r10, 27;                             jmp   n341_lit_name_α
n340_statement_begin_β: mov              r11, 254;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_name_α:        sub              rsp, 16
                        mov              r11, 255
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx803_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n342_assign_α
.Lx803_0:               .quad            .Lx803_0_s
.Lx803_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n342_assign_α:          mov              r11, 256
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # SGN
                        mov              qword ptr [r9 + 136], rdx;           jmp   n343_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n343_statement_end_α:   mov              r11, 257
                        mov              r10, 27
                        add              rsp, 16;                             jmp   NRETURN
#=======================================================================================================================
# FNS_end  <stmt 28, line 56: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n344_statement_begin_α: mov              r11, 258
                        mov              r10, 28;                             jmp   n345_statement_end_α
n344_statement_begin_β: mov              r11, 258;                            jmp   n346_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n345_statement_end_α:   mov              r11, 259
                        mov              r10, 28;                             jmp   n346_statement_begin_α
#=======================================================================================================================
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
n346_statement_begin_α: mov              r11, 260
                        mov              r10, 29;                             jmp   n347_lit_integer_α
n346_statement_begin_β: mov              r11, 260;                            jmp   n351_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_integer_α:     sub              rsp, 16
                        mov              r11, 261
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx813_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n348_call_α
.Lx813_0:               .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n348_call_α:            sub              rsp, 16
                        mov              r11, 262
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd815:            .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd815]
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
                        cmp              al, 104;                             jne   .Lx814_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n346_statement_begin_β
.Lx814_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n349_assign_α
n348_call_β:            mov              r11, 262
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n346_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n349_assign_α:          mov              r11, 263
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # S
                        mov              qword ptr [r9 + 168], rdx;           jmp   n350_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n350_statement_end_α:   mov              r11, 264
                        mov              r10, 29
                        add              rsp, 32;                             jmp   n351_statement_begin_α
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
n351_statement_begin_α: mov              r11, 265
                        mov              r10, 30;                             jmp   n352_keyword_snobol4_α
n351_statement_begin_β: mov              r11, 265;                            jmp   n355_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n352_keyword_snobol4_α: sub              rsp, 16
                        mov              r11, 266
                        mov              rdi, qword ptr [rip + .Lx821_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n353_assign_α
.Lx821_0:               .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n353_assign_α:          mov              r11, 267
                        mov              rax, qword ptr [rsp + 0]             # keyword_snobol4
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # LCASE
                        mov              qword ptr [r9 + 232], rdx;           jmp   n354_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n354_statement_end_α:   mov              r11, 268
                        mov              r10, 30
                        add              rsp, 16;                             jmp   n355_statement_begin_α
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n355_statement_begin_α: mov              r11, 269
                        mov              r10, 31;                             jmp   n356_lit_string_α
n355_statement_begin_β: mov              r11, 269;                            jmp   n359_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_string_α:      sub              rsp, 16
                        mov              r11, 270
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx827_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n357_assign_α
.Lx827_0:               .quad            .Lx827_0_s
.Lx827_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n357_assign_α:          mov              r11, 271
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # DIGITS
                        mov              qword ptr [r9 + 248], rdx;           jmp   n358_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n358_statement_end_α:   mov              r11, 272
                        mov              r10, 31
                        add              rsp, 16;                             jmp   n359_statement_begin_α
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n359_statement_begin_α: mov              r11, 273
                        mov              r10, 32;                             jmp   n360_lit_string_α
n359_statement_begin_β: mov              r11, 273;                            jmp   n364_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_string_α:      sub              rsp, 16
                        mov              r11, 274
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx833_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n361_call_α
.Lx833_0:               .quad            .Lx833_0_s
.Lx833_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n361_call_α:            sub              rsp, 16
                        mov              r11, 275
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd835:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd835]
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
                        cmp              al, 104;                             jne   .Lx834_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n359_statement_begin_β
.Lx834_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n362_assign_α
n361_call_β:            mov              r11, 275
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n359_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n362_assign_α:          mov              r11, 276
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # V
                        mov              qword ptr [r9 + 264], rdx;           jmp   n363_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n363_statement_end_α:   mov              r11, 277
                        mov              r10, 32
                        add              rsp, 32;                             jmp   n364_statement_begin_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n364_statement_begin_α: mov              r11, 278
                        mov              r10, 33;                             jmp   n365_lit_string_α
n364_statement_begin_β: mov              r11, 278;                            jmp   n369_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_string_α:      sub              rsp, 16
                        mov              r11, 279
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx841_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n366_call_α
.Lx841_0:               .quad            .Lx841_0_s
.Lx841_0_s:             .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n366_call_α:            sub              rsp, 16
                        mov              r11, 280
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd843:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd843]
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
                        cmp              al, 104;                             jne   .Lx842_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n364_statement_begin_β
.Lx842_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n367_assign_α
n366_call_β:            mov              r11, 280
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n364_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n367_assign_α:          mov              r11, 281
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # I
                        mov              qword ptr [r9 + 280], rdx;           jmp   n368_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n368_statement_end_α:   mov              r11, 282
                        mov              r10, 33
                        add              rsp, 32;                             jmp   n369_statement_begin_α
#=======================================================================================================================
#         A = FENCE(V | I | '(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n369_statement_begin_α: mov              r11, 283
                        mov              r10, 34;                             jmp   n370_var_α
n369_statement_begin_β: mov              r11, 283;                            jmp   n379_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:             sub              rsp, 16
                        mov              r11, 284
                        mov              rax, qword ptr [r9 + 256]            # V
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n371_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n371_assign_α:          mov              r11, 285
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax            # PAT$2$V0
                        mov              qword ptr [r9 + 456], rdx;           jmp   n372_var_α
#-----------------------------------------------------------------------------------------------------------------------
n372_var_α:             sub              rsp, 16
                        mov              r11, 286
                        mov              rax, qword ptr [r9 + 272]            # I
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n373_assign_α
n372_var_β:             mov              r11, 286
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n369_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n373_assign_α:          mov              r11, 287
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax            # PAT$2$V1
                        mov              qword ptr [r9 + 472], rdx;           jmp   n374_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:      sub              rsp, 16
                        mov              r11, 288
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx853_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n375_lit_string_α
n374_lit_string_β:      mov              r11, 288
                        add              rsp, 16;                             jmp   n372_var_β
.Lx853_0:               .quad            .Lx853_0_s
.Lx853_0_s:             .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n375_lit_string_α:      sub              rsp, 16
                        mov              r11, 289
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx854_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n376_call_α
n375_lit_string_β:      mov              r11, 289
                        add              rsp, 16;                             jmp   n374_lit_string_β
.Lx854_0:               .quad            .Lx854_0_s
.Lx854_0_s:             .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n376_call_α:            sub              rsp, 16
                        mov              r11, 290
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
.Lrkfnzd856:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd856]
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
                        cmp              al, 104;                             jne   .Lx855_240
                        add              rsp, 16;                             jmp   n375_lit_string_β
.Lx855_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n377_assign_α
n376_call_β:            mov              r11, 290
                        add              rsp, 16;                             jmp   n375_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n377_assign_α:          mov              r11, 291
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # A
                        mov              qword ptr [r9 + 296], rdx;           jmp   n378_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n378_statement_end_α:   mov              r11, 292
                        mov              r10, 34
                        add              rsp, 80;                             jmp   n379_statement_begin_α
#=======================================================================================================================
#         F = FENCE(A | ANY('+-') . *PSH() *F . *SGN())
#-----------------------------------------------------------------------------------------------------------------------
n379_statement_begin_α: mov              r11, 293
                        mov              r10, 35;                             jmp   n380_var_α
n379_statement_begin_β: mov              r11, 293;                            jmp   n387_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n380_var_α:             sub              rsp, 16
                        mov              r11, 294
                        mov              rax, qword ptr [r9 + 288]            # A
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n381_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n381_assign_α:          mov              r11, 295
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 488], rdx;           jmp   n382_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:      sub              rsp, 16
                        mov              r11, 296
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx864_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n383_lit_string_α
n382_lit_string_β:      mov              r11, 296
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n379_statement_begin_β
.Lx864_0:               .quad            .Lx864_0_s
.Lx864_0_s:             .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_string_α:      sub              rsp, 16
                        mov              r11, 297
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx865_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n384_call_α
n383_lit_string_β:      mov              r11, 297
                        add              rsp, 16;                             jmp   n382_lit_string_β
.Lx865_0:               .quad            .Lx865_0_s
.Lx865_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n384_call_α:            sub              rsp, 16
                        mov              r11, 298
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
.Lrkfnzd867:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd867]
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
                        cmp              al, 104;                             jne   .Lx866_240
                        add              rsp, 16;                             jmp   n383_lit_string_β
.Lx866_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n385_assign_α
n384_call_β:            mov              r11, 298
                        add              rsp, 16;                             jmp   n383_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n385_assign_α:          mov              r11, 299
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # F
                        mov              qword ptr [r9 + 312], rdx;           jmp   n386_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n386_statement_end_α:   mov              r11, 300
                        mov              r10, 35
                        add              rsp, 64;                             jmp   n387_statement_begin_α
#=======================================================================================================================
#         T = F ARBNO('*' F . *MUL() | '/' F . *DIV())
#-----------------------------------------------------------------------------------------------------------------------
n387_statement_begin_α: mov              r11, 301
                        mov              r10, 36;                             jmp   n388_var_α
n387_statement_begin_β: mov              r11, 301;                            jmp   n399_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n388_var_α:             sub              rsp, 16
                        mov              r11, 302
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n389_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n389_assign_α:          mov              r11, 303
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 504], rdx;           jmp   n390_var_α
#-----------------------------------------------------------------------------------------------------------------------
n390_var_α:             sub              rsp, 16
                        mov              r11, 304
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n391_assign_α
n390_var_β:             mov              r11, 304
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n387_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n391_assign_α:          mov              r11, 305
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 512], rax            # PAT$4$V1
                        mov              qword ptr [r9 + 520], rdx;           jmp   n392_var_α
#-----------------------------------------------------------------------------------------------------------------------
n392_var_α:             sub              rsp, 16
                        mov              r11, 306
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n393_assign_α
n392_var_β:             mov              r11, 306
                        add              rsp, 16;                             jmp   n390_var_β
#-----------------------------------------------------------------------------------------------------------------------
n393_assign_α:          mov              r11, 307
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 528], rax            # PAT$4$V2
                        mov              qword ptr [r9 + 536], rdx;           jmp   n394_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n394_lit_string_α:      sub              rsp, 16
                        mov              r11, 308
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx879_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n395_lit_string_α
n394_lit_string_β:      mov              r11, 308
                        add              rsp, 16;                             jmp   n392_var_β
.Lx879_0:               .quad            .Lx879_0_s
.Lx879_0_s:             .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_string_α:      sub              rsp, 16
                        mov              r11, 309
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx880_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n396_call_α
n395_lit_string_β:      mov              r11, 309
                        add              rsp, 16;                             jmp   n394_lit_string_β
.Lx880_0:               .quad            .Lx880_0_s
.Lx880_0_s:             .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n396_call_α:            sub              rsp, 16
                        mov              r11, 310
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
.Lrkfnzd882:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd882]
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
                        cmp              al, 104;                             jne   .Lx881_240
                        add              rsp, 16;                             jmp   n395_lit_string_β
.Lx881_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n397_assign_α
n396_call_β:            mov              r11, 310
                        add              rsp, 16;                             jmp   n395_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n397_assign_α:          mov              r11, 311
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # T
                        mov              qword ptr [r9 + 328], rdx;           jmp   n398_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n398_statement_end_α:   mov              r11, 312
                        mov              r10, 36
                        add              rsp, 96;                             jmp   n399_statement_begin_α
#=======================================================================================================================
#         X = T ARBNO('+' T . *ADD() | '-' T . *SUB())
#-----------------------------------------------------------------------------------------------------------------------
n399_statement_begin_α: mov              r11, 313
                        mov              r10, 37;                             jmp   n400_var_α
n399_statement_begin_β: mov              r11, 313;                            jmp   n411_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n400_var_α:             sub              rsp, 16
                        mov              r11, 314
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n401_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n401_assign_α:          mov              r11, 315
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax            # PAT$5$V0
                        mov              qword ptr [r9 + 552], rdx;           jmp   n402_var_α
#-----------------------------------------------------------------------------------------------------------------------
n402_var_α:             sub              rsp, 16
                        mov              r11, 316
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n403_assign_α
n402_var_β:             mov              r11, 316
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n399_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n403_assign_α:          mov              r11, 317
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # PAT$5$V1
                        mov              qword ptr [r9 + 568], rdx;           jmp   n404_var_α
#-----------------------------------------------------------------------------------------------------------------------
n404_var_α:             sub              rsp, 16
                        mov              r11, 318
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n405_assign_α
n404_var_β:             mov              r11, 318
                        add              rsp, 16;                             jmp   n402_var_β
#-----------------------------------------------------------------------------------------------------------------------
n405_assign_α:          mov              r11, 319
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 576], rax            # PAT$5$V2
                        mov              qword ptr [r9 + 584], rdx;           jmp   n406_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_string_α:      sub              rsp, 16
                        mov              r11, 320
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx894_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n407_lit_string_α
n406_lit_string_β:      mov              r11, 320
                        add              rsp, 16;                             jmp   n404_var_β
.Lx894_0:               .quad            .Lx894_0_s
.Lx894_0_s:             .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_string_α:      sub              rsp, 16
                        mov              r11, 321
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx895_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n408_call_α
n407_lit_string_β:      mov              r11, 321
                        add              rsp, 16;                             jmp   n406_lit_string_β
.Lx895_0:               .quad            .Lx895_0_s
.Lx895_0_s:             .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n408_call_α:            sub              rsp, 16
                        mov              r11, 322
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
.Lrkfnzd897:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd897]
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
                        cmp              al, 104;                             jne   .Lx896_240
                        add              rsp, 16;                             jmp   n407_lit_string_β
.Lx896_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n409_assign_α
n408_call_β:            mov              r11, 322
                        add              rsp, 16;                             jmp   n407_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n409_assign_α:          mov              r11, 323
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # X
                        mov              qword ptr [r9 + 344], rdx;           jmp   n410_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n410_statement_end_α:   mov              r11, 324
                        mov              r10, 37
                        add              rsp, 96;                             jmp   n411_statement_begin_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n411_statement_begin_α: mov              r11, 325
                        mov              r10, 38;                             jmp   n412_lit_integer_α
n411_statement_begin_β: mov              r11, 325;                            jmp   n420_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_integer_α:     sub              rsp, 16
                        mov              r11, 326
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx903_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n413_call_α
.Lx903_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n413_call_α:            sub              rsp, 16
                        mov              r11, 327
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd327:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd327]
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
                        cmp              al, 104;                             jne   .Lx904_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n411_statement_begin_β
.Lx904_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n414_assign_α
n413_call_β:            mov              r11, 327
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n411_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n414_assign_α:          mov              r11, 328
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax            # PAT$6$V0
                        mov              qword ptr [r9 + 600], rdx;           jmp   n415_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_string_α:      sub              rsp, 16
                        mov              r11, 329
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx906_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n416_lit_string_α
n415_lit_string_β:      mov              r11, 329
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n411_statement_begin_β
.Lx906_0:               .quad            .Lx906_0_s
.Lx906_0_s:             .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_string_α:      sub              rsp, 16
                        mov              r11, 330
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx907_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n417_call_α
n416_lit_string_β:      mov              r11, 330
                        add              rsp, 16;                             jmp   n415_lit_string_β
.Lx907_0:               .quad            .Lx907_0_s
.Lx907_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n417_call_α:            sub              rsp, 16
                        mov              r11, 331
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
.Lrkfnzd909:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd909]
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
                        cmp              al, 104;                             jne   .Lx908_240
                        add              rsp, 16;                             jmp   n416_lit_string_β
.Lx908_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n418_assign_α
n417_call_β:            mov              r11, 331
                        add              rsp, 16;                             jmp   n416_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n418_assign_α:          mov              r11, 332
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # eol
                        mov              qword ptr [r9 + 360], rdx;           jmp   n419_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n419_statement_end_α:   mov              r11, 333
                        mov              r10, 38
                        add              rsp, 80;                             jmp   n420_statement_begin_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n420_statement_begin_α: mov              r11, 334
                        mov              r10, 39;                             jmp   n421_var_α
n420_statement_begin_β: mov              r11, 334;                            jmp   n432_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n421_var_α:             sub              rsp, 16
                        mov              r11, 335
                        mov              rax, qword ptr [r9 + 336]            # X
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n422_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n422_assign_α:          mov              r11, 336
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax            # PAT$7$V0
                        mov              qword ptr [r9 + 616], rdx;           jmp   n423_var_α
#-----------------------------------------------------------------------------------------------------------------------
n423_var_α:             sub              rsp, 16
                        mov              r11, 337
                        mov              rax, qword ptr [r9 + 352]            # eol
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n424_assign_α
n423_var_β:             mov              r11, 337
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n420_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n424_assign_α:          mov              r11, 338
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # PAT$7$V1
                        mov              qword ptr [r9 + 632], rdx;           jmp   n425_var_α
#-----------------------------------------------------------------------------------------------------------------------
n425_var_α:             sub              rsp, 16
                        mov              r11, 339
                        mov              rax, qword ptr [r9 + 384]            # epsilon
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n426_assign_α
n425_var_β:             mov              r11, 339
                        add              rsp, 16;                             jmp   n423_var_β
#-----------------------------------------------------------------------------------------------------------------------
n426_assign_α:          mov              r11, 340
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 640], rax            # PAT$7$V2
                        mov              qword ptr [r9 + 648], rdx;           jmp   n427_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_string_α:      sub              rsp, 16
                        mov              r11, 341
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx921_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n428_lit_string_α
n427_lit_string_β:      mov              r11, 341
                        add              rsp, 16;                             jmp   n425_var_β
.Lx921_0:               .quad            .Lx921_0_s
.Lx921_0_s:             .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_string_α:      sub              rsp, 16
                        mov              r11, 342
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx922_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n429_call_α
n428_lit_string_β:      mov              r11, 342
                        add              rsp, 16;                             jmp   n427_lit_string_β
.Lx922_0:               .quad            .Lx922_0_s
.Lx922_0_s:             .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n429_call_α:            sub              rsp, 16
                        mov              r11, 343
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
.Lrkfnzd924:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd924]
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
                        cmp              al, 104;                             jne   .Lx923_240
                        add              rsp, 16;                             jmp   n428_lit_string_β
.Lx923_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n430_assign_α
n429_call_β:            mov              r11, 343
                        add              rsp, 16;                             jmp   n428_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n430_assign_α:          mov              r11, 344
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # C
                        mov              qword ptr [r9 + 376], rdx;           jmp   n431_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n431_statement_end_α:   mov              r11, 345
                        mov              r10, 39
                        add              rsp, 96;                             jmp   n432_statement_begin_α
#=======================================================================================================================
#         &TRIM = 0
#-----------------------------------------------------------------------------------------------------------------------
n432_statement_begin_α: mov              r11, 346
                        mov              r10, 40;                             jmp   n433_lit_integer_α
n432_statement_begin_β: mov              r11, 346;                            jmp   n436_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_integer_α:     sub              rsp, 16
                        mov              r11, 347
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx930_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n434_keyword_assign_snobol4_α
.Lx930_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n434_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 348
                        mov              rdi, qword ptr [rip + .Lx931_0]
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
                        cmp              al, 104;                             jne   .Lx931_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n432_statement_begin_β
.Lx931_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n435_statement_end_α
.Lx931_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n435_statement_end_α:   mov              r11, 349
                        mov              r10, 40
                        add              rsp, 32;                             jmp   n436_statement_begin_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n436_statement_begin_α: mov              r11, 350
                        mov              r10, 41;                             jmp   n437_call_α
n436_statement_begin_β: mov              r11, 350;                            jmp   n440_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n437_call_α:            sub              rsp, 16
                        mov              r11, 351
                        .section         .rodata
.Lrkfnzd937:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd937]
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
                        cmp              al, 104;                             jne   .Lx936_240
                        add              rsp, 16;                             jmp   n436_statement_begin_β
.Lx936_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n438_assign_α
n437_call_β:            mov              r11, 351
                        add              rsp, 16;                             jmp   n436_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n438_assign_α:          mov              r11, 352
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # vars
                        mov              qword ptr [r9 + 216], rdx;           jmp   n439_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n439_statement_end_α:   mov              r11, 353
                        mov              r10, 41
                        add              rsp, 16;                             jmp   n440_statement_begin_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n440_statement_begin_α: mov              r11, 354
                        mov              r10, 42;                             jmp   n441_var_α
n440_statement_begin_β: mov              r11, 354;                            jmp   n447_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n441_var_α:             sub              rsp, 16
                        mov              r11, 355
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n442_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n442_lit_string_α:      sub              rsp, 16
                        mov              r11, 356
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx944_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n443_subscript_α
n442_lit_string_β:      mov              r11, 356
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n440_statement_begin_β
.Lx944_0:               .quad            .Lx944_0_s
.Lx944_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n443_subscript_α:       sub              rsp, 16
                        mov              r11, 357
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx945_240
                        add              rsp, 16;                             jmp   n442_lit_string_β
.Lx945_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n444_lit_integer_α
n443_subscript_β:       mov              r11, 357
                        add              rsp, 16;                             jmp   n442_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_integer_α:     sub              rsp, 16
                        mov              r11, 358
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx946_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n445_assign_var_α
n444_lit_integer_β:     mov              r11, 358
                        add              rsp, 16;                             jmp   n443_subscript_β
.Lx946_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n445_assign_var_α:      sub              rsp, 16
                        mov              r11, 359
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
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
                        cmp              al, 104;                             jne   .Lx947_240
                        add              rsp, 16;                             jmp   n444_lit_integer_β
.Lx947_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n446_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n446_statement_end_α:   mov              r11, 360
                        mov              r10, 42
                        add              rsp, 80;                             jmp   n447_statement_begin_α
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n447_statement_begin_α: mov              r11, 361
                        mov              r10, 43;                             jmp   n448_var_α
n447_statement_begin_β: mov              r11, 361;                            jmp   n454_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n448_var_α:             sub              rsp, 16
                        mov              r11, 362
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n449_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n449_lit_string_α:      sub              rsp, 16
                        mov              r11, 363
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx953_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n450_subscript_α
n449_lit_string_β:      mov              r11, 363
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n447_statement_begin_β
.Lx953_0:               .quad            .Lx953_0_s
.Lx953_0_s:             .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n450_subscript_α:       sub              rsp, 16
                        mov              r11, 364
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx954_240
                        add              rsp, 16;                             jmp   n449_lit_string_β
.Lx954_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n451_lit_integer_α
n450_subscript_β:       mov              r11, 364
                        add              rsp, 16;                             jmp   n449_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n451_lit_integer_α:     sub              rsp, 16
                        mov              r11, 365
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx955_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n452_assign_var_α
n451_lit_integer_β:     mov              r11, 365
                        add              rsp, 16;                             jmp   n450_subscript_β
.Lx955_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n452_assign_var_α:      sub              rsp, 16
                        mov              r11, 366
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
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
                        cmp              al, 104;                             jne   .Lx956_240
                        add              rsp, 16;                             jmp   n451_lit_integer_β
.Lx956_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n453_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n453_statement_end_α:   mov              r11, 367
                        mov              r10, 43
                        add              rsp, 80;                             jmp   n454_statement_begin_α
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n454_statement_begin_α: mov              r11, 368
                        mov              r10, 44;                             jmp   n455_var_α
n454_statement_begin_β: mov              r11, 368;                            jmp   n461_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n455_var_α:             sub              rsp, 16
                        mov              r11, 369
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n456_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_string_α:      sub              rsp, 16
                        mov              r11, 370
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx962_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n457_subscript_α
n456_lit_string_β:      mov              r11, 370
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n454_statement_begin_β
.Lx962_0:               .quad            .Lx962_0_s
.Lx962_0_s:             .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n457_subscript_α:       sub              rsp, 16
                        mov              r11, 371
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx963_240
                        add              rsp, 16;                             jmp   n456_lit_string_β
.Lx963_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n458_lit_integer_α
n457_subscript_β:       mov              r11, 371
                        add              rsp, 16;                             jmp   n456_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_integer_α:     sub              rsp, 16
                        mov              r11, 372
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx964_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n459_assign_var_α
n458_lit_integer_β:     mov              r11, 372
                        add              rsp, 16;                             jmp   n457_subscript_β
.Lx964_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n459_assign_var_α:      sub              rsp, 16
                        mov              r11, 373
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
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
                        cmp              al, 104;                             jne   .Lx965_240
                        add              rsp, 16;                             jmp   n458_lit_integer_β
.Lx965_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n460_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n460_statement_end_α:   mov              r11, 374
                        mov              r10, 44
                        add              rsp, 80;                             jmp   n461_statement_begin_α
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
n461_statement_begin_α: mov              r11, 375
                        mov              r10, 45;                             jmp   n462_lit_name_α
n461_statement_begin_β: mov              r11, 375;                            jmp   n467_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n462_lit_name_α:        sub              rsp, 16
                        mov              r11, 376
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx970_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n463_lit_integer_α
.Lx970_0:               .quad            .Lx970_0_s
.Lx970_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n463_lit_integer_α:     sub              rsp, 16
                        mov              r11, 377
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx971_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n464_lit_string_α
n463_lit_integer_β:     mov              r11, 377
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n461_statement_begin_β
.Lx971_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n464_lit_string_α:      sub              rsp, 16
                        mov              r11, 378
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx972_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n465_call_α
n464_lit_string_β:      mov              r11, 378
                        add              rsp, 16;                             jmp   n463_lit_integer_β
.Lx972_0:               .quad            .Lx972_0_s
.Lx972_0_s:             .string          "[-f0 -r4194304]"
#-----------------------------------------------------------------------------------------------------------------------
n465_call_α:            sub              rsp, 16
                        mov              r11, 379
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
.Lbynamefnzd379:        .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd379]
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
                        cmp              al, 104;                             jne   .Lx973_240
                        add              rsp, 16;                             jmp   n464_lit_string_β
.Lx973_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n466_statement_end_α
n465_call_β:            mov              r11, 379
                        add              rsp, 16;                             jmp   n464_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n466_statement_end_α:   mov              r11, 380
                        mov              r10, 45
                        add              rsp, 64;                             jmp   n467_statement_begin_α
#=======================================================================================================================
#         src = INPUT
#-----------------------------------------------------------------------------------------------------------------------
n467_statement_begin_α: mov              r11, 381
                        mov              r10, 46;                             jmp   n468_var_α
n467_statement_begin_β: mov              r11, 381;                            jmp   n471_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n468_var_α:             sub              rsp, 16
                        mov              r11, 382
                        mov              rdi, qword ptr [rip + .Lx978_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx978_240
                        add              rsp, 16;                             jmp   n467_statement_begin_β
.Lx978_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n469_assign_α
.Lx978_0:               .quad            .Lx978_0_s
.Lx978_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n469_assign_α:          mov              r11, 383
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # src
                        mov              qword ptr [r9 + 408], rdx;           jmp   n470_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n470_statement_end_α:   mov              r11, 384
                        mov              r10, 46
                        add              rsp, 16;                             jmp   n471_statement_begin_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n471_statement_begin_α: mov              r11, 385
                        mov              r10, 47;                             jmp   n472_call_α
n471_statement_begin_β: mov              r11, 385;                            jmp   n475_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n472_call_α:            sub              rsp, 16
                        mov              r11, 386
                        .section         .rodata
.Lrkfnzd985:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd985]
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
                        cmp              al, 104;                             jne   .Lx984_240
                        add              rsp, 16;                             jmp   n471_statement_begin_β
.Lx984_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n473_assign_α
n472_call_β:            mov              r11, 386
                        add              rsp, 16;                             jmp   n471_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n473_assign_α:          mov              r11, 387
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax            # t0
                        mov              qword ptr [r9 + 424], rdx;           jmp   n474_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n474_statement_end_α:   mov              r11, 388
                        mov              r10, 47
                        add              rsp, 16;                             jmp   n475_statement_begin_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n475_statement_begin_α: mov              r11, 389
                        mov              r10, 48;                             jmp   n476_var_α
n475_statement_begin_β: mov              r11, 389;                            jmp   n497_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n476_var_α:             sub              rsp, 16
                        mov              r11, 390
                        mov              rax, qword ptr [r9 + 400]            # src
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n477_var_α
#-----------------------------------------------------------------------------------------------------------------------
n477_var_α:             sub              rsp, 16
                        mov              r11, 391
                        mov              rax, qword ptr [r9 + 368]            # C
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n478_assign_α
n477_var_β:             mov              r11, 391
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n497_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n478_assign_α:          mov              r11, 392
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx993_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n479_match_begin_α
n478_assign_β:          mov              r11, 392;                            jmp   n477_var_β
.Lx993_0:               .quad            .Lx993_0_s
.Lx993_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n479_match_begin_α:     mov              r11, 393
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
.Lx995_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx995_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n480_match_defer_α
n479_match_begin_β:     mov              r11, 393
.Lx995_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx995_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx995_1
                                                                              jmp   .Lx995_0
.Lx995_1:
n479_match_begin_af:    mov              r11, 393
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
                        pop              rbp;                                 jmp   n478_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n480_match_defer_α:     mov              r11, 394
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S22]
                        cmp              rax, rdx;                            jne   .Lx996_30
                        mov              rax, qword ptr [rcx + 8]
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              jne   .Lx996_30
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lx996_30
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lx996_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lx996_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lx996_0
.Lx996_31:              mov              edx, -1;                             jmp   .Lx996_0
.Lx996_30:              push             r14
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
                        test             rax, rax;                            jz    .Lx996_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx996_5]
                        push             rcx
                        lea              rcx, [rip + .Lx996_4]
                        push             rcx;                                 jmp   rax
.Lx996_4:                                                                     jmp   n481_match_end_α
.Lx996_5:                                                                     jmp   n479_match_begin_β
.Lx996_0:               mov              eax, edx
                        test             eax, eax;                            js    n479_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx996_6]
                        push             rcx
                        push             rax;                                 jmp   n481_match_end_α
.Lx996_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n479_match_begin_β
n480_match_defer_β:     mov              r11, 394
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx996_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx996_12
                                                                              jmp   rax
.Lx996_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n481_match_end_α:       mov              r11, 395
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
                        test             rax, rax;                            je    .Lx998_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n479_match_begin_af
.Lx998_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n482_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n482_statement_end_α:   mov              r11, 396
                        mov              r10, 48
                        add              rsp, 32;                             jmp   n483_statement_begin_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n483_statement_begin_α: mov              r11, 397
                        mov              r10, 49;                             jmp   n484_call_α
n483_statement_begin_β: mov              r11, 397;                            jmp   n487_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n484_call_α:            sub              rsp, 16
                        mov              r11, 398
                        .section         .rodata
.Lrkfnzd1004:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1004]
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
                        cmp              al, 104;                             jne   .Lx1003_240
                        add              rsp, 16;                             jmp   n483_statement_begin_β
.Lx1003_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n485_assign_α
n484_call_β:            mov              r11, 398
                        add              rsp, 16;                             jmp   n483_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n485_assign_α:          mov              r11, 399
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # t1
                        mov              qword ptr [r9 + 440], rdx;           jmp   n486_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n486_statement_end_α:   mov              r11, 400
                        mov              r10, 49
                        add              rsp, 16;                             jmp   n487_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0) / 1000000        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n487_statement_begin_α: mov              r11, 401
                        mov              r10, 50;                             jmp   n488_lit_string_α
n487_statement_begin_β: mov              r11, 401;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_string_α:      sub              rsp, 16
                        mov              r11, 402
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1010_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n489_var_α
.Lx1010_0:              .quad            .Lx1010_0_s
.Lx1010_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n489_var_α:             sub              rsp, 16
                        mov              r11, 403
                        mov              rax, qword ptr [r9 + 432]            # t1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n490_var_α
n489_var_β:             mov              r11, 403
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n487_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n490_var_α:             sub              rsp, 16
                        mov              r11, 404
                        mov              rax, qword ptr [r9 + 416]            # t0
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n491_binop_α
n490_var_β:             mov              r11, 404
                        add              rsp, 16;                             jmp   n489_var_β
#-----------------------------------------------------------------------------------------------------------------------
n491_binop_α:           sub              rsp, 16
                        mov              r11, 405
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1013_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1013_7
.Lx1013_2:              and              edx, 1;                              jz    .Lx1013_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx1013_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1013_4
.Lx1013_3:              movq             xmm0, rsi
.Lx1013_4:              cmp              cl, 5;                               je    .Lx1013_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1013_6
.Lx1013_5:              movq             xmm1, rdi
.Lx1013_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1013_7:                                                                    jmp   n492_lit_integer_α
.Lx1013_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1013_240
                        add              rsp, 16;                             jmp   n490_var_β
.Lx1013_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n492_lit_integer_α
n491_binop_β:           mov              r11, 405
                        add              rsp, 16;                             jmp   n490_var_β
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_integer_α:     sub              rsp, 16
                        mov              r11, 406
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1014_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n493_binop_α
n492_lit_integer_β:     mov              r11, 406
                        add              rsp, 16;                             jmp   n491_binop_β
.Lx1014_0:              .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n493_binop_α:           sub              rsp, 16
                        mov              r11, 407
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx1015_240
                        add              rsp, 16;                             jmp   n492_lit_integer_β
.Lx1015_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n494_binop_α
n493_binop_β:           mov              r11, 407
                        add              rsp, 16;                             jmp   n492_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n494_binop_α:           sub              rsp, 16
                        mov              r11, 408
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n495_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n495_assign_α:          mov              r11, 409
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1017_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n496_statement_end_α
.Lx1017_0:              .quad            .Lx1017_0_s
.Lx1017_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n496_statement_end_α:   mov              r11, 410
                        mov              r10, 50
                        add              rsp, 112;                            jmp   main_γ
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n497_statement_begin_α: mov              r11, 411
                        mov              r10, 51;                             jmp   n498_call_α
n497_statement_begin_β: mov              r11, 411;                            jmp   n501_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n498_call_α:            sub              rsp, 16
                        mov              r11, 412
                        .section         .rodata
.Lrkfnzd1023:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1023]
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
                        cmp              al, 104;                             jne   .Lx1022_240
                        add              rsp, 16;                             jmp   n497_statement_begin_β
.Lx1022_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n499_assign_α
n498_call_β:            mov              r11, 412
                        add              rsp, 16;                             jmp   n497_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n499_assign_α:          mov              r11, 413
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # t1
                        mov              qword ptr [r9 + 440], rdx;           jmp   n500_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n500_statement_end_α:   mov              r11, 414
                        mov              r10, 51
                        add              rsp, 16;                             jmp   n501_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n501_statement_begin_α: mov              r11, 415
                        mov              r10, 52;                             jmp   n502_lit_string_α
n501_statement_begin_β: mov              r11, 415;                            jmp   n505_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_string_α:      sub              rsp, 16
                        mov              r11, 416
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1029_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n503_assign_α
.Lx1029_0:              .quad            .Lx1029_0_s
.Lx1029_0_s:            .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n503_assign_α:          mov              r11, 417
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1030_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n504_statement_end_α
.Lx1030_0:              .quad            .Lx1030_0_s
.Lx1030_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n504_statement_end_α:   mov              r11, 418
                        mov              r10, 52
                        add              rsp, 16;                             jmp   n505_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0) / 1000000
#-----------------------------------------------------------------------------------------------------------------------
n505_statement_begin_α: mov              r11, 419
                        mov              r10, 53;                             jmp   n506_lit_string_α
n505_statement_begin_β: mov              r11, 419;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_string_α:      sub              rsp, 16
                        mov              r11, 420
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1035_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n507_var_α
.Lx1035_0:              .quad            .Lx1035_0_s
.Lx1035_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n507_var_α:             sub              rsp, 16
                        mov              r11, 421
                        mov              rax, qword ptr [r9 + 432]            # t1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n508_var_α
n507_var_β:             mov              r11, 421
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n505_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n508_var_α:             sub              rsp, 16
                        mov              r11, 422
                        mov              rax, qword ptr [r9 + 416]            # t0
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n509_binop_α
n508_var_β:             mov              r11, 422
                        add              rsp, 16;                             jmp   n507_var_β
#-----------------------------------------------------------------------------------------------------------------------
n509_binop_α:           sub              rsp, 16
                        mov              r11, 423
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1038_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1038_7
.Lx1038_2:              and              edx, 1;                              jz    .Lx1038_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx1038_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1038_4
.Lx1038_3:              movq             xmm0, rsi
.Lx1038_4:              cmp              cl, 5;                               je    .Lx1038_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1038_6
.Lx1038_5:              movq             xmm1, rdi
.Lx1038_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1038_7:                                                                    jmp   n510_lit_integer_α
.Lx1038_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1038_240
                        add              rsp, 16;                             jmp   n508_var_β
.Lx1038_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n510_lit_integer_α
n509_binop_β:           mov              r11, 423
                        add              rsp, 16;                             jmp   n508_var_β
#-----------------------------------------------------------------------------------------------------------------------
n510_lit_integer_α:     sub              rsp, 16
                        mov              r11, 424
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1039_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n511_binop_α
n510_lit_integer_β:     mov              r11, 424
                        add              rsp, 16;                             jmp   n509_binop_β
.Lx1039_0:              .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n511_binop_α:           sub              rsp, 16
                        mov              r11, 425
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx1040_240
                        add              rsp, 16;                             jmp   n510_lit_integer_β
.Lx1040_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n512_binop_α
n511_binop_β:           mov              r11, 425
                        add              rsp, 16;                             jmp   n510_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n512_binop_α:           sub              rsp, 16
                        mov              r11, 426
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n513_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n513_assign_α:          mov              r11, 427
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1042_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n514_statement_end_α
.Lx1042_0:              .quad            .Lx1042_0_s
.Lx1042_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n514_statement_end_α:   mov              r11, 428
                        mov              r10, 53
                        add              rsp, 112;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 429
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              r11, 430
                        add              rsp, 8
                        pop              rcx;                                 jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              r11, 431
                        mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rax + 0], 1;              jmp   RETURN
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
