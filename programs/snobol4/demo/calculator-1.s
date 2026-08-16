                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n1_match_any_α
n0_match_assign_save_β: add              rsp, 16;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_any_α:         mov              eax, r14d
                        cmp              eax, r15d;                           jl    .Lx6_239
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lx6_239:               movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               jne   .Lx6_240
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lx6_240:               add              r14d, 1;                             jmp   n2_match_assign_cond_α
n1_match_any_β:         sub              r14d, 1
                        add              rsp, 16;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_match_assign_cond_α: mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   PAT$0_γ
n2_match_assign_cond_β: sub              r12, 24;                             jmp   n1_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + PAT$0_res]
                        push             rax;                                 jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_ω:
                                                                              jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$1:
PAT$1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n9_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n10_match_span_α
n9_match_assign_save_β: add              rsp, 16;                             jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_match_span_α:       sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx15_0:                cmp              ecx, r15d;                           jge   .Lx15_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx15_1
                        add              ecx, 1;                              jmp   .Lx15_0
.Lx15_1:                cmp              ecx, r14d;                           jg    .Lx15_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$1_ω
.Lx15_240:              mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   n11_match_assign_cond_α
n10_match_span_β:       mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n11_match_assign_cond_α:
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
                        sub              r12, 24;                             jmp   n10_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + PAT$1_res]
                        push             rax;                                 jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_ω:
                                                                              jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$2:
PAT$2_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 24
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
                        mov              qword ptr [rbp + -24], rdx
#-----------------------------------------------------------------------------------------------------------------------
n18_match_alternate_α:  sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx26_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n24_match_defer_α
.Lx26_21:               lea              rax, [rip + .Lx26_22]
                        mov              qword ptr [rsp + 16], rax;           jmp   n23_match_defer_α
.Lx26_22:               lea              rax, [rip + .Lx26_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n20_match_lit_α
n18_match_alternate_s0: lea              rax, [rip + .Lx26_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_match_alternate_as
n18_match_alternate_s1: lea              rax, [rip + .Lx26_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_match_alternate_as
n18_match_alternate_s2: lea              rax, [rip + .Lx26_42]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_match_alternate_as
.Lx26_40:                                                                     jmp   n24_match_defer_β
.Lx26_41:                                                                     jmp   n23_match_defer_β
.Lx26_42:                                                                     jmp   n19_goto_β
n18_match_alternate_as:                                                       jmp   PAT$2_γ
n18_match_alternate_β:  mov              rax, qword ptr [rsp + 8];            jmp   rax
n18_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx26_19:               add              rsp, 32;                             jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_goto_α:                                                                   jmp   n18_match_alternate_af
n19_goto_β:                                                                   jmp   n18_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n20_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n18_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n18_match_alternate_af
                        add              r14d, 1;                             jmp   n21_match_defer_α
n20_match_lit_β:        sub              r14d, 1;                             jmp   n18_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n21_match_defer_α:      lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx30_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx30_11
.Lx30_13:               mov              rax, qword ptr [r9 + 336]            # X
                        mov              rdx, qword ptr [r9 + 344]
                        cmp              eax, 8;                              jne   .Lx30_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx30_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 344];           jmp   .Lx30_10
.Lx30_9:                xor              eax, eax
.Lx30_10:               test             rax, rax;                            je    .Lx30_15
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rdx
.Lx30_15:
.Lx30_11:               test             rax, rax;                            jz    .Lx30_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx30_4]
                        lea              r11, [rip + .Lx30_5];                jmp   rax
.Lx30_4:                                                                      jmp   n22_match_lit_α
.Lx30_5:                                                                      jmp   n20_match_lit_β
.Lx30_0:                push             r14
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
                        test             eax, eax;                            js    n20_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx30_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n22_match_lit_α
.Lx30_6:                add              rsp, 16;                             jmp   n20_match_lit_β
n21_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n22_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n21_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n21_match_defer_β
                        add              r14d, 1;                             jmp   n18_match_alternate_s2
n22_match_lit_β:        sub              r14d, 1;                             jmp   n21_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n23_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx33_16
                        mov              rax, qword ptr [rdx + 0]
.Lx33_16:               test             rax, rax;                            jz    .Lx33_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx33_4]
                        lea              r11, [rip + .Lx33_5];                jmp   rax
.Lx33_4:                                                                      jmp   n18_match_alternate_s1
.Lx33_5:                                                                      jmp   n18_match_alternate_af
.Lx33_0:                push             r14
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
                        mov              r14d, eax
                        lea              rax, [rip + .Lx33_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n18_match_alternate_s1
.Lx33_6:                add              rsp, 16;                             jmp   n18_match_alternate_af
n23_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n24_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx34_16
                        mov              rax, qword ptr [rdx + 0]
.Lx34_16:               test             rax, rax;                            jz    .Lx34_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx34_4]
                        lea              r11, [rip + .Lx34_5];                jmp   rax
.Lx34_4:                                                                      jmp   n18_match_alternate_s0
.Lx34_5:                                                                      jmp   n18_match_alternate_af
.Lx34_0:                push             r14
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
                        mov              r14d, eax
                        lea              rax, [rip + .Lx34_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n18_match_alternate_s0
.Lx34_6:                add              rsp, 16;                             jmp   n18_match_alternate_af
n24_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_β:
                                                                              jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + PAT$2_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$3:
PAT$3_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 40
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
                        mov              qword ptr [rbp + -24], rdx
#-----------------------------------------------------------------------------------------------------------------------
n35_match_alternate_α:  sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx46_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n44_match_defer_α
.Lx46_21:               lea              rax, [rip + .Lx46_22]
                        mov              qword ptr [rsp + 16], rax;           jmp   n42_match_lit_α
.Lx46_22:               lea              rax, [rip + .Lx46_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n37_match_lit_α
n35_match_alternate_s0: lea              rax, [rip + .Lx46_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_match_alternate_as
n35_match_alternate_s1: lea              rax, [rip + .Lx46_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_match_alternate_as
n35_match_alternate_s2: lea              rax, [rip + .Lx46_42]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_match_alternate_as
.Lx46_40:                                                                     jmp   n44_match_defer_β
.Lx46_41:                                                                     jmp   n41_goto_β
.Lx46_42:                                                                     jmp   n36_goto_β
n35_match_alternate_as:                                                       jmp   PAT$3_γ
n35_match_alternate_β:  mov              rax, qword ptr [rsp + 8];            jmp   rax
n35_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx46_19:               add              rsp, 32;                             jmp   PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_goto_α:                                                                   jmp   n35_match_alternate_af
n36_goto_β:                                                                   jmp   n35_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n37_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n35_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n35_match_alternate_af
                        add              r14d, 1;                             jmp   n38_match_assign_save_α
n37_match_lit_β:        sub              r14d, 1;                             jmp   n35_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n38_match_assign_save_α:
                        mov              dword ptr [rbp + -32], r14d;         jmp   n39_match_defer_α
n38_match_assign_save_β:
                                                                              jmp   n37_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n39_match_defer_α:      lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx52_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx52_11
.Lx52_13:               mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        cmp              eax, 8;                              jne   .Lx52_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx52_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 312];           jmp   .Lx52_10
.Lx52_9:                xor              eax, eax
.Lx52_10:               test             rax, rax;                            je    .Lx52_15
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rdx
.Lx52_15:
.Lx52_11:               test             rax, rax;                            jz    .Lx52_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx52_4]
                        lea              r11, [rip + .Lx52_5];                jmp   rax
.Lx52_4:                                                                      jmp   n40_match_assign_cond_α
.Lx52_5:                                                                      jmp   n38_match_assign_save_β
.Lx52_0:                push             r14
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
                        test             eax, eax;                            js    n38_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx52_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n40_match_assign_cond_α
.Lx52_6:                add              rsp, 16;                             jmp   n38_match_assign_save_β
n39_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n40_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -32]
                        lea              rcx, [rip + .S5]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n35_match_alternate_s2
n40_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n39_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n41_goto_α:                                                                   jmp   n35_match_alternate_af
n41_goto_β:                                                                   jmp   n35_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n42_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n35_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   n35_match_alternate_af
                        add              r14d, 1;                             jmp   n43_match_defer_α
n42_match_lit_β:        sub              r14d, 1;                             jmp   n35_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n43_match_defer_α:      lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx58_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx58_11
.Lx58_13:               mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        cmp              eax, 8;                              jne   .Lx58_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx58_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 312];           jmp   .Lx58_10
.Lx58_9:                xor              eax, eax
.Lx58_10:               test             rax, rax;                            je    .Lx58_15
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rdx
.Lx58_15:
.Lx58_11:               test             rax, rax;                            jz    .Lx58_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx58_4]
                        lea              r11, [rip + .Lx58_5];                jmp   rax
.Lx58_4:                                                                      jmp   n35_match_alternate_s1
.Lx58_5:                                                                      jmp   n42_match_lit_β
.Lx58_0:                push             r14
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
                        test             eax, eax;                            js    n42_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx58_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n35_match_alternate_s1
.Lx58_6:                add              rsp, 16;                             jmp   n42_match_lit_β
n43_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n44_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx59_16
                        mov              rax, qword ptr [rdx + 0]
.Lx59_16:               test             rax, rax;                            jz    .Lx59_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx59_4]
                        lea              r11, [rip + .Lx59_5];                jmp   rax
.Lx59_4:                                                                      jmp   n35_match_alternate_s0
.Lx59_5:                                                                      jmp   n35_match_alternate_af
.Lx59_0:                push             r14
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
                        test             eax, eax;                            js    n35_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx59_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n35_match_alternate_s0
.Lx59_6:                add              rsp, 16;                             jmp   n35_match_alternate_af
n44_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_β:
                                                                              jmp   PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + PAT$3_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$4:
PAT$4_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 56
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
                        mov              qword ptr [rbp + -24], rdx
#-----------------------------------------------------------------------------------------------------------------------
n60_match_defer_α:      sub              rsp, 16
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
                        test             rax, rax;                            je    .Lx73_16
                        mov              rax, qword ptr [rdx + 0]
.Lx73_16:               test             rax, rax;                            jz    .Lx73_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx73_4]
                        lea              r11, [rip + .Lx73_5];                jmp   rax
.Lx73_4:                                                                      jmp   n61_match_alternate_α
.Lx73_5:                add              rsp, 16;                             jmp   PAT$4_ω
.Lx73_0:                push             r14
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
                        test             eax, eax;                            jns   .Lx73_240
                        add              rsp, 16;                             jmp   PAT$4_ω
.Lx73_240:              mov              r14d, eax
                        lea              rax, [rip + .Lx73_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n61_match_alternate_α
.Lx73_6:                add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$4_ω
n60_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n61_match_alternate_α:  sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx75_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n69_match_lit_α
.Lx75_21:               lea              rax, [rip + .Lx75_22]
                        mov              qword ptr [rsp + 16], rax;           jmp   n64_match_lit_α
.Lx75_22:               lea              rax, [rip + .Lx75_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n62_match_lit_α
n61_match_alternate_s0: lea              rax, [rip + .Lx75_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n61_match_alternate_as
n61_match_alternate_s1: lea              rax, [rip + .Lx75_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n61_match_alternate_as
n61_match_alternate_s2: lea              rax, [rip + .Lx75_42]
                        mov              qword ptr [rsp + 8], rax;            jmp   n61_match_alternate_as
.Lx75_40:                                                                     jmp   n68_goto_β
.Lx75_41:                                                                     jmp   n63_goto_β
.Lx75_42:                                                                     jmp   n62_match_lit_β
n61_match_alternate_as:                                                       jmp   PAT$4_γ
n61_match_alternate_β:  mov              rax, qword ptr [rsp + 8];            jmp   rax
n61_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx75_19:               add              rsp, 32;                             jmp   n60_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n62_match_lit_α:                                                              jmp   n61_match_alternate_s2
n62_match_lit_β:                                                              jmp   n61_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n63_goto_α:                                                                   jmp   n61_match_alternate_af
n63_goto_β:                                                                   jmp   n61_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n64_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n61_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47;                             jne   n61_match_alternate_af
                        add              r14d, 1;                             jmp   n65_match_assign_save_α
n64_match_lit_β:        sub              r14d, 1;                             jmp   n61_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n65_match_assign_save_α:
                        mov              dword ptr [rbp + -48], r14d;         jmp   n66_match_defer_α
n65_match_assign_save_β:
                                                                              jmp   n64_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n66_match_defer_α:      lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx83_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx83_11
.Lx83_13:               mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        cmp              eax, 8;                              jne   .Lx83_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx83_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 328];           jmp   .Lx83_10
.Lx83_9:                xor              eax, eax
.Lx83_10:               test             rax, rax;                            je    .Lx83_15
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rdx
.Lx83_15:
.Lx83_11:               test             rax, rax;                            jz    .Lx83_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx83_4]
                        lea              r11, [rip + .Lx83_5];                jmp   rax
.Lx83_4:                                                                      jmp   n67_match_assign_cond_α
.Lx83_5:                                                                      jmp   n65_match_assign_save_β
.Lx83_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]
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
                        test             eax, eax;                            js    n65_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx83_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n67_match_assign_cond_α
.Lx83_6:                add              rsp, 16;                             jmp   n65_match_assign_save_β
n66_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n67_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -48]
                        lea              rcx, [rip + .S9]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n61_match_alternate_s1
n67_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n66_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n68_goto_α:                                                                   jmp   n61_match_alternate_af
n68_goto_β:                                                                   jmp   n61_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n69_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n61_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42;                             jne   n61_match_alternate_af
                        add              r14d, 1;                             jmp   n70_match_assign_save_α
n69_match_lit_β:        sub              r14d, 1;                             jmp   n61_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n70_match_assign_save_α:
                        mov              dword ptr [rbp + -32], r14d;         jmp   n71_match_defer_α
n70_match_assign_save_β:
                                                                              jmp   n69_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n71_match_defer_α:      lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx91_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx91_11
.Lx91_13:               mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        cmp              eax, 8;                              jne   .Lx91_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx91_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 328];           jmp   .Lx91_10
.Lx91_9:                xor              eax, eax
.Lx91_10:               test             rax, rax;                            je    .Lx91_15
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rdx
.Lx91_15:
.Lx91_11:               test             rax, rax;                            jz    .Lx91_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx91_4]
                        lea              r11, [rip + .Lx91_5];                jmp   rax
.Lx91_4:                                                                      jmp   n72_match_assign_cond_α
.Lx91_5:                                                                      jmp   n70_match_assign_save_β
.Lx91_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]
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
                        test             eax, eax;                            js    n70_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx91_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n72_match_assign_cond_α
.Lx91_6:                add              rsp, 16;                             jmp   n70_match_assign_save_β
n71_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n72_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -32]
                        lea              rcx, [rip + .S10]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n61_match_alternate_s0
n72_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n71_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_β:
                                                                              jmp   PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + PAT$4_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$5:
PAT$5_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 56
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
                        mov              qword ptr [rbp + -24], rdx
#-----------------------------------------------------------------------------------------------------------------------
n94_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S11]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx107_16
                        mov              rax, qword ptr [rdx + 0]
.Lx107_16:              test             rax, rax;                            jz    .Lx107_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx107_4]
                        lea              r11, [rip + .Lx107_5];               jmp   rax
.Lx107_4:                                                                     jmp   n95_match_alternate_α
.Lx107_5:               add              rsp, 16;                             jmp   PAT$5_ω
.Lx107_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S11]
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
                        test             eax, eax;                            jns   .Lx107_240
                        add              rsp, 16;                             jmp   PAT$5_ω
.Lx107_240:             mov              r14d, eax
                        lea              rax, [rip + .Lx107_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n95_match_alternate_α
.Lx107_6:               add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$5_ω
n94_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n95_match_alternate_α:  sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx109_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n103_match_lit_α
.Lx109_21:              lea              rax, [rip + .Lx109_22]
                        mov              qword ptr [rsp + 16], rax;           jmp   n98_match_lit_α
.Lx109_22:              lea              rax, [rip + .Lx109_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n96_match_lit_α
n95_match_alternate_s0: lea              rax, [rip + .Lx109_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n95_match_alternate_as
n95_match_alternate_s1: lea              rax, [rip + .Lx109_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n95_match_alternate_as
n95_match_alternate_s2: lea              rax, [rip + .Lx109_42]
                        mov              qword ptr [rsp + 8], rax;            jmp   n95_match_alternate_as
.Lx109_40:                                                                    jmp   n102_goto_β
.Lx109_41:                                                                    jmp   n97_goto_β
.Lx109_42:                                                                    jmp   n96_match_lit_β
n95_match_alternate_as:                                                       jmp   PAT$5_γ
n95_match_alternate_β:  mov              rax, qword ptr [rsp + 8];            jmp   rax
n95_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx109_19:              add              rsp, 32;                             jmp   n94_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n96_match_lit_α:                                                              jmp   n95_match_alternate_s2
n96_match_lit_β:                                                              jmp   n95_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n97_goto_α:                                                                   jmp   n95_match_alternate_af
n97_goto_β:                                                                   jmp   n95_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n98_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n95_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n95_match_alternate_af
                        add              r14d, 1;                             jmp   n99_match_assign_save_α
n98_match_lit_β:        sub              r14d, 1;                             jmp   n95_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n99_match_assign_save_α:
                        mov              dword ptr [rbp + -48], r14d;         jmp   n100_match_defer_α
n99_match_assign_save_β:
                                                                              jmp   n98_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n100_match_defer_α:     lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx117_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx117_11
.Lx117_13:              mov              rax, qword ptr [r9 + 336]            # X
                        mov              rdx, qword ptr [r9 + 344]
                        cmp              eax, 8;                              jne   .Lx117_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx117_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 344];           jmp   .Lx117_10
.Lx117_9:               xor              eax, eax
.Lx117_10:              test             rax, rax;                            je    .Lx117_15
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rdx
.Lx117_15:
.Lx117_11:              test             rax, rax;                            jz    .Lx117_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx117_4]
                        lea              r11, [rip + .Lx117_5];               jmp   rax
.Lx117_4:                                                                     jmp   n101_match_assign_cond_α
.Lx117_5:                                                                     jmp   n99_match_assign_save_β
.Lx117_0:               push             r14
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
                        test             eax, eax;                            js    n99_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx117_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n101_match_assign_cond_α
.Lx117_6:               add              rsp, 16;                             jmp   n99_match_assign_save_β
n100_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n101_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -48]
                        lea              rcx, [rip + .S12]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n95_match_alternate_s1
n101_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n100_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n102_goto_α:                                                                  jmp   n95_match_alternate_af
n102_goto_β:                                                                  jmp   n95_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n103_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n95_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   n95_match_alternate_af
                        add              r14d, 1;                             jmp   n104_match_assign_save_α
n103_match_lit_β:       sub              r14d, 1;                             jmp   n95_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n104_match_assign_save_α:
                        mov              dword ptr [rbp + -32], r14d;         jmp   n105_match_defer_α
n104_match_assign_save_β:
                                                                              jmp   n103_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n105_match_defer_α:     lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx125_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx125_11
.Lx125_13:              mov              rax, qword ptr [r9 + 336]            # X
                        mov              rdx, qword ptr [r9 + 344]
                        cmp              eax, 8;                              jne   .Lx125_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx125_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 344];           jmp   .Lx125_10
.Lx125_9:               xor              eax, eax
.Lx125_10:              test             rax, rax;                            je    .Lx125_15
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rdx
.Lx125_15:
.Lx125_11:              test             rax, rax;                            jz    .Lx125_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx125_4]
                        lea              r11, [rip + .Lx125_5];               jmp   rax
.Lx125_4:                                                                     jmp   n106_match_assign_cond_α
.Lx125_5:                                                                     jmp   n104_match_assign_save_β
.Lx125_0:               push             r14
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
                        test             eax, eax;                            js    n104_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx125_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n106_match_assign_cond_α
.Lx125_6:               add              rsp, 16;                             jmp   n104_match_assign_save_β
n105_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n106_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -32]
                        lea              rcx, [rip + .S13]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n95_match_alternate_s0
n106_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n105_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_β:
                                                                              jmp   PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + PAT$5_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$6:
PAT$6_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 24
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
                        mov              qword ptr [rbp + -24], rdx
#-----------------------------------------------------------------------------------------------------------------------
n128_match_defer_α:     sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S14]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx130_16
                        mov              rax, qword ptr [rdx + 0]
.Lx130_16:              test             rax, rax;                            jz    .Lx130_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx130_4]
                        lea              r11, [rip + .Lx130_5];               jmp   rax
.Lx130_4:                                                                     jmp   n129_match_fence1_α
.Lx130_5:               add              rsp, 16;                             jmp   PAT$6_ω
.Lx130_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S14]
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
                        test             eax, eax;                            jns   .Lx130_240
                        add              rsp, 16;                             jmp   PAT$6_ω
.Lx130_240:             mov              r14d, eax
                        lea              rax, [rip + .Lx130_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n129_match_fence1_α
.Lx130_6:               add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$6_ω
n128_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n129_match_fence1_α:                                                          jmp   PAT$6_γ
n129_match_fence1_β:                                                          jmp   PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_β:
                                                                              jmp   PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + PAT$6_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$7:
PAT$7_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 56
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
                        mov              qword ptr [rbp + -24], rdx
#-----------------------------------------------------------------------------------------------------------------------
n133_match_pos_α:       mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$7_ω
                                                                              jmp   n134_match_arbno_α
n133_match_pos_β:                                                             jmp   PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n134_match_arbno_α:     mov              dword ptr [rbp + -32], r14d
                        mov              dword ptr [rbp + -28], r14d;         jmp   n135_match_rpos_α
n134_match_arbno_β:                                                           jmp   n136_match_defer_α
n134_match_arbno_as:    mov              eax, dword ptr [rbp + -28]
                        cmp              r14d, eax;                           je    n136_match_defer_β
                        mov              dword ptr [rbp + -28], r14d;         jmp   n135_match_rpos_α
n134_match_arbno_af:    mov              eax, dword ptr [rbp + -32]
                        cmp              r14d, eax;                           jmp   n133_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n135_match_rpos_α:      mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n134_match_arbno_β
                                                                              jmp   PAT$7_γ
n135_match_rpos_β:                                                            jmp   n134_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n136_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
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
                        test             rax, rax;                            je    .Lx145_16
                        mov              rax, qword ptr [rdx + 0]
.Lx145_16:              test             rax, rax;                            jz    .Lx145_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx145_4]
                        lea              r11, [rip + .Lx145_5];               jmp   rax
.Lx145_4:                                                                     jmp   n137_match_defer_α
.Lx145_5:                                                                     jmp   n134_match_arbno_af
.Lx145_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
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
                        test             eax, eax;                            js    n134_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx145_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n137_match_defer_α
.Lx145_6:               add              rsp, 16;                             jmp   n134_match_arbno_af
n136_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n137_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx146_16
                        mov              rax, qword ptr [rdx + 0]
.Lx146_16:              test             rax, rax;                            jz    .Lx146_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx146_4]
                        lea              r11, [rip + .Lx146_5];               jmp   rax
.Lx146_4:                                                                     jmp   n138_match_assign_save_α
.Lx146_5:                                                                     jmp   n136_match_defer_β
.Lx146_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S16]
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
                        test             eax, eax;                            js    n136_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx146_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n138_match_assign_save_α
.Lx146_6:               add              rsp, 16;                             jmp   n136_match_defer_β
n137_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n138_match_assign_save_α:
                        mov              dword ptr [rbp + -48], r14d;         jmp   n139_match_defer_α
n138_match_assign_save_β:
                                                                              jmp   n137_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n139_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
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
                        test             rax, rax;                            je    .Lx149_16
                        mov              rax, qword ptr [rdx + 0]
.Lx149_16:              test             rax, rax;                            jz    .Lx149_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx149_4]
                        lea              r11, [rip + .Lx149_5];               jmp   rax
.Lx149_4:                                                                     jmp   n140_match_assign_cond_α
.Lx149_5:                                                                     jmp   n138_match_assign_save_β
.Lx149_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
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
                        test             eax, eax;                            js    n138_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx149_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n140_match_assign_cond_α
.Lx149_6:               add              rsp, 16;                             jmp   n138_match_assign_save_β
n139_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n140_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -48]
                        lea              rcx, [rip + .S18]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n134_match_arbno_as
n140_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n139_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_β:
                                                                              jmp   n135_match_rpos_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + PAT$7_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             main_init
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
main_init:
                        sub              rsp, 8
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
                        .long            176
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
                        .long            224
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
                        .long            224
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
.Lgvan0:                .string          "EMIT"
.Lgvan1:                .string          "PSH"
.Lgvan2:                .string          "DRF"
.Lgvan3:                .string          "nm"
.Lgvan4:                .string          "ADD"
.Lgvan5:                .string          "p1"
.Lgvan6:                .string          "SUB"
.Lgvan7:                .string          "MUL"
.Lgvan8:                .string          "DIV"
.Lgvan9:                .string          "NEG"
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
.Lgvan25:               .string          "nl"
.Lgvan26:               .string          "line"
.Lgvan27:               .string          "b1"
.Lgvan28:               .string          "b2"
.Lgvan29:               .string          "src"
.Lgvan30:               .string          "t0"
.Lgvan31:               .string          "t1"
.Lgvan32:               .string          "PAT$2$V0"
.Lgvan33:               .string          "PAT$2$V1"
.Lgvan34:               .string          "PAT$3$V0"
.Lgvan35:               .string          "PAT$4$V0"
.Lgvan36:               .string          "PAT$5$V0"
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
#         DEFINE('EMIT()')                        :(EMIT_x)
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_begin_α:                                                       jmp   n153_define_α
n152_statement_begin_β:                                                       jmp   n172_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n153_define_α:          mov              rdi, qword ptr [rip + .Lx600_0]
                        mov              rsi, qword ptr [rip + .Lx600_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n155_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n154_statement_end_α
n153_define_β:                                                                jmp   n152_statement_begin_β
.Lx600_0:               .quad            .Lx600_0_s
.Lx600_0_s:             .string          "EMIT"
.Lx600_1:               .quad            .Lx600_1_s
.Lx600_1_s:             .string          ""
                                                                              jmp   .Lx601_245
#-----------------------------------------------------------------------------------------------------------------------
EMIT_α:                 sub              rsp, 48
                        mov              rax, qword ptr [r9 + 0]              # EMIT
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              r10, [rip + EMIT_γ]
                        lea              r11, [rip + EMIT_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n155_statement_begin_α]; jmp   rax
EMIT_γ:                 mov              rdi, qword ptr [r9 + 0]
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
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
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx601_245:
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_end_α:                                                         jmp   n172_statement_begin_α
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_begin_α:                                                       jmp   n156_var_α
n155_statement_begin_β:                                                       jmp   n163_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n157_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx607_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n158_subscript_α
n157_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n155_statement_begin_β
.Lx607_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n158_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx608_240
                        add              rsp, 16;                             jmp   n157_lit_integer_β
.Lx608_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_deref_α
n158_subscript_β:       add              rsp, 16;                             jmp   n157_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n159_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx609_240
                        add              rsp, 16;                             jmp   n158_subscript_β
.Lx609_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_call_α
n159_deref_β:           add              rsp, 16;                             jmp   n158_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n160_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig611z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig611z:              .quad            1
                        .quad            .Lx611_2
                        .quad            .Lx611_2
                        .quad            16
.Lx611_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx611_29
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
.Lx611_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx611_240
                        add              rsp, 16;                             jmp   n159_deref_β
.Lx611_240:                                                                   jmp   n161_assign_α
n160_call_β:                                                                  jmp   n159_deref_β
.Lx611_0:               .quad            .Lx611_0_s
.Lx611_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n161_assign_α:          mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx612_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n162_statement_end_α
.Lx612_0:               .quad            .Lx612_0_s
.Lx612_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_end_α:   add              rsp, 80;                             jmp   n163_statement_begin_α
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_begin_α:                                                       jmp   n164_lit_integer_α
n163_statement_begin_β:                                                       jmp   n167_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx617_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n165_assign_α
.Lx617_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n165_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n166_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_end_α:   add              rsp, 16;                             jmp   n167_statement_begin_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_begin_α:                                                       jmp   n168_lit_string_α
n167_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n169_call_α
.Lx623_0:               .quad            .Lx623_0_s
.Lx623_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n169_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd625:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd625]
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
                        cmp              eax, 104;                            jne   .Lx624_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n167_statement_begin_β
.Lx624_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n170_assign_α
n169_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n167_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n170_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # EMIT
                        mov              qword ptr [r9 + 8], rdx;             jmp   n171_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# EMIT_x  <stmt 5, line 29: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_begin_α:                                                       jmp   n173_statement_end_α
n172_statement_begin_β:                                                       jmp   n174_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_end_α:                                                         jmp   n174_statement_begin_α
#=======================================================================================================================
#         DEFINE('PSH()')                         :(PSH_x)
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_begin_α:                                                       jmp   n175_define_α
n174_statement_begin_β:                                                       jmp   n189_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n175_define_α:          mov              rdi, qword ptr [rip + .Lx636_0]
                        mov              rsi, qword ptr [rip + .Lx636_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n177_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_statement_end_α
n175_define_β:                                                                jmp   n174_statement_begin_β
.Lx636_0:               .quad            .Lx636_0_s
.Lx636_0_s:             .string          "PSH"
.Lx636_1:               .quad            .Lx636_1_s
.Lx636_1_s:             .string          ""
                                                                              jmp   .Lx637_245
#-----------------------------------------------------------------------------------------------------------------------
PSH_α:                  sub              rsp, 48
                        mov              rax, qword ptr [r9 + 16]             # PSH
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              r10, [rip + PSH_γ]
                        lea              r11, [rip + PSH_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n177_statement_begin_α]; jmp   rax
PSH_γ:                  mov              rdi, qword ptr [r9 + 16]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 24], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
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
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx637_245:
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:                                                         jmp   n189_statement_begin_α
#=======================================================================================================================
# PSH     sp = sp + 1
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_begin_α:                                                       jmp   n178_var_α
n177_statement_begin_β:                                                       jmp   n183_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx643_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n180_binop_α
n179_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n177_statement_begin_β
.Lx643_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n180_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx644_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx644_7
.Lx644_2:               and              edx, 1;                              jz    .Lx644_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx644_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx644_4
.Lx644_3:               movq             xmm0, rsi
.Lx644_4:               cmp              ecx, 5;                              je    .Lx644_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx644_6
.Lx644_5:               movq             xmm1, rdi
.Lx644_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx644_7:                                                                     jmp   n181_assign_α
.Lx644_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx644_240
                        add              rsp, 16;                             jmp   n179_lit_integer_β
.Lx644_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n181_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n181_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n182_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_end_α:   add              rsp, 48;                             jmp   n183_statement_begin_α
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_begin_α:                                                       jmp   n184_var_α
n183_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n185_var_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_subscript_α
n185_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n183_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n186_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx652_240
                        add              rsp, 16;                             jmp   n185_var_β
.Lx652_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n187_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n187_assign_α:          mov              rax, qword ptr [rsp + 0]             # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # PSH
                        mov              qword ptr [r9 + 24], rdx;            jmp   n188_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_end_α:   add              rsp, 48;                             jmp   NRETURN
#=======================================================================================================================
# PSH_x  <stmt 9, line 33: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_begin_α:                                                       jmp   n190_statement_end_α
n189_statement_begin_β:                                                       jmp   n191_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_end_α:                                                         jmp   n191_statement_begin_α
#=======================================================================================================================
#         DEFINE('DRF(nm)')                       :(DRF_x)
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_begin_α:                                                       jmp   n192_define_α
n191_statement_begin_β:                                                       jmp   n213_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n192_define_α:          mov              rdi, qword ptr [rip + .Lx663_0]
                        mov              rsi, qword ptr [rip + .Lx663_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n194_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n193_statement_end_α
n192_define_β:                                                                jmp   n191_statement_begin_β
.Lx663_0:               .quad            .Lx663_0_s
.Lx663_0_s:             .string          "DRF"
.Lx663_1:               .quad            .Lx663_1_s
.Lx663_1_s:             .string          "nm"
                                                                              jmp   .Lx664_245
#-----------------------------------------------------------------------------------------------------------------------
DRF_α:                  sub              rsp, 64
                        mov              rax, qword ptr [r9 + 32]             # DRF
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
                        cmp              rdx, 0;                              jbe   .Lx664_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # nm
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx664_41
.Lx664_10:              mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx664_41:              lea              r10, [rip + DRF_γ]
                        lea              r11, [rip + DRF_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n194_statement_begin_α]; jmp   rax
DRF_γ:                  mov              rdi, qword ptr [r9 + 32]             # DRF
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Lx664_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx664_110
.Lx664_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx664_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
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
                        cmp              rdx, 0;                              jbe   .Lx664_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx664_180
.Lx664_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx664_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx664_245:
#-----------------------------------------------------------------------------------------------------------------------
n193_statement_end_α:                                                         jmp   n213_statement_begin_α
#=======================================================================================================================
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_begin_α:                                                       jmp   n195_var_α
n194_statement_begin_β:                                                       jmp   n209_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n196_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n196_match_begin_α:     mov              rdi, qword ptr [rsp + 0]             # var
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
.Lx671_0:               mov              r14d, dword ptr [rbp + -40];         jmp   n197_match_pos_α
n196_match_begin_β:     lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx671_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx671_1
                                                                              jmp   .Lx671_0
.Lx671_1:
n196_match_begin_af:    mov              r12, qword ptr [rbp + -8]            # cas_mark
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
                        add              rsp, 16;                             jmp   n209_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n197_match_pos_α:       mov              rax, 0
                        cmp              r14d, eax;                           jne   n196_match_begin_β
                                                                              jmp   n198_match_any_α
n197_match_pos_β:                                                             jmp   n196_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n198_match_any_α:       mov              eax, r14d
                        cmp              eax, r15d;                           jge   n196_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n196_match_begin_β
                        add              r14d, 1;                             jmp   n199_match_rpos_α
n198_match_any_β:       sub              r14d, 1;                             jmp   n196_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n199_match_rpos_α:      mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n198_match_any_β
                                                                              jmp   n200_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n200_match_end_α:       push             r14
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
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n201_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_end_α:   add              rsp, 16;                             jmp   n202_statement_begin_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n202_statement_begin_α:                                                       jmp   n203_var_α
n202_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n203_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n204_var_α
#-----------------------------------------------------------------------------------------------------------------------
n204_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n205_subscript_α
n204_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n202_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n205_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx684_240
                        add              rsp, 16;                             jmp   n204_var_β
.Lx684_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n206_deref_α
n205_subscript_β:       add              rsp, 16;                             jmp   n204_var_β
#-----------------------------------------------------------------------------------------------------------------------
n206_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx685_240
                        add              rsp, 16;                             jmp   n205_subscript_β
.Lx685_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n207_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n207_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx;            jmp   n208_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n208_statement_end_α:   add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n209_statement_begin_α:                                                       jmp   n210_var_α
n209_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n210_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n211_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n211_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx;            jmp   n212_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n212_statement_end_α:   add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# DRF_x  <stmt 14, line 38: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n213_statement_begin_α:                                                       jmp   n214_statement_end_α
n213_statement_begin_β:                                                       jmp   n215_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n214_statement_end_α:                                                         jmp   n215_statement_begin_α
#=======================================================================================================================
#         DEFINE('ADD()p1')                       :(ADD_x)
#-----------------------------------------------------------------------------------------------------------------------
n215_statement_begin_α:                                                       jmp   n216_define_α
n215_statement_begin_β:                                                       jmp   n250_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n216_define_α:          mov              rdi, qword ptr [rip + .Lx702_0]
                        mov              rsi, qword ptr [rip + .Lx702_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n218_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n217_statement_end_α
n216_define_β:                                                                jmp   n215_statement_begin_β
.Lx702_0:               .quad            .Lx702_0_s
.Lx702_0_s:             .string          "ADD"
.Lx702_1:               .quad            .Lx702_1_s
.Lx702_1_s:             .string          "p1"
                                                                              jmp   .Lx703_245
#-----------------------------------------------------------------------------------------------------------------------
ADD_α:                  sub              rsp, 64
                        mov              rax, qword ptr [r9 + 64]             # ADD
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 64], 0
                        mov              qword ptr [r9 + 72], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx703_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx703_41
.Lx703_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx703_41:              lea              r10, [rip + ADD_γ]
                        lea              r11, [rip + ADD_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n218_statement_begin_α]; jmp   rax
ADD_γ:                  mov              rdi, qword ptr [r9 + 64]             # ADD
                        mov              rsi, qword ptr [r9 + 72]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rdx, 0;                              jbe   .Lx703_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx703_110
.Lx703_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx703_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ADD_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax             # ADD
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rdx, 0;                              jbe   .Lx703_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx703_180
.Lx703_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx703_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx703_245:
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_end_α:                                                         jmp   n250_statement_begin_α
#=======================================================================================================================
# ADD     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n218_statement_begin_α:                                                       jmp   n219_var_α
n218_statement_begin_β:                                                       jmp   n226_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_var_α
#-----------------------------------------------------------------------------------------------------------------------
n220_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n221_subscript_α
n220_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n218_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n221_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx710_240
                        add              rsp, 16;                             jmp   n220_var_β
.Lx710_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n222_deref_α
n221_subscript_β:       add              rsp, 16;                             jmp   n220_var_β
#-----------------------------------------------------------------------------------------------------------------------
n222_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx711_240
                        add              rsp, 16;                             jmp   n221_subscript_β
.Lx711_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n223_call_α
n222_deref_β:           add              rsp, 16;                             jmp   n221_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n223_call_α:            sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx713_240
                        add              rsp, 16;                             jmp   n222_deref_β
.Lx713_240:                                                                   jmp   n224_assign_α
n223_call_β:                                                                  jmp   n222_deref_β
.Lx713_0:               .quad            .Lx713_0_s
.Lx713_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n224_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n225_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n225_statement_end_α:   add              rsp, 80;                             jmp   n226_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n226_statement_begin_α:                                                       jmp   n227_var_α
n226_statement_begin_β:                                                       jmp   n232_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n227_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n228_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx720_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n229_binop_α
n228_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n226_statement_begin_β
.Lx720_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n229_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx721_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx721_7
.Lx721_2:               and              edx, 1;                              jz    .Lx721_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx721_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx721_4
.Lx721_3:               movq             xmm0, rsi
.Lx721_4:               cmp              ecx, 5;                              je    .Lx721_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx721_6
.Lx721_5:               movq             xmm1, rdi
.Lx721_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx721_7:                                                                     jmp   n230_assign_α
.Lx721_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx721_240
                        add              rsp, 16;                             jmp   n228_lit_integer_β
.Lx721_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n230_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n230_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n231_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n231_statement_end_α:   add              rsp, 48;                             jmp   n232_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) + p1
#-----------------------------------------------------------------------------------------------------------------------
n232_statement_begin_α:                                                       jmp   n233_var_α
n232_statement_begin_β:                                                       jmp   n245_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n234_var_α
#-----------------------------------------------------------------------------------------------------------------------
n234_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n235_subscript_α
n234_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n232_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n235_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx729_240
                        add              rsp, 16;                             jmp   n234_var_β
.Lx729_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n236_var_α
n235_subscript_β:       add              rsp, 16;                             jmp   n234_var_β
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n237_var_α
n236_var_β:             add              rsp, 16;                             jmp   n235_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n238_subscript_α
n237_var_β:             add              rsp, 16;                             jmp   n236_var_β
#-----------------------------------------------------------------------------------------------------------------------
n238_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx732_240
                        add              rsp, 16;                             jmp   n237_var_β
.Lx732_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n239_deref_α
n238_subscript_β:       add              rsp, 16;                             jmp   n237_var_β
#-----------------------------------------------------------------------------------------------------------------------
n239_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx733_240
                        add              rsp, 16;                             jmp   n238_subscript_β
.Lx733_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n240_call_α
n239_deref_β:           add              rsp, 16;                             jmp   n238_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n240_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig735z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig735z:              .quad            1
                        .quad            .Lx735_2
                        .quad            .Lx735_2
                        .quad            16
.Lx735_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx735_29
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
.Lx735_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx735_240
                        add              rsp, 16;                             jmp   n239_deref_β
.Lx735_240:                                                                   jmp   n241_var_α
n240_call_β:                                                                  jmp   n239_deref_β
.Lx735_0:               .quad            .Lx735_0_s
.Lx735_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_binop_α
n241_var_β:             add              rsp, 32;                             jmp   n239_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n242_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx737_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx737_7
.Lx737_2:               and              edx, 1;                              jz    .Lx737_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx737_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx737_4
.Lx737_3:               movq             xmm0, rsi
.Lx737_4:               cmp              ecx, 5;                              je    .Lx737_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx737_6
.Lx737_5:               movq             xmm1, rdi
.Lx737_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx737_7:                                                                     jmp   n243_assign_var_α
.Lx737_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx737_240
                        add              rsp, 16;                             jmp   n241_var_β
.Lx737_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n243_assign_var_α
n242_binop_β:           add              rsp, 16;                             jmp   n241_var_β
#-----------------------------------------------------------------------------------------------------------------------
n243_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]           # subscript
                        mov              rsi, qword ptr [rsp + 136]
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
                        cmp              eax, 104;                            jne   .Lx738_240
                        add              rsp, 16;                             jmp   n242_binop_β
.Lx738_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n244_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_end_α:   add              rsp, 176;                            jmp   n245_statement_begin_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n245_statement_begin_α:                                                       jmp   n246_lit_string_α
n245_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx743_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n247_call_α
.Lx743_0:               .quad            .Lx743_0_s
.Lx743_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n247_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd745:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd745]
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
                        cmp              eax, 104;                            jne   .Lx744_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n245_statement_begin_β
.Lx744_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n248_assign_α
n247_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n245_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n248_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ADD
                        mov              qword ptr [r9 + 72], rdx;            jmp   n249_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# ADD_x  <stmt 20, line 44: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n250_statement_begin_α:                                                       jmp   n251_statement_end_α
n250_statement_begin_β:                                                       jmp   n252_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n251_statement_end_α:                                                         jmp   n252_statement_begin_α
#=======================================================================================================================
#         DEFINE('SUB()p1')                       :(SUB_x)
#-----------------------------------------------------------------------------------------------------------------------
n252_statement_begin_α:                                                       jmp   n253_define_α
n252_statement_begin_β:                                                       jmp   n287_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n253_define_α:          mov              rdi, qword ptr [rip + .Lx756_0]
                        mov              rsi, qword ptr [rip + .Lx756_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n255_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n254_statement_end_α
n253_define_β:                                                                jmp   n252_statement_begin_β
.Lx756_0:               .quad            .Lx756_0_s
.Lx756_0_s:             .string          "SUB"
.Lx756_1:               .quad            .Lx756_1_s
.Lx756_1_s:             .string          "p1"
                                                                              jmp   .Lx757_245
#-----------------------------------------------------------------------------------------------------------------------
SUB_α:                  sub              rsp, 64
                        mov              rax, qword ptr [r9 + 96]             # SUB
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 96], 0
                        mov              qword ptr [r9 + 104], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx757_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx757_41
.Lx757_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx757_41:              lea              r10, [rip + SUB_γ]
                        lea              r11, [rip + SUB_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n255_statement_begin_α]; jmp   rax
SUB_γ:                  mov              rdi, qword ptr [r9 + 96]             # SUB
                        mov              rsi, qword ptr [r9 + 104]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        cmp              rdx, 0;                              jbe   .Lx757_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx757_110
.Lx757_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx757_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
SUB_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax             # SUB
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        cmp              rdx, 0;                              jbe   .Lx757_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx757_180
.Lx757_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx757_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx757_245:
#-----------------------------------------------------------------------------------------------------------------------
n254_statement_end_α:                                                         jmp   n287_statement_begin_α
#=======================================================================================================================
# SUB     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n255_statement_begin_α:                                                       jmp   n256_var_α
n255_statement_begin_β:                                                       jmp   n263_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n257_var_α
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n258_subscript_α
n257_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n255_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n258_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx764_240
                        add              rsp, 16;                             jmp   n257_var_β
.Lx764_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n259_deref_α
n258_subscript_β:       add              rsp, 16;                             jmp   n257_var_β
#-----------------------------------------------------------------------------------------------------------------------
n259_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx765_240
                        add              rsp, 16;                             jmp   n258_subscript_β
.Lx765_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n260_call_α
n259_deref_β:           add              rsp, 16;                             jmp   n258_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n260_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig767z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig767z:              .quad            1
                        .quad            .Lx767_2
                        .quad            .Lx767_2
                        .quad            16
.Lx767_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx767_29
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
.Lx767_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx767_240
                        add              rsp, 16;                             jmp   n259_deref_β
.Lx767_240:                                                                   jmp   n261_assign_α
n260_call_β:                                                                  jmp   n259_deref_β
.Lx767_0:               .quad            .Lx767_0_s
.Lx767_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n261_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n262_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n262_statement_end_α:   add              rsp, 80;                             jmp   n263_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n263_statement_begin_α:                                                       jmp   n264_var_α
n263_statement_begin_β:                                                       jmp   n269_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n264_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n265_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx774_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n266_binop_α
n265_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n263_statement_begin_β
.Lx774_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n266_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx775_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx775_7
.Lx775_2:               and              edx, 1;                              jz    .Lx775_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx775_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx775_4
.Lx775_3:               movq             xmm0, rsi
.Lx775_4:               cmp              ecx, 5;                              je    .Lx775_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx775_6
.Lx775_5:               movq             xmm1, rdi
.Lx775_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx775_7:                                                                     jmp   n267_assign_α
.Lx775_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx775_240
                        add              rsp, 16;                             jmp   n265_lit_integer_β
.Lx775_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n267_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n267_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n268_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n268_statement_end_α:   add              rsp, 48;                             jmp   n269_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n269_statement_begin_α:                                                       jmp   n270_var_α
n269_statement_begin_β:                                                       jmp   n282_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n270_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n271_var_α
#-----------------------------------------------------------------------------------------------------------------------
n271_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n272_subscript_α
n271_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n269_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n272_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx783_240
                        add              rsp, 16;                             jmp   n271_var_β
.Lx783_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n273_var_α
n272_subscript_β:       add              rsp, 16;                             jmp   n271_var_β
#-----------------------------------------------------------------------------------------------------------------------
n273_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n274_var_α
n273_var_β:             add              rsp, 16;                             jmp   n272_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n274_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n275_subscript_α
n274_var_β:             add              rsp, 16;                             jmp   n273_var_β
#-----------------------------------------------------------------------------------------------------------------------
n275_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx786_240
                        add              rsp, 16;                             jmp   n274_var_β
.Lx786_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n276_deref_α
n275_subscript_β:       add              rsp, 16;                             jmp   n274_var_β
#-----------------------------------------------------------------------------------------------------------------------
n276_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx787_240
                        add              rsp, 16;                             jmp   n275_subscript_β
.Lx787_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n277_call_α
n276_deref_β:           add              rsp, 16;                             jmp   n275_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n277_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig789z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig789z:              .quad            1
                        .quad            .Lx789_2
                        .quad            .Lx789_2
                        .quad            16
.Lx789_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx789_29
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
.Lx789_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx789_240
                        add              rsp, 16;                             jmp   n276_deref_β
.Lx789_240:                                                                   jmp   n278_var_α
n277_call_β:                                                                  jmp   n276_deref_β
.Lx789_0:               .quad            .Lx789_0_s
.Lx789_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n278_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n279_binop_α
n278_var_β:             add              rsp, 32;                             jmp   n276_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n279_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx791_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx791_7
.Lx791_2:               and              edx, 1;                              jz    .Lx791_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx791_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx791_4
.Lx791_3:               movq             xmm0, rsi
.Lx791_4:               cmp              ecx, 5;                              je    .Lx791_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx791_6
.Lx791_5:               movq             xmm1, rdi
.Lx791_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx791_7:                                                                     jmp   n280_assign_var_α
.Lx791_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx791_240
                        add              rsp, 16;                             jmp   n278_var_β
.Lx791_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n280_assign_var_α
n279_binop_β:           add              rsp, 16;                             jmp   n278_var_β
#-----------------------------------------------------------------------------------------------------------------------
n280_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]           # subscript
                        mov              rsi, qword ptr [rsp + 136]
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
                        cmp              eax, 104;                            jne   .Lx792_240
                        add              rsp, 16;                             jmp   n279_binop_β
.Lx792_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n281_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n281_statement_end_α:   add              rsp, 176;                            jmp   n282_statement_begin_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n282_statement_begin_α:                                                       jmp   n283_lit_string_α
n282_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx797_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n284_call_α
.Lx797_0:               .quad            .Lx797_0_s
.Lx797_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n284_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd799:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd799]
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
                        cmp              eax, 104;                            jne   .Lx798_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n282_statement_begin_β
.Lx798_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n285_assign_α
n284_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n282_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n285_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # SUB
                        mov              qword ptr [r9 + 104], rdx;           jmp   n286_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n286_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# SUB_x  <stmt 26, line 50: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n287_statement_begin_α:                                                       jmp   n288_statement_end_α
n287_statement_begin_β:                                                       jmp   n289_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n288_statement_end_α:                                                         jmp   n289_statement_begin_α
#=======================================================================================================================
#         DEFINE('MUL()p1')                       :(MUL_x)
#-----------------------------------------------------------------------------------------------------------------------
n289_statement_begin_α:                                                       jmp   n290_define_α
n289_statement_begin_β:                                                       jmp   n324_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n290_define_α:          mov              rdi, qword ptr [rip + .Lx810_0]
                        mov              rsi, qword ptr [rip + .Lx810_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n292_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n291_statement_end_α
n290_define_β:                                                                jmp   n289_statement_begin_β
.Lx810_0:               .quad            .Lx810_0_s
.Lx810_0_s:             .string          "MUL"
.Lx810_1:               .quad            .Lx810_1_s
.Lx810_1_s:             .string          "p1"
                                                                              jmp   .Lx811_245
#-----------------------------------------------------------------------------------------------------------------------
MUL_α:                  sub              rsp, 64
                        mov              rax, qword ptr [r9 + 112]            # MUL
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 112], 0
                        mov              qword ptr [r9 + 120], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx811_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx811_41
.Lx811_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx811_41:              lea              r10, [rip + MUL_γ]
                        lea              r11, [rip + MUL_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n292_statement_begin_α]; jmp   rax
MUL_γ:                  mov              rdi, qword ptr [r9 + 112]            # MUL
                        mov              rsi, qword ptr [r9 + 120]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
                        cmp              rdx, 0;                              jbe   .Lx811_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx811_110
.Lx811_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx811_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
MUL_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax            # MUL
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
                        cmp              rdx, 0;                              jbe   .Lx811_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx811_180
.Lx811_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx811_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx811_245:
#-----------------------------------------------------------------------------------------------------------------------
n291_statement_end_α:                                                         jmp   n324_statement_begin_α
#=======================================================================================================================
# MUL     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n292_statement_begin_α:                                                       jmp   n293_var_α
n292_statement_begin_β:                                                       jmp   n300_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n293_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n294_var_α
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_subscript_α
n294_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n292_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n295_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx818_240
                        add              rsp, 16;                             jmp   n294_var_β
.Lx818_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n296_deref_α
n295_subscript_β:       add              rsp, 16;                             jmp   n294_var_β
#-----------------------------------------------------------------------------------------------------------------------
n296_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx819_240
                        add              rsp, 16;                             jmp   n295_subscript_β
.Lx819_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n297_call_α
n296_deref_β:           add              rsp, 16;                             jmp   n295_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n297_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig821z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig821z:              .quad            1
                        .quad            .Lx821_2
                        .quad            .Lx821_2
                        .quad            16
.Lx821_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx821_29
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
.Lx821_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx821_240
                        add              rsp, 16;                             jmp   n296_deref_β
.Lx821_240:                                                                   jmp   n298_assign_α
n297_call_β:                                                                  jmp   n296_deref_β
.Lx821_0:               .quad            .Lx821_0_s
.Lx821_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n298_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n299_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n299_statement_end_α:   add              rsp, 80;                             jmp   n300_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n300_statement_begin_α:                                                       jmp   n301_var_α
n300_statement_begin_β:                                                       jmp   n306_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n302_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx828_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n303_binop_α
n302_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n300_statement_begin_β
.Lx828_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n303_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx829_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx829_7
.Lx829_2:               and              edx, 1;                              jz    .Lx829_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx829_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx829_4
.Lx829_3:               movq             xmm0, rsi
.Lx829_4:               cmp              ecx, 5;                              je    .Lx829_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx829_6
.Lx829_5:               movq             xmm1, rdi
.Lx829_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx829_7:                                                                     jmp   n304_assign_α
.Lx829_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx829_240
                        add              rsp, 16;                             jmp   n302_lit_integer_β
.Lx829_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n304_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n304_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n305_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n305_statement_end_α:   add              rsp, 48;                             jmp   n306_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n306_statement_begin_α:                                                       jmp   n307_var_α
n306_statement_begin_β:                                                       jmp   n319_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n307_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n308_var_α
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n309_subscript_α
n308_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n306_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n309_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx837_240
                        add              rsp, 16;                             jmp   n308_var_β
.Lx837_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n310_var_α
n309_subscript_β:       add              rsp, 16;                             jmp   n308_var_β
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n311_var_α
n310_var_β:             add              rsp, 16;                             jmp   n309_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n311_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n312_subscript_α
n311_var_β:             add              rsp, 16;                             jmp   n310_var_β
#-----------------------------------------------------------------------------------------------------------------------
n312_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx840_240
                        add              rsp, 16;                             jmp   n311_var_β
.Lx840_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n313_deref_α
n312_subscript_β:       add              rsp, 16;                             jmp   n311_var_β
#-----------------------------------------------------------------------------------------------------------------------
n313_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx841_240
                        add              rsp, 16;                             jmp   n312_subscript_β
.Lx841_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n314_call_α
n313_deref_β:           add              rsp, 16;                             jmp   n312_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n314_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig843z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig843z:              .quad            1
                        .quad            .Lx843_2
                        .quad            .Lx843_2
                        .quad            16
.Lx843_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx843_29
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
.Lx843_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx843_240
                        add              rsp, 16;                             jmp   n313_deref_β
.Lx843_240:                                                                   jmp   n315_var_α
n314_call_β:                                                                  jmp   n313_deref_β
.Lx843_0:               .quad            .Lx843_0_s
.Lx843_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n315_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n316_binop_α
n315_var_β:             add              rsp, 32;                             jmp   n313_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n316_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx845_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx845_7
.Lx845_2:               and              edx, 1;                              jz    .Lx845_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx845_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx845_4
.Lx845_3:               movq             xmm0, rsi
.Lx845_4:               cmp              ecx, 5;                              je    .Lx845_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx845_6
.Lx845_5:               movq             xmm1, rdi
.Lx845_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx845_7:                                                                     jmp   n317_assign_var_α
.Lx845_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx845_240
                        add              rsp, 16;                             jmp   n315_var_β
.Lx845_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n317_assign_var_α
n316_binop_β:           add              rsp, 16;                             jmp   n315_var_β
#-----------------------------------------------------------------------------------------------------------------------
n317_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]           # subscript
                        mov              rsi, qword ptr [rsp + 136]
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
                        cmp              eax, 104;                            jne   .Lx846_240
                        add              rsp, 16;                             jmp   n316_binop_β
.Lx846_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n318_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n318_statement_end_α:   add              rsp, 176;                            jmp   n319_statement_begin_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n319_statement_begin_α:                                                       jmp   n320_lit_string_α
n319_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx851_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n321_call_α
.Lx851_0:               .quad            .Lx851_0_s
.Lx851_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n321_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd853:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd853]
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
                        cmp              eax, 104;                            jne   .Lx852_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n319_statement_begin_β
.Lx852_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n322_assign_α
n321_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n319_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n322_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # MUL
                        mov              qword ptr [r9 + 120], rdx;           jmp   n323_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n323_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# MUL_x  <stmt 32, line 56: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n324_statement_begin_α:                                                       jmp   n325_statement_end_α
n324_statement_begin_β:                                                       jmp   n326_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n325_statement_end_α:                                                         jmp   n326_statement_begin_α
#=======================================================================================================================
#         DEFINE('DIV()p1')                       :(DIV_x)
#-----------------------------------------------------------------------------------------------------------------------
n326_statement_begin_α:                                                       jmp   n327_define_α
n326_statement_begin_β:                                                       jmp   n361_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n327_define_α:          mov              rdi, qword ptr [rip + .Lx864_0]
                        mov              rsi, qword ptr [rip + .Lx864_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n329_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n328_statement_end_α
n327_define_β:                                                                jmp   n326_statement_begin_β
.Lx864_0:               .quad            .Lx864_0_s
.Lx864_0_s:             .string          "DIV"
.Lx864_1:               .quad            .Lx864_1_s
.Lx864_1_s:             .string          "p1"
                                                                              jmp   .Lx865_245
#-----------------------------------------------------------------------------------------------------------------------
DIV_α:                  sub              rsp, 64
                        mov              rax, qword ptr [r9 + 128]            # DIV
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 128], 0
                        mov              qword ptr [r9 + 136], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx865_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx865_41
.Lx865_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx865_41:              lea              r10, [rip + DIV_γ]
                        lea              r11, [rip + DIV_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n329_statement_begin_α]; jmp   rax
DIV_γ:                  mov              rdi, qword ptr [r9 + 128]            # DIV
                        mov              rsi, qword ptr [r9 + 136]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rdx, 0;                              jbe   .Lx865_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx865_110
.Lx865_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx865_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
DIV_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax            # DIV
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rdx, 0;                              jbe   .Lx865_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx865_180
.Lx865_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx865_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx865_245:
#-----------------------------------------------------------------------------------------------------------------------
n328_statement_end_α:                                                         jmp   n361_statement_begin_α
#=======================================================================================================================
# DIV     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n329_statement_begin_α:                                                       jmp   n330_var_α
n329_statement_begin_β:                                                       jmp   n337_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n331_var_α
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n332_subscript_α
n331_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n329_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n332_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx872_240
                        add              rsp, 16;                             jmp   n331_var_β
.Lx872_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n333_deref_α
n332_subscript_β:       add              rsp, 16;                             jmp   n331_var_β
#-----------------------------------------------------------------------------------------------------------------------
n333_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx873_240
                        add              rsp, 16;                             jmp   n332_subscript_β
.Lx873_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n334_call_α
n333_deref_β:           add              rsp, 16;                             jmp   n332_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n334_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig875z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig875z:              .quad            1
                        .quad            .Lx875_2
                        .quad            .Lx875_2
                        .quad            16
.Lx875_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx875_29
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
.Lx875_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx875_240
                        add              rsp, 16;                             jmp   n333_deref_β
.Lx875_240:                                                                   jmp   n335_assign_α
n334_call_β:                                                                  jmp   n333_deref_β
.Lx875_0:               .quad            .Lx875_0_s
.Lx875_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n335_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n336_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n336_statement_end_α:   add              rsp, 80;                             jmp   n337_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n337_statement_begin_α:                                                       jmp   n338_var_α
n337_statement_begin_β:                                                       jmp   n343_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n338_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n339_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx882_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n340_binop_α
n339_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n337_statement_begin_β
.Lx882_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n340_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx883_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx883_7
.Lx883_2:               and              edx, 1;                              jz    .Lx883_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx883_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx883_4
.Lx883_3:               movq             xmm0, rsi
.Lx883_4:               cmp              ecx, 5;                              je    .Lx883_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx883_6
.Lx883_5:               movq             xmm1, rdi
.Lx883_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx883_7:                                                                     jmp   n341_assign_α
.Lx883_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx883_240
                        add              rsp, 16;                             jmp   n339_lit_integer_β
.Lx883_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n341_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n341_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n342_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n342_statement_end_α:   add              rsp, 48;                             jmp   n343_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n343_statement_begin_α:                                                       jmp   n344_var_α
n343_statement_begin_β:                                                       jmp   n356_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n345_var_α
#-----------------------------------------------------------------------------------------------------------------------
n345_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n346_subscript_α
n345_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n343_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n346_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx891_240
                        add              rsp, 16;                             jmp   n345_var_β
.Lx891_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n347_var_α
n346_subscript_β:       add              rsp, 16;                             jmp   n345_var_β
#-----------------------------------------------------------------------------------------------------------------------
n347_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n348_var_α
n347_var_β:             add              rsp, 16;                             jmp   n346_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n348_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n349_subscript_α
n348_var_β:             add              rsp, 16;                             jmp   n347_var_β
#-----------------------------------------------------------------------------------------------------------------------
n349_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx894_240
                        add              rsp, 16;                             jmp   n348_var_β
.Lx894_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n350_deref_α
n349_subscript_β:       add              rsp, 16;                             jmp   n348_var_β
#-----------------------------------------------------------------------------------------------------------------------
n350_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx895_240
                        add              rsp, 16;                             jmp   n349_subscript_β
.Lx895_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n351_call_α
n350_deref_β:           add              rsp, 16;                             jmp   n349_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n351_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig897z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig897z:              .quad            1
                        .quad            .Lx897_2
                        .quad            .Lx897_2
                        .quad            16
.Lx897_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx897_29
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
.Lx897_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx897_240
                        add              rsp, 16;                             jmp   n350_deref_β
.Lx897_240:                                                                   jmp   n352_var_α
n351_call_β:                                                                  jmp   n350_deref_β
.Lx897_0:               .quad            .Lx897_0_s
.Lx897_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n352_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n353_binop_α
n352_var_β:             add              rsp, 32;                             jmp   n350_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n353_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              eax, 104;                            jne   .Lx899_240
                        add              rsp, 16;                             jmp   n352_var_β
.Lx899_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n354_assign_var_α
n353_binop_β:           add              rsp, 16;                             jmp   n352_var_β
#-----------------------------------------------------------------------------------------------------------------------
n354_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]           # subscript
                        mov              rsi, qword ptr [rsp + 136]
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
                        cmp              eax, 104;                            jne   .Lx900_240
                        add              rsp, 16;                             jmp   n353_binop_β
.Lx900_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n355_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n355_statement_end_α:   add              rsp, 176;                            jmp   n356_statement_begin_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n356_statement_begin_α:                                                       jmp   n357_lit_string_α
n356_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx905_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n358_call_α
.Lx905_0:               .quad            .Lx905_0_s
.Lx905_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n358_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd907:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd907]
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
                        cmp              eax, 104;                            jne   .Lx906_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n356_statement_begin_β
.Lx906_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n359_assign_α
n358_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n356_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n359_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # DIV
                        mov              qword ptr [r9 + 136], rdx;           jmp   n360_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n360_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# DIV_x  <stmt 38, line 62: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n361_statement_begin_α:                                                       jmp   n362_statement_end_α
n361_statement_begin_β:                                                       jmp   n363_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n362_statement_end_α:                                                         jmp   n363_statement_begin_α
#=======================================================================================================================
#         DEFINE('NEG()')                         :(NEG_x)
#-----------------------------------------------------------------------------------------------------------------------
n363_statement_begin_α:                                                       jmp   n364_define_α
n363_statement_begin_β:                                                       jmp   n383_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n364_define_α:          mov              rdi, qword ptr [rip + .Lx918_0]
                        mov              rsi, qword ptr [rip + .Lx918_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n366_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n365_statement_end_α
n364_define_β:                                                                jmp   n363_statement_begin_β
.Lx918_0:               .quad            .Lx918_0_s
.Lx918_0_s:             .string          "NEG"
.Lx918_1:               .quad            .Lx918_1_s
.Lx918_1_s:             .string          ""
                                                                              jmp   .Lx919_245
#-----------------------------------------------------------------------------------------------------------------------
NEG_α:                  sub              rsp, 48
                        mov              rax, qword ptr [r9 + 144]            # NEG
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 144], 0
                        mov              qword ptr [r9 + 152], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              r10, [rip + NEG_γ]
                        lea              r11, [rip + NEG_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n366_statement_begin_α]; jmp   rax
NEG_γ:                  mov              rdi, qword ptr [r9 + 144]
                        mov              rsi, qword ptr [r9 + 152]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 152], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
NEG_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 152], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx919_245:
#-----------------------------------------------------------------------------------------------------------------------
n365_statement_end_α:                                                         jmp   n383_statement_begin_α
#=======================================================================================================================
# NEG     S[sp] = -DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n366_statement_begin_α:                                                       jmp   n367_var_α
n366_statement_begin_β:                                                       jmp   n378_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n368_var_α
#-----------------------------------------------------------------------------------------------------------------------
n368_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n369_subscript_α
n368_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n366_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n369_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx926_240
                        add              rsp, 16;                             jmp   n368_var_β
.Lx926_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n370_var_α
n369_subscript_β:       add              rsp, 16;                             jmp   n368_var_β
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n371_var_α
n370_var_β:             add              rsp, 16;                             jmp   n369_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n371_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n372_subscript_α
n371_var_β:             add              rsp, 16;                             jmp   n370_var_β
#-----------------------------------------------------------------------------------------------------------------------
n372_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx929_240
                        add              rsp, 16;                             jmp   n371_var_β
.Lx929_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n373_deref_α
n372_subscript_β:       add              rsp, 16;                             jmp   n371_var_β
#-----------------------------------------------------------------------------------------------------------------------
n373_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx930_240
                        add              rsp, 16;                             jmp   n372_subscript_β
.Lx930_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n374_call_α
n373_deref_β:           add              rsp, 16;                             jmp   n372_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n374_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig932z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig932z:              .quad            1
                        .quad            .Lx932_2
                        .quad            .Lx932_2
                        .quad            16
.Lx932_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx932_29
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
.Lx932_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx932_240
                        add              rsp, 16;                             jmp   n373_deref_β
.Lx932_240:                                                                   jmp   n375_unop_α
n374_call_β:                                                                  jmp   n373_deref_β
.Lx932_0:               .quad            .Lx932_0_s
.Lx932_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n375_unop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # call
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n376_assign_var_α
n375_unop_β:            add              rsp, 32;                             jmp   n373_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n376_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 112]           # subscript
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 16]            # unop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx934_240
                        add              rsp, 16;                             jmp   n375_unop_β
.Lx934_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n377_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n377_statement_end_α:   add              rsp, 160;                            jmp   n378_statement_begin_α
#=======================================================================================================================
#         NEG = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n378_statement_begin_α:                                                       jmp   n379_lit_string_α
n378_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx939_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n380_call_α
.Lx939_0:               .quad            .Lx939_0_s
.Lx939_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n380_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd941:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd941]
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
                        cmp              eax, 104;                            jne   .Lx940_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n378_statement_begin_β
.Lx940_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n381_assign_α
n380_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n378_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n381_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # NEG
                        mov              qword ptr [r9 + 152], rdx;           jmp   n382_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n382_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# NEG_x  <stmt 42, line 66: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n383_statement_begin_α:                                                       jmp   n384_statement_end_α
n383_statement_begin_β:                                                       jmp   n385_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n384_statement_end_α:                                                         jmp   n385_statement_begin_α
#=======================================================================================================================
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
n385_statement_begin_α:                                                       jmp   n386_lit_integer_α
n385_statement_begin_β:                                                       jmp   n390_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx951_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n387_call_α
.Lx951_0:               .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n387_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd953:            .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd953]
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
                        cmp              eax, 104;                            jne   .Lx952_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n385_statement_begin_β
.Lx952_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n388_assign_α
n387_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n385_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n388_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # S
                        mov              qword ptr [r9 + 168], rdx;           jmp   n389_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n389_statement_end_α:   add              rsp, 32;                             jmp   n390_statement_begin_α
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
n390_statement_begin_α:                                                       jmp   n391_keyword_snobol4_α
n390_statement_begin_β:                                                       jmp   n394_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n391_keyword_snobol4_α: sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx959_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n392_assign_α
.Lx959_0:               .quad            .Lx959_0_s
.Lx959_0_s:             .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n392_assign_α:          mov              rax, qword ptr [rsp + 0]             # keyword_snobol4
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # LCASE
                        mov              qword ptr [r9 + 232], rdx;           jmp   n393_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n393_statement_end_α:   add              rsp, 16;                             jmp   n394_statement_begin_α
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n394_statement_begin_α:                                                       jmp   n395_lit_string_α
n394_statement_begin_β:                                                       jmp   n398_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx965_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n396_assign_α
.Lx965_0:               .quad            .Lx965_0_s
.Lx965_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n396_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # DIGITS
                        mov              qword ptr [r9 + 248], rdx;           jmp   n397_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n397_statement_end_α:   add              rsp, 16;                             jmp   n398_statement_begin_α
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n398_statement_begin_α:                                                       jmp   n399_lit_string_α
n398_statement_begin_β:                                                       jmp   n403_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx971_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n400_call_α
.Lx971_0:               .quad            .Lx971_0_s
.Lx971_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n400_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd973:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd973]
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
                        cmp              eax, 104;                            jne   .Lx972_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n398_statement_begin_β
.Lx972_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n401_assign_α
n400_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n398_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n401_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # V
                        mov              qword ptr [r9 + 264], rdx;           jmp   n402_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n402_statement_end_α:   add              rsp, 32;                             jmp   n403_statement_begin_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n403_statement_begin_α:                                                       jmp   n404_lit_string_α
n403_statement_begin_β:                                                       jmp   n408_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx979_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n405_call_α
.Lx979_0:               .quad            .Lx979_0_s
.Lx979_0_s:             .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n405_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd981:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd981]
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
                        cmp              eax, 104;                            jne   .Lx980_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n403_statement_begin_β
.Lx980_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n406_assign_α
n405_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n403_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n406_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # I
                        mov              qword ptr [r9 + 280], rdx;           jmp   n407_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n407_statement_end_α:   add              rsp, 32;                             jmp   n408_statement_begin_α
#=======================================================================================================================
#         A = V | I | FENCE('(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n408_statement_begin_α:                                                       jmp   n409_var_α
n408_statement_begin_β:                                                       jmp   n418_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n409_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # I
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n410_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n410_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 528], rax            # PAT$2$V1
                        mov              qword ptr [r9 + 536], rdx;           jmp   n411_var_α
#-----------------------------------------------------------------------------------------------------------------------
n411_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # V
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n412_assign_α
n411_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n408_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n412_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 512], rax            # PAT$2$V0
                        mov              qword ptr [r9 + 520], rdx;           jmp   n413_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx991_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n414_lit_string_α
n413_lit_string_β:      add              rsp, 16;                             jmp   n411_var_β
.Lx991_0:               .quad            .Lx991_0_s
.Lx991_0_s:             .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx992_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n415_call_α
n414_lit_string_β:      add              rsp, 16;                             jmp   n413_lit_string_β
.Lx992_0:               .quad            .Lx992_0_s
.Lx992_0_s:             .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n415_call_α:            sub              rsp, 16
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
.Lrkfnzd994:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd994]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx993_240
                        add              rsp, 16;                             jmp   n414_lit_string_β
.Lx993_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n416_assign_α
n415_call_β:            add              rsp, 16;                             jmp   n414_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n416_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # A
                        mov              qword ptr [r9 + 296], rdx;           jmp   n417_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n417_statement_end_α:   add              rsp, 80;                             jmp   n418_statement_begin_α
#=======================================================================================================================
#         F = A | FENCE('+' *F) | FENCE('-' *F . *NEG())
#-----------------------------------------------------------------------------------------------------------------------
n418_statement_begin_α:                                                       jmp   n419_var_α
n418_statement_begin_β:                                                       jmp   n426_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n419_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 288]            # A
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n420_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n420_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 552], rdx;           jmp   n421_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n421_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1002_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n422_lit_string_α
n421_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n418_statement_begin_β
.Lx1002_0:              .quad            .Lx1002_0_s
.Lx1002_0_s:            .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1003_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n423_call_α
n422_lit_string_β:      add              rsp, 16;                             jmp   n421_lit_string_β
.Lx1003_0:              .quad            .Lx1003_0_s
.Lx1003_0_s:            .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n423_call_α:            sub              rsp, 16
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
.Lrkfnzd1005:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1005]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx1004_240
                        add              rsp, 16;                             jmp   n422_lit_string_β
.Lx1004_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n424_assign_α
n423_call_β:            add              rsp, 16;                             jmp   n422_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n424_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # F
                        mov              qword ptr [r9 + 312], rdx;           jmp   n425_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n425_statement_end_α:   add              rsp, 64;                             jmp   n426_statement_begin_α
#=======================================================================================================================
#         T = F ( FENCE('*' *T . *MUL()) | FENCE('/' *T . *DIV()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
n426_statement_begin_α:                                                       jmp   n427_var_α
n426_statement_begin_β:                                                       jmp   n434_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n427_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n428_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n428_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 568], rdx;           jmp   n429_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1013_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n430_lit_string_α
n429_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n426_statement_begin_β
.Lx1013_0:              .quad            .Lx1013_0_s
.Lx1013_0_s:            .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n430_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1014_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n431_call_α
n430_lit_string_β:      add              rsp, 16;                             jmp   n429_lit_string_β
.Lx1014_0:              .quad            .Lx1014_0_s
.Lx1014_0_s:            .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n431_call_α:            sub              rsp, 16
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
.Lrkfnzd1016:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1016]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx1015_240
                        add              rsp, 16;                             jmp   n430_lit_string_β
.Lx1015_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n432_assign_α
n431_call_β:            add              rsp, 16;                             jmp   n430_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n432_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # T
                        mov              qword ptr [r9 + 328], rdx;           jmp   n433_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n433_statement_end_α:   add              rsp, 64;                             jmp   n434_statement_begin_α
#=======================================================================================================================
#         X = T ( FENCE('+' *X . *ADD()) | FENCE('-' *X . *SUB()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
n434_statement_begin_α:                                                       jmp   n435_var_α
n434_statement_begin_β:                                                       jmp   n442_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n435_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n436_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n436_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 576], rax            # PAT$5$V0
                        mov              qword ptr [r9 + 584], rdx;           jmp   n437_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1024_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n438_lit_string_α
n437_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n434_statement_begin_β
.Lx1024_0:              .quad            .Lx1024_0_s
.Lx1024_0_s:            .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1025_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n439_call_α
n438_lit_string_β:      add              rsp, 16;                             jmp   n437_lit_string_β
.Lx1025_0:              .quad            .Lx1025_0_s
.Lx1025_0_s:            .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n439_call_α:            sub              rsp, 16
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
.Lrkfnzd1027:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1027]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx1026_240
                        add              rsp, 16;                             jmp   n438_lit_string_β
.Lx1026_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n440_assign_α
n439_call_β:            add              rsp, 16;                             jmp   n438_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n440_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # X
                        mov              qword ptr [r9 + 344], rdx;           jmp   n441_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n441_statement_end_α:   add              rsp, 64;                             jmp   n442_statement_begin_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n442_statement_begin_α:                                                       jmp   n443_lit_integer_α
n442_statement_begin_β:                                                       jmp   n451_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n443_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1033_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n444_call_α
.Lx1033_0:              .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n444_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd352:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd352]
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
                        cmp              eax, 104;                            jne   .Lx1034_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n442_statement_begin_β
.Lx1034_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n445_assign_α
n444_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n442_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n445_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax            # PAT$6$V0
                        mov              qword ptr [r9 + 600], rdx;           jmp   n446_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n446_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1036_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n447_lit_string_α
n446_lit_string_β:      add              rsp, 16
                        add              rsp, 32;                             jmp   n442_statement_begin_β
.Lx1036_0:              .quad            .Lx1036_0_s
.Lx1036_0_s:            .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n447_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1037_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n448_call_α
n447_lit_string_β:      add              rsp, 16;                             jmp   n446_lit_string_β
.Lx1037_0:              .quad            .Lx1037_0_s
.Lx1037_0_s:            .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n448_call_α:            sub              rsp, 16
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
.Lrkfnzd1039:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1039]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx1038_240
                        add              rsp, 16;                             jmp   n447_lit_string_β
.Lx1038_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n449_assign_α
n448_call_β:            add              rsp, 16;                             jmp   n447_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n449_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # eol
                        mov              qword ptr [r9 + 360], rdx;           jmp   n450_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n450_statement_end_α:   add              rsp, 80;                             jmp   n451_statement_begin_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n451_statement_begin_α:                                                       jmp   n452_var_α
n451_statement_begin_β:                                                       jmp   n463_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n452_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]            # epsilon
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n453_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n453_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 640], rax            # PAT$7$V2
                        mov              qword ptr [r9 + 648], rdx;           jmp   n454_var_α
#-----------------------------------------------------------------------------------------------------------------------
n454_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # eol
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n455_assign_α
n454_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n451_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n455_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # PAT$7$V1
                        mov              qword ptr [r9 + 632], rdx;           jmp   n456_var_α
#-----------------------------------------------------------------------------------------------------------------------
n456_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 336]            # X
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n457_assign_α
n456_var_β:             add              rsp, 16;                             jmp   n454_var_β
#-----------------------------------------------------------------------------------------------------------------------
n457_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax            # PAT$7$V0
                        mov              qword ptr [r9 + 616], rdx;           jmp   n458_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1051_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n459_lit_string_α
n458_lit_string_β:      add              rsp, 16;                             jmp   n456_var_β
.Lx1051_0:              .quad            .Lx1051_0_s
.Lx1051_0_s:            .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1052_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n460_call_α
n459_lit_string_β:      add              rsp, 16;                             jmp   n458_lit_string_β
.Lx1052_0:              .quad            .Lx1052_0_s
.Lx1052_0_s:            .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n460_call_α:            sub              rsp, 16
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
.Lrkfnzd1054:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1054]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx1053_240
                        add              rsp, 16;                             jmp   n459_lit_string_β
.Lx1053_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n461_assign_α
n460_call_β:            add              rsp, 16;                             jmp   n459_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n461_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # C
                        mov              qword ptr [r9 + 376], rdx;           jmp   n462_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n462_statement_end_α:   add              rsp, 96;                             jmp   n463_statement_begin_α
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n463_statement_begin_α:                                                       jmp   n464_lit_string_α
n463_statement_begin_β:                                                       jmp   n468_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n464_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1060_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n465_lit_integer_α
.Lx1060_0:              .quad            .Lx1060_0_s
.Lx1060_0_s:            .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n465_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1061_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n466_call_α
n465_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n463_statement_begin_β
.Lx1061_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n466_call_α:            sub              rsp, 16
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
.Lrkfnzd1063:           .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1063]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx1062_240
                        add              rsp, 16;                             jmp   n465_lit_integer_β
.Lx1062_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n467_statement_end_α
n466_call_β:            add              rsp, 16;                             jmp   n465_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n467_statement_end_α:   add              rsp, 48;                             jmp   n468_statement_begin_α
#=======================================================================================================================
#         nl = CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n468_statement_begin_α:                                                       jmp   n469_lit_integer_α
n468_statement_begin_β:                                                       jmp   n473_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n469_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1068_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n470_call_α
.Lx1068_0:              .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n470_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd378:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd378]
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
                        cmp              eax, 104;                            jne   .Lx1069_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n468_statement_begin_β
.Lx1069_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n471_assign_α
n470_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n468_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n471_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # nl
                        mov              qword ptr [r9 + 408], rdx;           jmp   n472_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n472_statement_end_α:   add              rsp, 32;                             jmp   n473_statement_begin_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n473_statement_begin_α:                                                       jmp   n474_call_α
n473_statement_begin_β:                                                       jmp   n477_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n474_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1076:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1076]
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
                        cmp              eax, 104;                            jne   .Lx1075_240
                        add              rsp, 16;                             jmp   n473_statement_begin_β
.Lx1075_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n475_assign_α
n474_call_β:            add              rsp, 16;                             jmp   n473_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n475_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # vars
                        mov              qword ptr [r9 + 216], rdx;           jmp   n476_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n476_statement_end_α:   add              rsp, 16;                             jmp   n477_statement_begin_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n477_statement_begin_α:                                                       jmp   n478_var_α
n477_statement_begin_β:                                                       jmp   n484_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n478_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n479_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n479_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1083_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n480_subscript_α
n479_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n477_statement_begin_β
.Lx1083_0:              .quad            .Lx1083_0_s
.Lx1083_0_s:            .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n480_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1084_240
                        add              rsp, 16;                             jmp   n479_lit_string_β
.Lx1084_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n481_lit_integer_α
n480_subscript_β:       add              rsp, 16;                             jmp   n479_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n481_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1085_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n482_assign_var_α
n481_lit_integer_β:     add              rsp, 16;                             jmp   n480_subscript_β
.Lx1085_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n482_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1086_240
                        add              rsp, 16;                             jmp   n481_lit_integer_β
.Lx1086_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n483_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n483_statement_end_α:   add              rsp, 80;                             jmp   n484_statement_begin_α
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n484_statement_begin_α:                                                       jmp   n485_var_α
n484_statement_begin_β:                                                       jmp   n491_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n485_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n486_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n486_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1092_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n487_subscript_α
n486_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n484_statement_begin_β
.Lx1092_0:              .quad            .Lx1092_0_s
.Lx1092_0_s:            .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n487_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1093_240
                        add              rsp, 16;                             jmp   n486_lit_string_β
.Lx1093_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n488_lit_integer_α
n487_subscript_β:       add              rsp, 16;                             jmp   n486_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1094_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n489_assign_var_α
n488_lit_integer_β:     add              rsp, 16;                             jmp   n487_subscript_β
.Lx1094_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n489_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1095_240
                        add              rsp, 16;                             jmp   n488_lit_integer_β
.Lx1095_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n490_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n490_statement_end_α:   add              rsp, 80;                             jmp   n491_statement_begin_α
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n491_statement_begin_α:                                                       jmp   n492_var_α
n491_statement_begin_β:                                                       jmp   n498_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n492_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n493_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n493_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1101_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n494_subscript_α
n493_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n491_statement_begin_β
.Lx1101_0:              .quad            .Lx1101_0_s
.Lx1101_0_s:            .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n494_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1102_240
                        add              rsp, 16;                             jmp   n493_lit_string_β
.Lx1102_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n495_lit_integer_α
n494_subscript_β:       add              rsp, 16;                             jmp   n493_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1103_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n496_assign_var_α
n495_lit_integer_β:     add              rsp, 16;                             jmp   n494_subscript_β
.Lx1103_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n496_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1104_240
                        add              rsp, 16;                             jmp   n495_lit_integer_β
.Lx1104_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n497_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n497_statement_end_α:   add              rsp, 80;                             jmp   n498_statement_begin_α
#=======================================================================================================================
# slurp   line = INPUT                            :F(slurp_f)
#-----------------------------------------------------------------------------------------------------------------------
n498_statement_begin_α:                                                       jmp   n499_var_α
n498_statement_begin_β:                                                       jmp   n546_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n499_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1109_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1109_240
                        add              rsp, 16;                             jmp   n498_statement_begin_β
.Lx1109_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n500_assign_α
.Lx1109_0:              .quad            .Lx1109_0_s
.Lx1109_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n500_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax            # line
                        mov              qword ptr [r9 + 424], rdx;           jmp   n501_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n501_statement_end_α:   add              rsp, 16;                             jmp   n502_statement_begin_α
#=======================================================================================================================
#         b1 = b1 line nl
#-----------------------------------------------------------------------------------------------------------------------
n502_statement_begin_α:                                                       jmp   n503_var_α
n502_statement_begin_β:                                                       jmp   n510_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n503_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]            # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n504_var_α
#-----------------------------------------------------------------------------------------------------------------------
n504_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 416]            # line
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n505_binop_α
n504_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n502_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n505_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n506_var_α
n505_binop_β:           add              rsp, 16;                             jmp   n504_var_β
#-----------------------------------------------------------------------------------------------------------------------
n506_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # nl
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n507_binop_α
n506_var_β:             add              rsp, 16;                             jmp   n505_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n507_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n508_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n508_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # b1
                        mov              qword ptr [r9 + 440], rdx;           jmp   n509_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n509_statement_end_α:   add              rsp, 80;                             jmp   n510_statement_begin_α
#=======================================================================================================================
#         GT(SIZE(b1), 8192)                      :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n510_statement_begin_α:                                                       jmp   n511_var_α
n510_statement_begin_β:                                                       jmp   n498_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n511_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]            # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n512_call_α
#-----------------------------------------------------------------------------------------------------------------------
n512_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1127:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1127]
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
                        cmp              eax, 104;                            jne   .Lx1126_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n510_statement_begin_β
.Lx1126_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n513_lit_integer_α
n512_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n510_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n513_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1128_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n514_coerce_numeric_α
n513_lit_integer_β:     add              rsp, 16
                        add              rsp, 32;                             jmp   n510_statement_begin_β
.Lx1128_0:              .quad            8192
#-----------------------------------------------------------------------------------------------------------------------
n514_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx1130_1
                        cmp              eax, 3;                              jne   .Lx1130_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx1130_0
.Lx1130_1:              mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n515_coerce_numeric_α
.Lx1130_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n515_coerce_numeric_α
n514_coerce_numeric_β:  add              rsp, 16;                             jmp   n513_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n515_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1132_1
                        cmp              eax, 3;                              jne   .Lx1132_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx1132_0
.Lx1132_1:              mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n516_cmp_test_α
.Lx1132_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n516_cmp_test_α
n515_coerce_numeric_β:  add              rsp, 16;                             jmp   n514_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n516_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jg    .Lx1134_240
                        add              rsp, 16;                             jmp   n515_coerce_numeric_β
.Lx1134_240:                                                                  jmp   n517_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n517_statement_end_α:   add              rsp, 96;                             jmp   n518_statement_begin_α
#=======================================================================================================================
#         b2 = b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n518_statement_begin_α:                                                       jmp   n519_var_α
n518_statement_begin_β:                                                       jmp   n524_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n519_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n520_var_α
#-----------------------------------------------------------------------------------------------------------------------
n520_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]            # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n521_binop_α
n520_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n518_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n521_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n522_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n522_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax            # b2
                        mov              qword ptr [r9 + 456], rdx;           jmp   n523_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n523_statement_end_α:   add              rsp, 48;                             jmp   n524_statement_begin_α
#=======================================================================================================================
#         b1 =
#-----------------------------------------------------------------------------------------------------------------------
n524_statement_begin_α:                                                       jmp   n525_lit_string_α
n524_statement_begin_β:                                                       jmp   n528_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1147_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n526_assign_α
.Lx1147_0:              .quad            .Lx1147_0_s
.Lx1147_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n526_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # b1
                        mov              qword ptr [r9 + 440], rdx;           jmp   n527_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n527_statement_end_α:   add              rsp, 16;                             jmp   n528_statement_begin_α
#=======================================================================================================================
#         GT(SIZE(b2), 262144)                    :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n528_statement_begin_α:                                                       jmp   n529_var_α
n528_statement_begin_β:                                                       jmp   n498_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n529_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n530_call_α
#-----------------------------------------------------------------------------------------------------------------------
n530_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1155:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1155]
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
                        cmp              eax, 104;                            jne   .Lx1154_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n528_statement_begin_β
.Lx1154_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n531_lit_integer_α
n530_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n528_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n531_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1156_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n532_coerce_numeric_α
n531_lit_integer_β:     add              rsp, 16
                        add              rsp, 32;                             jmp   n528_statement_begin_β
.Lx1156_0:              .quad            262144
#-----------------------------------------------------------------------------------------------------------------------
n532_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx1158_1
                        cmp              eax, 3;                              jne   .Lx1158_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx1158_0
.Lx1158_1:              mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n533_coerce_numeric_α
.Lx1158_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n533_coerce_numeric_α
n532_coerce_numeric_β:  add              rsp, 16;                             jmp   n531_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n533_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1160_1
                        cmp              eax, 3;                              jne   .Lx1160_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx1160_0
.Lx1160_1:              mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n534_cmp_test_α
.Lx1160_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n534_cmp_test_α
n533_coerce_numeric_β:  add              rsp, 16;                             jmp   n532_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n534_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jg    .Lx1162_240
                        add              rsp, 16;                             jmp   n533_coerce_numeric_β
.Lx1162_240:                                                                  jmp   n535_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n535_statement_end_α:   add              rsp, 96;                             jmp   n536_statement_begin_α
#=======================================================================================================================
#         src = src b2
#-----------------------------------------------------------------------------------------------------------------------
n536_statement_begin_α:                                                       jmp   n537_var_α
n536_statement_begin_β:                                                       jmp   n542_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n537_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # src
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n538_var_α
#-----------------------------------------------------------------------------------------------------------------------
n538_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n539_binop_α
n538_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n536_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n539_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n540_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n540_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax            # src
                        mov              qword ptr [r9 + 472], rdx;           jmp   n541_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n541_statement_end_α:   add              rsp, 48;                             jmp   n542_statement_begin_α
#=======================================================================================================================
#         b2 =                                    :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n542_statement_begin_α:                                                       jmp   n543_lit_string_α
n542_statement_begin_β:                                                       jmp   n498_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n543_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1175_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n544_assign_α
.Lx1175_0:              .quad            .Lx1175_0_s
.Lx1175_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n544_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax            # b2
                        mov              qword ptr [r9 + 456], rdx;           jmp   n545_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n545_statement_end_α:   add              rsp, 16;                             jmp   n498_statement_begin_α
#=======================================================================================================================
# slurp_f src = src b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n546_statement_begin_α:                                                       jmp   n547_var_α
n546_statement_begin_β:                                                       jmp   n554_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n547_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # src
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n548_var_α
#-----------------------------------------------------------------------------------------------------------------------
n548_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n549_binop_α
n548_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n546_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n549_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n550_var_α
n549_binop_β:           add              rsp, 16;                             jmp   n548_var_β
#-----------------------------------------------------------------------------------------------------------------------
n550_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]            # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n551_binop_α
n550_var_β:             add              rsp, 16;                             jmp   n549_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n551_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n552_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n552_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax            # src
                        mov              qword ptr [r9 + 472], rdx;           jmp   n553_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n553_statement_end_α:   add              rsp, 80;                             jmp   n554_statement_begin_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n554_statement_begin_α:                                                       jmp   n555_call_α
n554_statement_begin_β:                                                       jmp   n558_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n555_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1192:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1192]
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
                        cmp              eax, 104;                            jne   .Lx1191_240
                        add              rsp, 16;                             jmp   n554_statement_begin_β
.Lx1191_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n556_assign_α
n555_call_β:            add              rsp, 16;                             jmp   n554_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n556_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # t0
                        mov              qword ptr [r9 + 488], rdx;           jmp   n557_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n557_statement_end_α:   add              rsp, 16;                             jmp   n558_statement_begin_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n558_statement_begin_α:                                                       jmp   n559_var_α
n558_statement_begin_β:                                                       jmp   n578_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n559_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]            # src
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n560_var_α
#-----------------------------------------------------------------------------------------------------------------------
n560_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # C
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n561_assign_α
n560_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n578_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n561_assign_α:          mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1200_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n562_match_begin_α
n561_assign_β:                                                                jmp   n560_var_β
.Lx1200_0:              .quad            .Lx1200_0_s
.Lx1200_0_s:            .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n562_match_begin_α:     mov              rdi, qword ptr [rsp + 16]            # var
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
.Lx1202_0:              mov              r14d, dword ptr [rbp + -40];         jmp   n563_match_defer_α
n562_match_begin_β:     lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx1202_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1202_1
                                                                              jmp   .Lx1202_0
.Lx1202_1:
n562_match_begin_af:    mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n561_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n563_match_defer_α:     lea              rdi, [rip + .S19]
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
                        test             rax, rax;                            je    .Lx1203_14
                        mov              rax, qword ptr [rdx + 0]
.Lx1203_14:             test             rax, rax;                            jz    .Lx1203_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx1203_4]
                        lea              r11, [rip + .Lx1203_5];              jmp   rax
.Lx1203_4:                                                                    jmp   n564_match_end_α
.Lx1203_5:                                                                    jmp   n562_match_begin_β
.Lx1203_0:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S19]
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
                        test             eax, eax;                            js    n562_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1203_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n564_match_end_α
.Lx1203_6:              add              rsp, 16;                             jmp   n562_match_begin_β
n563_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n564_match_end_α:       push             r14
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
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n565_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n565_statement_end_α:   add              rsp, 32;                             jmp   n566_statement_begin_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n566_statement_begin_α:                                                       jmp   n567_call_α
n566_statement_begin_β:                                                       jmp   n570_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n567_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1211:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1211]
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
                        cmp              eax, 104;                            jne   .Lx1210_240
                        add              rsp, 16;                             jmp   n566_statement_begin_β
.Lx1210_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n568_assign_α
n567_call_β:            add              rsp, 16;                             jmp   n566_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n568_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # t1
                        mov              qword ptr [r9 + 504], rdx;           jmp   n569_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n569_statement_end_α:   add              rsp, 16;                             jmp   n570_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n570_statement_begin_α:                                                       jmp   n571_lit_string_α
n570_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n571_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1217_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n572_var_α
.Lx1217_0:              .quad            .Lx1217_0_s
.Lx1217_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n572_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]            # t1
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n573_var_α
n572_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n570_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n573_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # t0
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n574_binop_α
n573_var_β:             add              rsp, 16;                             jmp   n572_var_β
#-----------------------------------------------------------------------------------------------------------------------
n574_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1220_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1220_7
.Lx1220_2:              and              edx, 1;                              jz    .Lx1220_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx1220_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1220_4
.Lx1220_3:              movq             xmm0, rsi
.Lx1220_4:              cmp              ecx, 5;                              je    .Lx1220_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1220_6
.Lx1220_5:              movq             xmm1, rdi
.Lx1220_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1220_7:                                                                    jmp   n575_binop_α
.Lx1220_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx1220_240
                        add              rsp, 16;                             jmp   n573_var_β
.Lx1220_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n575_binop_α
n574_binop_β:           add              rsp, 16;                             jmp   n573_var_β
#-----------------------------------------------------------------------------------------------------------------------
n575_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n576_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n576_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1222_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n577_statement_end_α
.Lx1222_0:              .quad            .Lx1222_0_s
.Lx1222_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n577_statement_end_α:   add              rsp, 80;                             jmp   main_γ
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n578_statement_begin_α:                                                       jmp   n579_call_α
n578_statement_begin_β:                                                       jmp   n582_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n579_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1228:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1228]
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
                        cmp              eax, 104;                            jne   .Lx1227_240
                        add              rsp, 16;                             jmp   n578_statement_begin_β
.Lx1227_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n580_assign_α
n579_call_β:            add              rsp, 16;                             jmp   n578_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n580_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # t1
                        mov              qword ptr [r9 + 504], rdx;           jmp   n581_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n581_statement_end_α:   add              rsp, 16;                             jmp   n582_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n582_statement_begin_α:                                                       jmp   n583_lit_string_α
n582_statement_begin_β:                                                       jmp   n586_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n583_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1234_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n584_assign_α
.Lx1234_0:              .quad            .Lx1234_0_s
.Lx1234_0_s:            .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n584_assign_α:          mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1235_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n585_statement_end_α
.Lx1235_0:              .quad            .Lx1235_0_s
.Lx1235_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n585_statement_end_α:   add              rsp, 16;                             jmp   n586_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n586_statement_begin_α:                                                       jmp   n587_lit_string_α
n586_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n587_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1240_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n588_var_α
.Lx1240_0:              .quad            .Lx1240_0_s
.Lx1240_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n588_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]            # t1
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n589_var_α
n588_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n586_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n589_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # t0
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n590_binop_α
n589_var_β:             add              rsp, 16;                             jmp   n588_var_β
#-----------------------------------------------------------------------------------------------------------------------
n590_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1243_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1243_7
.Lx1243_2:              and              edx, 1;                              jz    .Lx1243_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx1243_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1243_4
.Lx1243_3:              movq             xmm0, rsi
.Lx1243_4:              cmp              ecx, 5;                              je    .Lx1243_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1243_6
.Lx1243_5:              movq             xmm1, rdi
.Lx1243_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1243_7:                                                                    jmp   n591_binop_α
.Lx1243_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx1243_240
                        add              rsp, 16;                             jmp   n589_var_β
.Lx1243_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n591_binop_α
n590_binop_β:           add              rsp, 16;                             jmp   n589_var_β
#-----------------------------------------------------------------------------------------------------------------------
n591_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n592_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n592_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1245_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n593_statement_end_α
.Lx1245_0:              .quad            .Lx1245_0_s
.Lx1245_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n593_statement_end_α:   add              rsp, 80;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 pop              rcx
                        add              rsp, 8;                              jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                add              rsp, 8
                        pop              rcx;                                 jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
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
                        .section         .rodata
.S0:                    .string          "*PSH"
.S1:                    .string          "X"
.S2:                    .string          "PAT$2$V1"
.S3:                    .string          "PAT$2$V0"
.S4:                    .string          "F"
.S5:                    .string          "*NEG"
.S6:                    .string          "PAT$3$V0"
.S7:                    .string          "PAT$4$V0"
.S8:                    .string          "T"
.S9:                    .string          "*DIV"
.S10:                   .string          "*MUL"
.S11:                   .string          "PAT$5$V0"
.S12:                   .string          "*SUB"
.S13:                   .string          "*ADD"
.S14:                   .string          "PAT$6$V0"
.S15:                   .string          "PAT$7$V0"
.S16:                   .string          "PAT$7$V1"
.S17:                   .string          "PAT$7$V2"
.S18:                   .string          "*EMIT"
.S19:                   .string          "PATV$0"
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
