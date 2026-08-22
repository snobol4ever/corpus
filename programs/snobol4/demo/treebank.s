                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 56
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n0_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rbp + -48], r14d;         jmp   n1_match_defer_α
n0_match_assign_save_β: add              rsp, 16;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_defer_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx5_16
                        mov              rax, qword ptr [rdx + 0]
.Lx5_16:                test             rax, rax;                            jz    .Lx5_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx5_5]
                        push             rcx
                        lea              rcx, [rip + .Lx5_4]
                        push             rcx;                                 jmp   rax
.Lx5_4:                                                                       jmp   n2_match_assign_cond_α
.Lx5_5:                 add              rsp, 16;                             jmp   n0_match_assign_save_β
.Lx5_0:                 push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S0]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            jns   .Lx5_240
                        add              rsp, 16;                             jmp   n0_match_assign_save_β
.Lx5_240:               mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx5_6]
                        push             rcx
                        push             rax;                                 jmp   n2_match_assign_cond_α
.Lx5_6:                 add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n0_match_assign_save_β
n1_match_defer_β:       cmp              qword ptr [rsp + 0], 0;              jne   .Lx5_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx5_12
                                                                              jmp   rax
.Lx5_12:                                                                      jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n2_match_assign_cond_α: mov              eax, dword ptr [rbp + -48]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   PAT$0_γ
n2_match_assign_cond_β: sub              r12, 24;                             jmp   n1_match_defer_β
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
n8_match_span_α:        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx10_0:                cmp              ecx, r15d;                           jge   .Lx10_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lx10_10
                        cmp              esi, 10;                             je    .Lx10_10
                                                                              jmp   .Lx10_1
.Lx10_10:               add              ecx, 1;                              jmp   .Lx10_0
.Lx10_1:                cmp              ecx, r14d;                           jg    .Lx10_240
                        add              rsp, 16;                             jmp   PAT$1_ω
.Lx10_240:              mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   PAT$1_γ
n8_match_span_β:        mov              r14d, dword ptr [rbp + -60]
                        add              rsp, 16;                             jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   n8_match_span_β
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
n11_match_notany_α:     mov              eax, r14d
                        cmp              eax, r15d;                           jge   PAT$2_ω
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               jne   PAT$2_ω
                        add              r14d, 1;                             jmp   n12_match_break_α
n11_match_notany_β:     sub              r14d, 1;                             jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_match_break_α:      sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx15_0:                cmp              ecx, r15d;                           jl    .Lx15_240
                        add              rsp, 16;                             jmp   n11_match_notany_β
.Lx15_240:              movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               jnz   .Lx15_1
                        add              ecx, 1;                              jmp   .Lx15_0
.Lx15_1:                mov              dword ptr [rbp + -64], r14d
                        mov              r14d, ecx;                           jmp   PAT$2_γ
n12_match_break_β:      mov              r14d, dword ptr [rbp + -64]
                        add              rsp, 16;                             jmp   n11_match_notany_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_β:
                                                                              jmp   n12_match_break_β
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
                        sub              rsp, 152
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n16_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    PAT$3_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   PAT$3_ω
                        add              r14d, 1;                             jmp   n17_match_assign_save_α
n16_match_lit_β:        sub              r14d, 1;                             jmp   PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + -48], r14d;         jmp   n18_match_defer_α
n17_match_assign_save_β:
                        add              rsp, 16;                             jmp   n16_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n18_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S2]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx37_16
                        mov              rax, qword ptr [rdx + 0]
.Lx37_16:               test             rax, rax;                            jz    .Lx37_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx37_5]
                        push             rcx
                        lea              rcx, [rip + .Lx37_4]
                        push             rcx;                                 jmp   rax
.Lx37_4:                                                                      jmp   n19_match_assign_cond_α
.Lx37_5:                add              rsp, 16;                             jmp   n17_match_assign_save_β
.Lx37_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S2]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            jns   .Lx37_240
                        add              rsp, 16;                             jmp   n17_match_assign_save_β
.Lx37_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx37_6]
                        push             rcx
                        push             rax;                                 jmp   n19_match_assign_cond_α
.Lx37_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n17_match_assign_save_β
n18_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx37_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx37_12
                                                                              jmp   rax
.Lx37_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n19_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -48]
                        lea              rcx, [rip + .S3]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n20_match_defer_α
n19_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n18_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n20_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S4]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx40_16
                        mov              rax, qword ptr [rdx + 0]
.Lx40_16:               test             rax, rax;                            jz    .Lx40_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx40_5]
                        push             rcx
                        lea              rcx, [rip + .Lx40_4]
                        push             rcx;                                 jmp   rax
.Lx40_4:                                                                      jmp   n21_match_arbno_α
.Lx40_5:                add              rsp, 16;                             jmp   n19_match_assign_cond_β
.Lx40_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S4]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            jns   .Lx40_240
                        add              rsp, 16;                             jmp   n19_match_assign_cond_β
.Lx40_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx40_6]
                        push             rcx
                        push             rax;                                 jmp   n21_match_arbno_α
.Lx40_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n19_match_assign_cond_β
n20_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx40_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx40_12
                                                                              jmp   rax
.Lx40_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n21_match_arbno_α:      mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d;         jmp   n22_match_defer_α
n21_match_arbno_β:                                                            jmp   n24_match_defer_α
n21_match_arbno_as:     mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n21_match_arbno_af
                        mov              dword ptr [rbp + -60], r14d;         jmp   n22_match_defer_α
n21_match_arbno_af:     mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n20_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 5
                        lea              rdx, [rip + .S5]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx43_16
                        mov              rax, qword ptr [rdx + 0]
.Lx43_16:               test             rax, rax;                            jz    .Lx43_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx43_5]
                        push             rcx
                        lea              rcx, [rip + .Lx43_4]
                        push             rcx;                                 jmp   rax
.Lx43_4:                                                                      jmp   n23_match_lit_α
.Lx43_5:                add              rsp, 16;                             jmp   n21_match_arbno_β
.Lx43_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 5
                        lea              rdx, [rip + .S5]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            jns   .Lx43_240
                        add              rsp, 16;                             jmp   n21_match_arbno_β
.Lx43_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx43_6]
                        push             rcx
                        push             rax;                                 jmp   n23_match_lit_α
.Lx43_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n21_match_arbno_β
n22_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx43_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx43_12
                                                                              jmp   rax
.Lx43_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n23_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n22_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n22_match_defer_β
                        add              r14d, 1;                             jmp   PAT$3_γ
n23_match_lit_β:        sub              r14d, 1;                             jmp   n22_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n24_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 4
                        lea              rdx, [rip + .S6]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx46_16
                        mov              rax, qword ptr [rdx + 0]
.Lx46_16:               test             rax, rax;                            jz    .Lx46_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx46_5]
                        push             rcx
                        lea              rcx, [rip + .Lx46_4]
                        push             rcx;                                 jmp   rax
.Lx46_4:                                                                      jmp   n25_match_fence1_α
.Lx46_5:                                                                      jmp   n21_match_arbno_af
.Lx46_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 4
                        lea              rdx, [rip + .S6]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n21_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx46_6]
                        push             rcx
                        push             rax;                                 jmp   n25_match_fence1_α
.Lx46_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n21_match_arbno_af
n24_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx46_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx46_12
                                                                              jmp   rax
.Lx46_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n25_match_fence1_α:     mov              qword ptr [rbp + -80], rsp;          jmp   n26_match_alternate_α
n25_match_fence1_as:    mov              rsp, qword ptr [rbp + -80];          jmp   n21_match_arbno_as
n25_match_fence1_af:
n25_match_fence1_β:     mov              rsp, qword ptr [rbp + -80];          jmp   n21_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n26_match_alternate_α:  sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx50_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n32_match_defer_α
.Lx50_21:               lea              rax, [rip + .Lx50_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n28_match_assign_save_α
n26_match_alternate_s0: lea              rax, [rip + .Lx50_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_match_alternate_as
n26_match_alternate_s1: lea              rax, [rip + .Lx50_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_match_alternate_as
.Lx50_40:                                                                     jmp   n32_match_defer_β
.Lx50_41:                                                                     jmp   n27_goto_β
n26_match_alternate_as:                                                       jmp   n25_match_fence1_as
n26_match_alternate_β:  mov              rax, qword ptr [rsp + 8];            jmp   rax
n26_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx50_19:               add              rsp, 32;                             jmp   n25_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n27_goto_α:                                                                   jmp   n26_match_alternate_af
n27_goto_β:                                                                   jmp   n26_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n28_match_assign_save_α:
                        mov              dword ptr [rbp + -112], r14d;        jmp   n29_match_defer_α
n28_match_assign_save_β:
                                                                              jmp   n26_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n29_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S7]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx54_16
                        mov              rax, qword ptr [rdx + 0]
.Lx54_16:               test             rax, rax;                            jz    .Lx54_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx54_5]
                        push             rcx
                        lea              rcx, [rip + .Lx54_4]
                        push             rcx;                                 jmp   rax
.Lx54_4:                                                                      jmp   n30_match_assign_cond_α
.Lx54_5:                                                                      jmp   n28_match_assign_save_β
.Lx54_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S7]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n28_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx54_6]
                        push             rcx
                        push             rax;                                 jmp   n30_match_assign_cond_α
.Lx54_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n28_match_assign_save_β
n29_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx54_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx54_12
                                                                              jmp   rax
.Lx54_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n30_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -112]
                        lea              rcx, [rip + .S8]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n31_match_defer_α
n30_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n29_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n31_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        lea              rdx, [rip + .S9]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx57_16
                        mov              rax, qword ptr [rdx + 0]
.Lx57_16:               test             rax, rax;                            jz    .Lx57_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx57_5]
                        push             rcx
                        lea              rcx, [rip + .Lx57_4]
                        push             rcx;                                 jmp   rax
.Lx57_4:                                                                      jmp   n26_match_alternate_s1
.Lx57_5:                                                                      jmp   n30_match_assign_cond_β
.Lx57_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        lea              rdx, [rip + .S9]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n30_match_assign_cond_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx57_6]
                        push             rcx
                        push             rax;                                 jmp   n26_match_alternate_s1
.Lx57_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n30_match_assign_cond_β
n31_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx57_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx57_12
                                                                              jmp   rax
.Lx57_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n32_match_defer_α:      mov              rax, qword ptr [r9 + 512]            # group
                        mov              rdx, qword ptr [r9 + 520]
                        cmp              al, 8;                               jne   .Lx58_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx58_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, qword ptr [r9 + 520];           jmp   .Lx58_10
.Lx58_9:                cmp              al, 88;                              jne   .Lx58_21
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_xpat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx58_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx58_10
.Lx58_21:               xor              eax, eax
.Lx58_10:               test             rax, rax;                            jz    .Lx58_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx58_5]
                        push             rcx
                        lea              rcx, [rip + .Lx58_4]
                        push             rcx;                                 jmp   rax
.Lx58_4:                                                                      jmp   n26_match_alternate_s0
.Lx58_5:                                                                      jmp   n26_match_alternate_af
.Lx58_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S10]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n26_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx58_6]
                        push             rcx
                        push             rax;                                 jmp   n26_match_alternate_s0
.Lx58_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n26_match_alternate_af
n32_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx58_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx58_12
                                                                              jmp   rax
.Lx58_12:                                                                     jmp   qword ptr [rsp]
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
                        sub              rsp, 104
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n59_match_pos_α:        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$4_ω
                                                                              jmp   n60_match_defer_α
n59_match_pos_β:                                                              jmp   PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n60_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S11]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx73_16
                        mov              rax, qword ptr [rdx + 0]
.Lx73_16:               test             rax, rax;                            jz    .Lx73_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx73_5]
                        push             rcx
                        lea              rcx, [rip + .Lx73_4]
                        push             rcx;                                 jmp   rax
.Lx73_4:                                                                      jmp   n61_match_defer_α
.Lx73_5:                add              rsp, 16;                             jmp   PAT$4_ω
.Lx73_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S11]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            jns   .Lx73_240
                        add              rsp, 16;                             jmp   PAT$4_ω
.Lx73_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx73_6]
                        push             rcx
                        push             rax;                                 jmp   n61_match_defer_α
.Lx73_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$4_ω
n60_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx73_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx73_12
                                                                              jmp   rax
.Lx73_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n61_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S12]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx74_16
                        mov              rax, qword ptr [rdx + 0]
.Lx74_16:               test             rax, rax;                            jz    .Lx74_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx74_5]
                        push             rcx
                        lea              rcx, [rip + .Lx74_4]
                        push             rcx;                                 jmp   rax
.Lx74_4:                                                                      jmp   n62_match_arbno_α
.Lx74_5:                add              rsp, 16;                             jmp   n60_match_defer_β
.Lx74_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S12]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            jns   .Lx74_240
                        add              rsp, 16;                             jmp   n60_match_defer_β
.Lx74_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx74_6]
                        push             rcx
                        push             rax;                                 jmp   n62_match_arbno_α
.Lx74_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n60_match_defer_β
n61_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx74_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx74_12
                                                                              jmp   rax
.Lx74_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n62_match_arbno_α:      mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d;         jmp   n63_match_defer_α
n62_match_arbno_β:                                                            jmp   n65_match_defer_α
n62_match_arbno_as:     mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n69_match_defer_β
                        mov              dword ptr [rbp + -44], r14d;         jmp   n63_match_defer_α
n62_match_arbno_af:     mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n61_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n63_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 5
                        lea              rdx, [rip + .S13]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx77_16
                        mov              rax, qword ptr [rdx + 0]
.Lx77_16:               test             rax, rax;                            jz    .Lx77_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx77_5]
                        push             rcx
                        lea              rcx, [rip + .Lx77_4]
                        push             rcx;                                 jmp   rax
.Lx77_4:                                                                      jmp   n64_match_rpos_α
.Lx77_5:                add              rsp, 16;                             jmp   n62_match_arbno_β
.Lx77_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 5
                        lea              rdx, [rip + .S13]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            jns   .Lx77_240
                        add              rsp, 16;                             jmp   n62_match_arbno_β
.Lx77_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx77_6]
                        push             rcx
                        push             rax;                                 jmp   n64_match_rpos_α
.Lx77_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n62_match_arbno_β
n63_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx77_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx77_12
                                                                              jmp   rax
.Lx77_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n64_match_rpos_α:       mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n63_match_defer_β
                                                                              jmp   PAT$4_γ
#-----------------------------------------------------------------------------------------------------------------------
n65_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        lea              rdx, [rip + .S14]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx79_16
                        mov              rax, qword ptr [rdx + 0]
.Lx79_16:               test             rax, rax;                            jz    .Lx79_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx79_5]
                        push             rcx
                        lea              rcx, [rip + .Lx79_4]
                        push             rcx;                                 jmp   rax
.Lx79_4:                                                                      jmp   n66_match_arbno_α
.Lx79_5:                                                                      jmp   n62_match_arbno_af
.Lx79_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        lea              rdx, [rip + .S14]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n62_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx79_6]
                        push             rcx
                        push             rax;                                 jmp   n66_match_arbno_α
.Lx79_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n62_match_arbno_af
n65_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx79_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx79_12
                                                                              jmp   rax
.Lx79_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n66_match_arbno_α:      mov              dword ptr [rbp + -80], r14d
                        mov              dword ptr [rbp + -76], r14d;         jmp   n67_match_defer_α
n66_match_arbno_β:                                                            jmp   n70_match_defer_α
n66_match_arbno_as:     mov              eax, dword ptr [rbp + -76]
                        cmp              r14d, eax;                           je    n66_match_arbno_af
                        mov              dword ptr [rbp + -76], r14d;         jmp   n67_match_defer_α
n66_match_arbno_af:     mov              eax, dword ptr [rbp + -80]
                        cmp              r14d, eax;                           jmp   n65_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n67_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 4
                        lea              rdx, [rip + .S15]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx82_16
                        mov              rax, qword ptr [rdx + 0]
.Lx82_16:               test             rax, rax;                            jz    .Lx82_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx82_5]
                        push             rcx
                        lea              rcx, [rip + .Lx82_4]
                        push             rcx;                                 jmp   rax
.Lx82_4:                                                                      jmp   n68_match_fence0_α
.Lx82_5:                                                                      jmp   n66_match_arbno_β
.Lx82_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 4
                        lea              rdx, [rip + .S15]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n66_match_arbno_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx82_6]
                        push             rcx
                        push             rax;                                 jmp   n68_match_fence0_α
.Lx82_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n66_match_arbno_β
n67_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx82_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx82_12
                                                                              jmp   rax
.Lx82_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n68_match_fence0_α:                                                           jmp   n69_match_defer_α
n68_match_fence0_β:                                                           jmp   n62_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n69_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx85_16
                        mov              rax, qword ptr [rdx + 0]
.Lx85_16:               test             rax, rax;                            jz    .Lx85_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx85_5]
                        push             rcx
                        lea              rcx, [rip + .Lx85_4]
                        push             rcx;                                 jmp   rax
.Lx85_4:                                                                      jmp   n62_match_arbno_as
.Lx85_5:                                                                      jmp   n62_match_arbno_af
.Lx85_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S16]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n62_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx85_6]
                        push             rcx
                        push             rax;                                 jmp   n62_match_arbno_as
.Lx85_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n62_match_arbno_af
n69_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx85_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx85_12
                                                                              jmp   rax
.Lx85_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n70_match_defer_α:      mov              rax, qword ptr [r9 + 512]            # group
                        mov              rdx, qword ptr [r9 + 520]
                        cmp              al, 8;                               jne   .Lx86_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx86_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, qword ptr [r9 + 520];           jmp   .Lx86_10
.Lx86_9:                cmp              al, 88;                              jne   .Lx86_21
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_xpat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx86_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx86_10
.Lx86_21:               xor              eax, eax
.Lx86_10:               test             rax, rax;                            jz    .Lx86_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx86_5]
                        push             rcx
                        lea              rcx, [rip + .Lx86_4]
                        push             rcx;                                 jmp   rax
.Lx86_4:                                                                      jmp   n71_match_fence0_α
.Lx86_5:                                                                      jmp   n66_match_arbno_af
.Lx86_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S10]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n66_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx86_6]
                        push             rcx
                        push             rax;                                 jmp   n71_match_fence0_α
.Lx86_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n66_match_arbno_af
n70_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx86_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx86_12
                                                                              jmp   rax
.Lx86_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n71_match_fence0_α:                                                           jmp   n66_match_arbno_as
n71_match_fence0_β:                                                           jmp   n66_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_β:
                                                                              jmp   PAT$4_ω
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
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 50
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 50
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "ListValue"
.Lgvan1:                .string          "x"
.Lgvan2:                .string          "place"
.Lgvan3:                .string          "ListName"
.Lgvan4:                .string          "ListAppend"
.Lgvan5:                .string          "item"
.Lgvan6:                .string          "ListPrepend"
.Lgvan7:                .string          "ListInsert"
.Lgvan8:                .string          "a"
.Lgvan9:                .string          "i"
.Lgvan10:               .string          "size"
.Lgvan11:               .string          "ListRemove"
.Lgvan12:               .string          "ListPop"
.Lgvan13:               .string          "ListSize"
.Lgvan14:               .string          "Init_list"
.Lgvan15:               .string          "vs"
.Lgvan16:               .string          "init_list"
.Lgvan17:               .string          "v"
.Lgvan18:               .string          "Push_list"
.Lgvan19:               .string          "push_list"
.Lgvan20:               .string          "Push_item"
.Lgvan21:               .string          "push_item"
.Lgvan22:               .string          "Pop_list"
.Lgvan23:               .string          "pop_list"
.Lgvan24:               .string          "Pop_final"
.Lgvan25:               .string          "pop_final"
.Lgvan26:               .string          "epsilon"
.Lgvan27:               .string          "tags"
.Lgvan28:               .string          "stack"
.Lgvan29:               .string          "dummy"
.Lgvan30:               .string          "delim"
.Lgvan31:               .string          "word"
.Lgvan32:               .string          "group"
.Lgvan33:               .string          "tag"
.Lgvan34:               .string          "wrd"
.Lgvan35:               .string          "treebank"
.Lgvan36:               .string          "src"
.Lgvan37:               .string          "PAT$0$V0"
.Lgvan38:               .string          "PAT$3$V0"
.Lgvan39:               .string          "PAT$3$V1"
.Lgvan40:               .string          "PAT$3$V2"
.Lgvan41:               .string          "PAT$3$V3"
.Lgvan42:               .string          "PAT$3$V4"
.Lgvan43:               .string          "PAT$3$V5"
.Lgvan44:               .string          "PAT$4$V0"
.Lgvan45:               .string          "PAT$4$V1"
.Lgvan46:               .string          "PAT$4$V2"
.Lgvan47:               .string          "PAT$4$V3"
.Lgvan48:               .string          "PAT$4$V4"
.Lgvan49:               .string          "PAT$4$V5"
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
                        .quad            .Lgvan41
                        .quad            .Lgvan42
                        .quad            .Lgvan43
                        .quad            .Lgvan44
                        .quad            .Lgvan45
                        .quad            .Lgvan46
                        .quad            .Lgvan47
                        .quad            .Lgvan48
                        .quad            .Lgvan49
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#                 DATA('list(n,a)')
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_begin_α:                                                        jmp   n90_lit_string_α
n89_statement_begin_β:                                                        jmp   n93_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx717_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n91_call_α
.Lx717_0:               .quad            .Lx717_0_s
.Lx717_0_s:             .string          "list(n,a)"
#-----------------------------------------------------------------------------------------------------------------------
n91_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd719:            .string          "DATA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd719]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx718_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n89_statement_begin_β
.Lx718_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n92_statement_end_α
n91_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n89_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_end_α:    add              rsp, 32;                             jmp   n93_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListValue(x,place)')
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_begin_α:                                                        jmp   n94_define_α
n93_statement_begin_β:                                                        jmp   n96_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n94_define_α:           mov              rdi, qword ptr [rip + .Lx725_0]
                        mov              rsi, qword ptr [rip + .Lx725_1]
                        mov              edx, 2
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + n117_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx725_0]
                        lea              rsi, [rip + ListValue_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n95_statement_end_α
n94_define_β:                                                                 jmp   n93_statement_begin_β
.Lx725_0:               .quad            .Lx725_0_s
.Lx725_0_s:             .string          "ListValue"
.Lx725_1:               .quad            .Lx725_1_s
.Lx725_1_s:             .string          "x,place"
                                                                              jmp   .Lx726_245
#-----------------------------------------------------------------------------------------------------------------------
ListValue_α:            sub              rsp, 80
                        mov              rax, qword ptr [r9 + 0]              # ListValue
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        cmp              rdx, 0;                              jbe   .Lx726_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx726_41
.Lx726_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx726_41:              cmp              rdx, 1;                              jbe   .Lx726_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 32]             # place
                        mov              qword ptr [r9 + 32], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 40]
                        mov              qword ptr [r9 + 40], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx726_42
.Lx726_11:              mov              rax, qword ptr [r9 + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
.Lx726_42:              lea              r10, [rip + ListValue_γ]
                        lea              r11, [rip + ListValue_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n117_statement_begin_α]; jmp   rax
ListValue_γ:            mov              rdi, qword ptr [r9 + 0]              # ListValue
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx726_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx726_110
.Lx726_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx726_110:             cmp              rdx, 1;                              jbe   .Lx726_81
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx726_111
.Lx726_81:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 40], rax
.Lx726_111:             mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 80
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ListValue_ω:            mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # ListValue
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx726_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx726_180
.Lx726_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx726_180:             cmp              rdx, 1;                              jbe   .Lx726_151
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx726_181
.Lx726_151:             mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 40], rax
.Lx726_181:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx726_245:
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:                                                          jmp   n96_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListName(x,place)')
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_begin_α:                                                        jmp   n97_define_α
n96_statement_begin_β:                                                        jmp   n99_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n97_define_α:           mov              rdi, qword ptr [rip + .Lx732_0]
                        mov              rsi, qword ptr [rip + .Lx732_1]
                        mov              edx, 2
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + n137_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx732_0]
                        lea              rsi, [rip + ListName_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n98_statement_end_α
n97_define_β:                                                                 jmp   n96_statement_begin_β
.Lx732_0:               .quad            .Lx732_0_s
.Lx732_0_s:             .string          "ListName"
.Lx732_1:               .quad            .Lx732_1_s
.Lx732_1_s:             .string          "x,place"
                                                                              jmp   .Lx733_245
#-----------------------------------------------------------------------------------------------------------------------
ListName_α:             sub              rsp, 80
                        mov              rax, qword ptr [r9 + 48]             # ListName
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        cmp              rdx, 0;                              jbe   .Lx733_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx733_41
.Lx733_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx733_41:              cmp              rdx, 1;                              jbe   .Lx733_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 32]             # place
                        mov              qword ptr [r9 + 32], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 40]
                        mov              qword ptr [r9 + 40], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx733_42
.Lx733_11:              mov              rax, qword ptr [r9 + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
.Lx733_42:              lea              r10, [rip + ListName_γ]
                        lea              r11, [rip + ListName_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n137_statement_begin_α]; jmp   rax
ListName_γ:             mov              rdi, qword ptr [r9 + 48]             # ListName
                        mov              rsi, qword ptr [r9 + 56]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 56], rax
                        cmp              rdx, 0;                              jbe   .Lx733_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx733_110
.Lx733_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx733_110:             cmp              rdx, 1;                              jbe   .Lx733_81
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx733_111
.Lx733_81:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 40], rax
.Lx733_111:             mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 80
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ListName_ω:             mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 48], rax             # ListName
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 56], rax
                        cmp              rdx, 0;                              jbe   .Lx733_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx733_180
.Lx733_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx733_180:             cmp              rdx, 1;                              jbe   .Lx733_151
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx733_181
.Lx733_151:             mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 40], rax
.Lx733_181:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx733_245:
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:                                                          jmp   n99_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListAppend(x,item)')
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_begin_α:                                                        jmp   n100_define_α
n99_statement_begin_β:                                                        jmp   n102_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n100_define_α:          mov              rdi, qword ptr [rip + .Lx739_0]
                        mov              rsi, qword ptr [rip + .Lx739_1]
                        mov              edx, 2
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + n156_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx739_0]
                        lea              rsi, [rip + ListAppend_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n101_statement_end_α
n100_define_β:                                                                jmp   n99_statement_begin_β
.Lx739_0:               .quad            .Lx739_0_s
.Lx739_0_s:             .string          "ListAppend"
.Lx739_1:               .quad            .Lx739_1_s
.Lx739_1_s:             .string          "x,item"
                                                                              jmp   .Lx740_245
#-----------------------------------------------------------------------------------------------------------------------
ListAppend_α:           sub              rsp, 80
                        mov              rax, qword ptr [r9 + 64]             # ListAppend
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 64], 0
                        mov              qword ptr [r9 + 72], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        cmp              rdx, 0;                              jbe   .Lx740_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx740_41
.Lx740_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx740_41:              cmp              rdx, 1;                              jbe   .Lx740_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # item
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx740_42
.Lx740_11:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx740_42:              lea              r10, [rip + ListAppend_γ]
                        lea              r11, [rip + ListAppend_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n156_statement_begin_α]; jmp   rax
ListAppend_γ:           mov              rdi, qword ptr [r9 + 64]             # ListAppend
                        mov              rsi, qword ptr [r9 + 72]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rdx, 0;                              jbe   .Lx740_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx740_110
.Lx740_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx740_110:             cmp              rdx, 1;                              jbe   .Lx740_81
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx740_111
.Lx740_81:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 88], rax
.Lx740_111:             mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 80
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ListAppend_ω:           mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax             # ListAppend
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rdx, 0;                              jbe   .Lx740_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx740_180
.Lx740_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx740_180:             cmp              rdx, 1;                              jbe   .Lx740_151
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx740_181
.Lx740_151:             mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 88], rax
.Lx740_181:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx740_245:
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_end_α:                                                         jmp   n102_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListPrepend(x,item)')
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_begin_α:                                                       jmp   n103_define_α
n102_statement_begin_β:                                                       jmp   n105_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n103_define_α:          mov              rdi, qword ptr [rip + .Lx746_0]
                        mov              rsi, qword ptr [rip + .Lx746_1]
                        mov              edx, 2
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + n164_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx746_0]
                        lea              rsi, [rip + ListPrepend_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n104_statement_end_α
n103_define_β:                                                                jmp   n102_statement_begin_β
.Lx746_0:               .quad            .Lx746_0_s
.Lx746_0_s:             .string          "ListPrepend"
.Lx746_1:               .quad            .Lx746_1_s
.Lx746_1_s:             .string          "x,item"
                                                                              jmp   .Lx747_245
#-----------------------------------------------------------------------------------------------------------------------
ListPrepend_α:          sub              rsp, 80
                        mov              rax, qword ptr [r9 + 96]             # ListPrepend
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 96], 0
                        mov              qword ptr [r9 + 104], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        cmp              rdx, 0;                              jbe   .Lx747_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx747_41
.Lx747_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx747_41:              cmp              rdx, 1;                              jbe   .Lx747_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # item
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx747_42
.Lx747_11:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx747_42:              lea              r10, [rip + ListPrepend_γ]
                        lea              r11, [rip + ListPrepend_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n164_statement_begin_α]; jmp   rax
ListPrepend_γ:          mov              rdi, qword ptr [r9 + 96]             # ListPrepend
                        mov              rsi, qword ptr [r9 + 104]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        cmp              rdx, 0;                              jbe   .Lx747_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx747_110
.Lx747_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx747_110:             cmp              rdx, 1;                              jbe   .Lx747_81
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx747_111
.Lx747_81:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 88], rax
.Lx747_111:             mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 80
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ListPrepend_ω:          mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax             # ListPrepend
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        cmp              rdx, 0;                              jbe   .Lx747_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx747_180
.Lx747_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx747_180:             cmp              rdx, 1;                              jbe   .Lx747_151
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx747_181
.Lx747_151:             mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 88], rax
.Lx747_181:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx747_245:
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_end_α:                                                         jmp   n105_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListInsert(x,item,place)a,i,size')
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_begin_α:                                                       jmp   n106_define_α
n105_statement_begin_β:                                                       jmp   n108_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n106_define_α:          mov              rdi, qword ptr [rip + .Lx753_0]
                        mov              rsi, qword ptr [rip + .Lx753_1]
                        mov              edx, 6
                        mov              ecx, 3
                        mov              r8d, 0
                        lea              r9, [rip + n171_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx753_0]
                        lea              rsi, [rip + ListInsert_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n107_statement_end_α
n106_define_β:                                                                jmp   n105_statement_begin_β
.Lx753_0:               .quad            .Lx753_0_s
.Lx753_0_s:             .string          "ListInsert"
.Lx753_1:               .quad            .Lx753_1_s
.Lx753_1_s:             .string          "x,item,place,a,i,size"
                                                                              jmp   .Lx754_245
#-----------------------------------------------------------------------------------------------------------------------
ListInsert_α:           sub              rsp, 144
                        mov              rax, qword ptr [r9 + 128]            # a
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 128], 0
                        mov              qword ptr [r9 + 136], 0
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [r9 + 144], 0
                        mov              qword ptr [r9 + 152], 0
                        mov              rax, qword ptr [r9 + 160]            # size
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [r9 + 160], 0
                        mov              qword ptr [r9 + 168], 0
                        mov              rax, qword ptr [r9 + 112]            # ListInsert
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 112], 0
                        mov              qword ptr [r9 + 120], 0
                        mov              qword ptr [rsp + 80], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 144]
                        cmp              rdx, 0;                              jbe   .Lx754_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx754_41
.Lx754_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 104], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx754_41:              cmp              rdx, 1;                              jbe   .Lx754_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # item
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx754_42
.Lx754_11:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx754_42:              cmp              rdx, 2;                              jbe   .Lx754_12
                        mov              rdi, qword ptr [rcx + 40]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 32]             # place
                        mov              qword ptr [r9 + 32], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 40]
                        mov              qword ptr [r9 + 40], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx754_43
.Lx754_12:              mov              rax, qword ptr [r9 + 32]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 136], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
.Lx754_43:              lea              r10, [rip + ListInsert_γ]
                        lea              r11, [rip + ListInsert_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n171_statement_begin_α]; jmp   rax
ListInsert_γ:           mov              rdi, qword ptr [r9 + 112]            # ListInsert
                        mov              rsi, qword ptr [r9 + 120]
                        mov              rcx, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 144]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 112], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 120], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 160], rax            # size
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 168], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 152], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax            # a
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rdx, 0;                              jbe   .Lx754_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx754_110
.Lx754_80:              mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 24], rax
.Lx754_110:             cmp              rdx, 1;                              jbe   .Lx754_81
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx754_111
.Lx754_81:              mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [r9 + 88], rax
.Lx754_111:             cmp              rdx, 2;                              jbe   .Lx754_82
                        mov              r11, qword ptr [rcx + 40]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx754_112
.Lx754_82:              mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [r9 + 40], rax
.Lx754_112:             mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 144
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ListInsert_ω:           mov              rcx, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 144]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 112], rax            # ListInsert
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 120], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 160], rax            # size
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 168], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 152], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax            # a
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rdx, 0;                              jbe   .Lx754_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx754_180
.Lx754_150:             mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 24], rax
.Lx754_180:             cmp              rdx, 1;                              jbe   .Lx754_151
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx754_181
.Lx754_151:             mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [r9 + 88], rax
.Lx754_181:             cmp              rdx, 2;                              jbe   .Lx754_152
                        mov              r11, qword ptr [rcx + 40]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx754_182
.Lx754_152:             mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [r9 + 40], rax
.Lx754_182:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 144
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx754_245:
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_end_α:                                                         jmp   n108_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListRemove(x,place)i,size')
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_begin_α:                                                       jmp   n109_define_α
n108_statement_begin_β:                                                       jmp   n111_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n109_define_α:          mov              rdi, qword ptr [rip + .Lx760_0]
                        mov              rsi, qword ptr [rip + .Lx760_1]
                        mov              edx, 4
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + n350_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx760_0]
                        lea              rsi, [rip + ListRemove_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n110_statement_end_α
n109_define_β:                                                                jmp   n108_statement_begin_β
.Lx760_0:               .quad            .Lx760_0_s
.Lx760_0_s:             .string          "ListRemove"
.Lx760_1:               .quad            .Lx760_1_s
.Lx760_1_s:             .string          "x,place,i,size"
                                                                              jmp   .Lx761_245
#-----------------------------------------------------------------------------------------------------------------------
ListRemove_α:           sub              rsp, 112
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 144], 0
                        mov              qword ptr [r9 + 152], 0
                        mov              rax, qword ptr [r9 + 160]            # size
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [r9 + 160], 0
                        mov              qword ptr [r9 + 168], 0
                        mov              rax, qword ptr [r9 + 176]            # ListRemove
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [r9 + 176], 0
                        mov              qword ptr [r9 + 184], 0
                        mov              qword ptr [rsp + 64], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 112]
                        cmp              rdx, 0;                              jbe   .Lx761_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx761_41
.Lx761_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx761_41:              cmp              rdx, 1;                              jbe   .Lx761_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 32]             # place
                        mov              qword ptr [r9 + 32], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 40]
                        mov              qword ptr [r9 + 40], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx761_42
.Lx761_11:              mov              rax, qword ptr [r9 + 32]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 104], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
.Lx761_42:              lea              r10, [rip + ListRemove_γ]
                        lea              r11, [rip + ListRemove_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n350_statement_begin_α]; jmp   rax
ListRemove_γ:           mov              rdi, qword ptr [r9 + 176]            # ListRemove
                        mov              rsi, qword ptr [r9 + 184]
                        mov              rcx, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 112]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 176], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 184], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 160], rax            # size
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 168], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 152], rax
                        cmp              rdx, 0;                              jbe   .Lx761_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx761_110
.Lx761_80:              mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 24], rax
.Lx761_110:             cmp              rdx, 1;                              jbe   .Lx761_81
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx761_111
.Lx761_81:              mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 40], rax
.Lx761_111:             mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 112
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ListRemove_ω:           mov              rcx, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 112]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 176], rax            # ListRemove
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 184], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 160], rax            # size
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 168], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 152], rax
                        cmp              rdx, 0;                              jbe   .Lx761_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx761_180
.Lx761_150:             mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 24], rax
.Lx761_180:             cmp              rdx, 1;                              jbe   .Lx761_151
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx761_181
.Lx761_151:             mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 40], rax
.Lx761_181:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 112
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx761_245:
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_end_α:                                                         jmp   n111_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListPop(x)')
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_begin_α:                                                       jmp   n112_define_α
n111_statement_begin_β:                                                       jmp   n114_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n112_define_α:          mov              rdi, qword ptr [rip + .Lx767_0]
                        mov              rsi, qword ptr [rip + .Lx767_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n434_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx767_0]
                        lea              rsi, [rip + ListPop_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n113_statement_end_α
n112_define_β:                                                                jmp   n111_statement_begin_β
.Lx767_0:               .quad            .Lx767_0_s
.Lx767_0_s:             .string          "ListPop"
.Lx767_1:               .quad            .Lx767_1_s
.Lx767_1_s:             .string          "x"
                                                                              jmp   .Lx768_245
#-----------------------------------------------------------------------------------------------------------------------
ListPop_α:              sub              rsp, 64
                        mov              rax, qword ptr [r9 + 192]            # ListPop
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 192], 0
                        mov              qword ptr [r9 + 200], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx768_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx768_41
.Lx768_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx768_41:              lea              r10, [rip + ListPop_γ]
                        lea              r11, [rip + ListPop_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n434_statement_begin_α]; jmp   rax
ListPop_γ:              mov              rdi, qword ptr [r9 + 192]            # ListPop
                        mov              rsi, qword ptr [r9 + 200]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 192], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 200], rax
                        cmp              rdx, 0;                              jbe   .Lx768_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx768_110
.Lx768_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx768_110:             mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ListPop_ω:              mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 192], rax            # ListPop
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 200], rax
                        cmp              rdx, 0;                              jbe   .Lx768_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx768_180
.Lx768_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx768_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx768_245:
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:                                                         jmp   n114_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListSize(x)')                                   :(ListEnd)
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_begin_α:                                                       jmp   n115_define_α
n114_statement_begin_β:                                                       jmp   n466_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n115_define_α:          mov              rdi, qword ptr [rip + .Lx774_0]
                        mov              rsi, qword ptr [rip + .Lx774_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n441_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx774_0]
                        lea              rsi, [rip + ListSize_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n116_statement_end_α
n115_define_β:                                                                jmp   n114_statement_begin_β
.Lx774_0:               .quad            .Lx774_0_s
.Lx774_0_s:             .string          "ListSize"
.Lx774_1:               .quad            .Lx774_1_s
.Lx774_1_s:             .string          "x"
                                                                              jmp   .Lx775_245
#-----------------------------------------------------------------------------------------------------------------------
ListSize_α:             sub              rsp, 64
                        mov              rax, qword ptr [r9 + 208]            # ListSize
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 208], 0
                        mov              qword ptr [r9 + 216], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx775_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx775_41
.Lx775_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx775_41:              lea              r10, [rip + ListSize_γ]
                        lea              r11, [rip + ListSize_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n441_statement_begin_α]; jmp   rax
ListSize_γ:             mov              rdi, qword ptr [r9 + 208]            # ListSize
                        mov              rsi, qword ptr [r9 + 216]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 208], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 216], rax
                        cmp              rdx, 0;                              jbe   .Lx775_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx775_110
.Lx775_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx775_110:             mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ListSize_ω:             mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 208], rax            # ListSize
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 216], rax
                        cmp              rdx, 0;                              jbe   .Lx775_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx775_180
.Lx775_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx775_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx775_245:
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_end_α:                                                         jmp   n466_statement_begin_α
#=======================================================================================================================
# ListValue       place           =   LT(place, 0) n(x) + place
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_begin_α:                                                       jmp   n118_var_α
n117_statement_begin_β:                                                       jmp   n129_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx781_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_coerce_numeric_α
n119_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n117_statement_begin_β
.Lx781_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n120_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx783_1
                        cmp              al, 3;                               jne   .Lx783_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx783_0
.Lx783_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n121_coerce_numeric_α
.Lx783_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n121_coerce_numeric_α
n120_coerce_numeric_β:  add              rsp, 16;                             jmp   n119_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n121_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx785_1
                        cmp              al, 3;                               jne   .Lx785_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx785_0
.Lx785_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n122_cmp_test_α
.Lx785_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
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
                        cmp              dl, 3;                               jne   .Lx787_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx787_239
                        add              rsp, 16;                             jmp   n121_coerce_numeric_β
.Lx787_239:                                                                   jmp   n123_var_α
.Lx787_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx787_240
                        add              rsp, 16;                             jmp   n121_coerce_numeric_β
.Lx787_240:                                                                   jmp   n123_var_α
n122_cmp_test_β:        add              rsp, 16;                             jmp   n121_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_call_α
n123_var_β:             add              rsp, 16;                             jmp   n122_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n124_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd790:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd790]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx789_240
                        add              rsp, 16;                             jmp   n123_var_β
.Lx789_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_var_α
n124_call_β:            add              rsp, 16;                             jmp   n123_var_β
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n126_binop_α
n125_var_β:             add              rsp, 32;                             jmp   n123_var_β
#-----------------------------------------------------------------------------------------------------------------------
n126_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx792_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx792_7
.Lx792_2:               and              edx, 1;                              jz    .Lx792_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx792_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx792_4
.Lx792_3:               movq             xmm0, rsi
.Lx792_4:               cmp              cl, 5;                               je    .Lx792_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx792_6
.Lx792_5:               movq             xmm1, rdi
.Lx792_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx792_7:                                                                     jmp   n127_assign_α
.Lx792_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx792_240
                        add              rsp, 16;                             jmp   n125_var_β
.Lx792_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n127_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              qword ptr [r9 + 40], rdx;            jmp   n128_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_end_α:   add              rsp, 144;                            jmp   n129_statement_begin_α
#=======================================================================================================================
#                 ListValue       =   a(x)[place]                         :S(RETURN)F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_begin_α:                                                       jmp   n130_var_α
n129_statement_begin_β:                                                       jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n131_call_α
#-----------------------------------------------------------------------------------------------------------------------
n131_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd800:            .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd800]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx799_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n129_statement_begin_β
.Lx799_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n132_var_α
n131_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n129_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_subscript_α
n132_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n129_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n133_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx802_240
                        add              rsp, 16;                             jmp   n132_var_β
.Lx802_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n134_deref_α
n133_subscript_β:       add              rsp, 16;                             jmp   n132_var_β
#-----------------------------------------------------------------------------------------------------------------------
n134_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx803_240
                        add              rsp, 16;                             jmp   n133_subscript_β
.Lx803_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ListValue
                        mov              qword ptr [r9 + 8], rdx;             jmp   n136_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_end_α:   add              rsp, 80;                             jmp   RETURN
#=======================================================================================================================
# ListName        place           =   LT(place, 0) n(x) + place
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_begin_α:                                                       jmp   n138_var_α
n137_statement_begin_β:                                                       jmp   n149_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx810_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n140_coerce_numeric_α
n139_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n137_statement_begin_β
.Lx810_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n140_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx812_1
                        cmp              al, 3;                               jne   .Lx812_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx812_0
.Lx812_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n141_coerce_numeric_α
.Lx812_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n141_coerce_numeric_α
n140_coerce_numeric_β:  add              rsp, 16;                             jmp   n139_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n141_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx814_1
                        cmp              al, 3;                               jne   .Lx814_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx814_0
.Lx814_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n142_cmp_test_α
.Lx814_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n142_cmp_test_α
n141_coerce_numeric_β:  add              rsp, 16;                             jmp   n140_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n142_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx816_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx816_239
                        add              rsp, 16;                             jmp   n141_coerce_numeric_β
.Lx816_239:                                                                   jmp   n143_var_α
.Lx816_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx816_240
                        add              rsp, 16;                             jmp   n141_coerce_numeric_β
.Lx816_240:                                                                   jmp   n143_var_α
n142_cmp_test_β:        add              rsp, 16;                             jmp   n141_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n144_call_α
n143_var_β:             add              rsp, 16;                             jmp   n142_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n144_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd819:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd819]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx818_240
                        add              rsp, 16;                             jmp   n143_var_β
.Lx818_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n145_var_α
n144_call_β:            add              rsp, 16;                             jmp   n143_var_β
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n146_binop_α
n145_var_β:             add              rsp, 32;                             jmp   n143_var_β
#-----------------------------------------------------------------------------------------------------------------------
n146_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx821_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx821_7
.Lx821_2:               and              edx, 1;                              jz    .Lx821_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx821_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx821_4
.Lx821_3:               movq             xmm0, rsi
.Lx821_4:               cmp              cl, 5;                               je    .Lx821_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx821_6
.Lx821_5:               movq             xmm1, rdi
.Lx821_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx821_7:                                                                     jmp   n147_assign_α
.Lx821_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx821_240
                        add              rsp, 16;                             jmp   n145_var_β
.Lx821_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n147_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n147_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              qword ptr [r9 + 40], rdx;            jmp   n148_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_end_α:   add              rsp, 144;                            jmp   n149_statement_begin_α
#=======================================================================================================================
#                 ListName        =   .a(x)[place]                        :S(RETURN)F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_begin_α:                                                       jmp   n150_var_α
n149_statement_begin_β:                                                       jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n150_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n151_call_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd829:            .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd829]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx828_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n149_statement_begin_β
.Lx828_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n152_var_α
n151_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n149_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_subscript_α
n152_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n149_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n153_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx831_240
                        add              rsp, 16;                             jmp   n152_var_β
.Lx831_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n154_assign_α:          mov              rax, qword ptr [rsp + 0]             # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ListName
                        mov              qword ptr [r9 + 56], rdx;            jmp   n155_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_end_α:   add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# ListAppend      ListAppend      =   ListInsert(x, item, n(x))     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_begin_α:                                                       jmp   n157_var_α
n156_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n157_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n158_var_α
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # item
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_var_α
n158_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n156_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_call_α
n159_var_β:             add              rsp, 16;                             jmp   n158_var_β
#-----------------------------------------------------------------------------------------------------------------------
n160_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd841:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd841]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx840_240
                        add              rsp, 16;                             jmp   n159_var_β
.Lx840_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n161_call_α
n160_call_β:            add              rsp, 16;                             jmp   n159_var_β
#-----------------------------------------------------------------------------------------------------------------------
n161_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig843z]
                        lea              rax, [rip + ListInsert_α];           jmp   rax
.Lsig843z:              .quad            3
                        .quad            .Lx843_2
                        .quad            .Lx843_2
                        .quad            64
                        .quad            48
                        .quad            16
.Lx843_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx843_29
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
.Lx843_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx843_240
                        add              rsp, 32;                             jmp   n159_var_β
.Lx843_240:                                                                   jmp   n162_assign_α
n161_call_β:                                                                  jmp   n159_var_β
.Lx843_0:               .quad            .Lx843_0_s
.Lx843_0_s:             .string          "ListInsert"
#-----------------------------------------------------------------------------------------------------------------------
n162_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ListAppend
                        mov              qword ptr [r9 + 72], rdx;            jmp   n163_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_end_α:   add              rsp, 80;                             jmp   RETURN
#=======================================================================================================================
# ListPrepend     ListPrepend     =   ListInsert(x, item, 0)              :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_begin_α:                                                       jmp   n165_var_α
n164_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n166_var_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # item
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n167_lit_integer_α
n166_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n164_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx851_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n168_call_α
n167_lit_integer_β:     add              rsp, 16;                             jmp   n166_var_β
.Lx851_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n168_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig853z]
                        lea              rax, [rip + ListInsert_α];           jmp   rax
.Lsig853z:              .quad            3
                        .quad            .Lx853_2
                        .quad            .Lx853_2
                        .quad            48
                        .quad            32
                        .quad            16
.Lx853_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx853_29
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
.Lx853_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx853_240
                        add              rsp, 16;                             jmp   n167_lit_integer_β
.Lx853_240:                                                                   jmp   n169_assign_α
n168_call_β:                                                                  jmp   n167_lit_integer_β
.Lx853_0:               .quad            .Lx853_0_s
.Lx853_0_s:             .string          "ListInsert"
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ListPrepend
                        mov              qword ptr [r9 + 104], rdx;           jmp   n170_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# ListInsert      ListInsert      =   x
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_begin_α:                                                       jmp   n172_var_α
n171_statement_begin_β:                                                       jmp   n175_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n173_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n173_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ListInsert
                        mov              qword ptr [r9 + 120], rdx;           jmp   n174_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_end_α:   add              rsp, 16;                             jmp   n175_statement_begin_α
#=======================================================================================================================
#                 size            =   ListSize(x)
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_begin_α:                                                       jmp   n176_var_α
n175_statement_begin_β:                                                       jmp   n180_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n176_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n177_call_α
#-----------------------------------------------------------------------------------------------------------------------
n177_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig867z]
                        lea              rax, [rip + ListSize_α];             jmp   rax
.Lsig867z:              .quad            1
                        .quad            .Lx867_2
                        .quad            .Lx867_2
                        .quad            16
.Lx867_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx867_29
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
.Lx867_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx867_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n175_statement_begin_β
.Lx867_240:                                                                   jmp   n178_assign_α
n177_call_β:                                                                  jmp   n175_statement_begin_β
.Lx867_0:               .quad            .Lx867_0_s
.Lx867_0_s:             .string          "ListSize"
#-----------------------------------------------------------------------------------------------------------------------
n178_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # size
                        mov              qword ptr [r9 + 168], rdx;           jmp   n179_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_end_α:   add              rsp, 32;                             jmp   n180_statement_begin_α
#=======================================================================================================================
#                 place           =   LT(place, 0) n(x) + place
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_begin_α:                                                       jmp   n181_var_α
n180_statement_begin_β:                                                       jmp   n192_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n181_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n182_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx874_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n183_coerce_numeric_α
n182_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n180_statement_begin_β
.Lx874_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n183_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx876_1
                        cmp              al, 3;                               jne   .Lx876_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx876_0
.Lx876_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n184_coerce_numeric_α
.Lx876_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n184_coerce_numeric_α
n183_coerce_numeric_β:  add              rsp, 16;                             jmp   n182_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n184_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx878_1
                        cmp              al, 3;                               jne   .Lx878_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx878_0
.Lx878_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n185_cmp_test_α
.Lx878_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n185_cmp_test_α
n184_coerce_numeric_β:  add              rsp, 16;                             jmp   n183_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n185_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx880_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx880_239
                        add              rsp, 16;                             jmp   n184_coerce_numeric_β
.Lx880_239:                                                                   jmp   n186_var_α
.Lx880_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx880_240
                        add              rsp, 16;                             jmp   n184_coerce_numeric_β
.Lx880_240:                                                                   jmp   n186_var_α
n185_cmp_test_β:        add              rsp, 16;                             jmp   n184_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n187_call_α
n186_var_β:             add              rsp, 16;                             jmp   n185_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n187_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd883:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd883]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx882_240
                        add              rsp, 16;                             jmp   n186_var_β
.Lx882_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n188_var_α
n187_call_β:            add              rsp, 16;                             jmp   n186_var_β
#-----------------------------------------------------------------------------------------------------------------------
n188_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n189_binop_α
n188_var_β:             add              rsp, 32;                             jmp   n186_var_β
#-----------------------------------------------------------------------------------------------------------------------
n189_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx885_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx885_7
.Lx885_2:               and              edx, 1;                              jz    .Lx885_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx885_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx885_4
.Lx885_3:               movq             xmm0, rsi
.Lx885_4:               cmp              cl, 5;                               je    .Lx885_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx885_6
.Lx885_5:               movq             xmm1, rdi
.Lx885_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx885_7:                                                                     jmp   n190_assign_α
.Lx885_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx885_240
                        add              rsp, 16;                             jmp   n188_var_β
.Lx885_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n190_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n190_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              qword ptr [r9 + 40], rdx;            jmp   n191_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_end_α:   add              rsp, 144;                            jmp   n192_statement_begin_α
#=======================================================================================================================
#                 GE(place, 0)                                            :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_begin_α:                                                       jmp   n193_var_α
n192_statement_begin_β:                                                       jmp   n708_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n194_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx892_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n195_coerce_numeric_α
n194_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n192_statement_begin_β
.Lx892_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n195_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx894_1
                        cmp              al, 3;                               jne   .Lx894_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx894_0
.Lx894_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n196_coerce_numeric_α
.Lx894_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 109
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n196_coerce_numeric_α
n195_coerce_numeric_β:  add              rsp, 16;                             jmp   n194_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n196_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx896_1
                        cmp              al, 3;                               jne   .Lx896_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx896_0
.Lx896_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n197_cmp_test_α
.Lx896_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 110
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n197_cmp_test_α
n196_coerce_numeric_β:  add              rsp, 16;                             jmp   n195_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n197_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx898_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jge   .Lx898_239
                        add              rsp, 16;                             jmp   n196_coerce_numeric_β
.Lx898_239:                                                                   jmp   n198_statement_end_α
.Lx898_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jns   .Lx898_240
                        add              rsp, 16;                             jmp   n196_coerce_numeric_β
.Lx898_240:                                                                   jmp   n198_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_end_α:   add              rsp, 80;                             jmp   n199_statement_begin_α
#=======================================================================================================================
#                 LE(place, n(x))                                         :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_begin_α:                                                       jmp   n200_var_α
n199_statement_begin_β:                                                       jmp   n708_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n200_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n201_var_α
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_call_α
n201_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n199_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n202_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd906:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd906]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx905_240
                        add              rsp, 16;                             jmp   n201_var_β
.Lx905_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n203_coerce_numeric_α
n202_call_β:            add              rsp, 16;                             jmp   n201_var_β
#-----------------------------------------------------------------------------------------------------------------------
n203_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 5;                               je    .Lx908_1
                        cmp              al, 3;                               jne   .Lx908_0
                        mov              eax, dword ptr [rsp + 16]            # call
                        cmp              al, 3;                               jne   .Lx908_0
.Lx908_1:               mov              rax, qword ptr [rsp + 48]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 56]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n204_coerce_numeric_α
.Lx908_0:               lea              rdi, [rsp + 48]
                        lea              rsi, [rsp + 16]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n204_coerce_numeric_α
n203_coerce_numeric_β:  add              rsp, 32;                             jmp   n201_var_β
#-----------------------------------------------------------------------------------------------------------------------
n204_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              al, 5;                               je    .Lx910_1
                        cmp              al, 3;                               jne   .Lx910_0
                        mov              eax, dword ptr [rsp + 64]            # var
                        cmp              al, 3;                               jne   .Lx910_0
.Lx910_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n205_cmp_test_α
.Lx910_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 64]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n205_cmp_test_α
n204_coerce_numeric_β:  add              rsp, 16;                             jmp   n203_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n205_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx912_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lx912_239
                        add              rsp, 16;                             jmp   n204_coerce_numeric_β
.Lx912_239:                                                                   jmp   n206_statement_end_α
.Lx912_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jle   .Lx912_240
                        add              rsp, 16;                             jmp   n204_coerce_numeric_β
.Lx912_240:                                                                   jmp   n206_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_end_α:   add              rsp, 96;                             jmp   n207_statement_begin_α
#=======================================================================================================================
#                 LT(n(x), size)                                          :F(ListInsert4)
#-----------------------------------------------------------------------------------------------------------------------
n207_statement_begin_α:                                                       jmp   n208_var_α
n207_statement_begin_β:                                                       jmp   n259_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n209_call_α
#-----------------------------------------------------------------------------------------------------------------------
n209_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd919:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd919]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx918_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n207_statement_begin_β
.Lx918_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n210_var_α
n209_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n207_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n210_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # size
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n211_coerce_numeric_α
n210_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n207_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n211_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              al, 5;                               je    .Lx922_1
                        cmp              al, 3;                               jne   .Lx922_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lx922_0
.Lx922_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n212_coerce_numeric_α
.Lx922_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n212_coerce_numeric_α
n211_coerce_numeric_β:  add              rsp, 16;                             jmp   n210_var_β
#-----------------------------------------------------------------------------------------------------------------------
n212_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx924_1
                        cmp              al, 3;                               jne   .Lx924_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              al, 3;                               jne   .Lx924_0
.Lx924_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n213_cmp_test_α
.Lx924_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n213_cmp_test_α
n212_coerce_numeric_β:  add              rsp, 16;                             jmp   n211_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n213_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx926_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx926_239
                        add              rsp, 16;                             jmp   n212_coerce_numeric_β
.Lx926_239:                                                                   jmp   n214_statement_end_α
.Lx926_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx926_240
                        add              rsp, 16;                             jmp   n212_coerce_numeric_β
.Lx926_240:                                                                   jmp   n214_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n214_statement_end_α:   add              rsp, 96;                             jmp   n215_statement_begin_α
#=======================================================================================================================
#                 i               =   n(x) + 1
#-----------------------------------------------------------------------------------------------------------------------
n215_statement_begin_α:                                                       jmp   n216_var_α
n215_statement_begin_β:                                                       jmp   n222_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n216_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n217_call_α
#-----------------------------------------------------------------------------------------------------------------------
n217_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd933:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd933]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx932_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n215_statement_begin_β
.Lx932_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n218_lit_integer_α
n217_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n215_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx934_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n219_binop_α
n218_lit_integer_β:     add              rsp, 16
                        add              rsp, 32;                             jmp   n215_statement_begin_β
.Lx934_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n219_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # call
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx935_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx935_7
.Lx935_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx935_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx935_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx935_4
.Lx935_3:               movq             xmm0, rsi
.Lx935_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx935_7:                                                                     jmp   n220_assign_α
.Lx935_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx935_240
                        add              rsp, 16;                             jmp   n218_lit_integer_β
.Lx935_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n220_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n220_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n221_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n221_statement_end_α:   add              rsp, 64;                             jmp   n222_statement_begin_α
#=======================================================================================================================
# ListInsert1     i               =   GT(i, place + 1) i - 1              :F(ListInsert2)
#-----------------------------------------------------------------------------------------------------------------------
n222_statement_begin_α:                                                       jmp   n223_var_α
n222_statement_begin_β:                                                       jmp   n249_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n223_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n224_var_α
#-----------------------------------------------------------------------------------------------------------------------
n224_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n225_lit_integer_α
n224_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n222_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx943_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n226_binop_α
n225_lit_integer_β:     add              rsp, 16;                             jmp   n224_var_β
.Lx943_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n226_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx944_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx944_7
.Lx944_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx944_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx944_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx944_4
.Lx944_3:               movq             xmm0, rsi
.Lx944_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx944_7:                                                                     jmp   n227_coerce_numeric_α
.Lx944_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx944_240
                        add              rsp, 16;                             jmp   n225_lit_integer_β
.Lx944_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n227_coerce_numeric_α
n226_binop_β:           add              rsp, 16;                             jmp   n225_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n227_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 64]            # var
                        cmp              al, 5;                               je    .Lx946_1
                        cmp              al, 3;                               jne   .Lx946_0
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              al, 3;                               jne   .Lx946_0
.Lx946_1:               mov              rax, qword ptr [rsp + 64]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n228_coerce_numeric_α
.Lx946_0:               lea              rdi, [rsp + 64]
                        lea              rsi, [rsp + 16]                      # binop
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n228_coerce_numeric_α
n227_coerce_numeric_β:  add              rsp, 16;                             jmp   n226_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n228_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              al, 5;                               je    .Lx948_1
                        cmp              al, 3;                               jne   .Lx948_0
                        mov              eax, dword ptr [rsp + 80]            # var
                        cmp              al, 3;                               jne   .Lx948_0
.Lx948_1:               mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n229_cmp_test_α
.Lx948_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 80]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n229_cmp_test_α
n228_coerce_numeric_β:  add              rsp, 16;                             jmp   n227_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n229_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx950_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lx950_239
                        add              rsp, 16;                             jmp   n228_coerce_numeric_β
.Lx950_239:                                                                   jmp   n230_var_α
.Lx950_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jg    .Lx950_240
                        add              rsp, 16;                             jmp   n228_coerce_numeric_β
.Lx950_240:                                                                   jmp   n230_var_α
n229_cmp_test_β:        add              rsp, 16;                             jmp   n228_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n230_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n231_lit_integer_α
n230_var_β:             add              rsp, 16;                             jmp   n229_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx952_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n232_binop_α
n231_lit_integer_β:     add              rsp, 16;                             jmp   n230_var_β
.Lx952_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n232_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx953_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx953_7
.Lx953_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx953_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx953_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx953_4
.Lx953_3:               movq             xmm0, rsi
.Lx953_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx953_7:                                                                     jmp   n233_assign_α
.Lx953_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx953_240
                        add              rsp, 16;                             jmp   n231_lit_integer_β
.Lx953_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n233_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n233_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n234_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n234_statement_end_α:   add              rsp, 160;                            jmp   n235_statement_begin_α
#=======================================================================================================================
#                 a(x)[i]         =   a(x)[i - 1]                         :(ListInsert1)
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_begin_α:                                                       jmp   n236_var_α
n235_statement_begin_β:                                                       jmp   n222_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n237_call_α
#-----------------------------------------------------------------------------------------------------------------------
n237_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd961:            .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd961]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx960_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n235_statement_begin_β
.Lx960_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n238_var_α
n237_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n235_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n239_subscript_α
n238_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n235_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n239_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx963_240
                        add              rsp, 16;                             jmp   n238_var_β
.Lx963_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n240_var_α
n239_subscript_β:       add              rsp, 16;                             jmp   n238_var_β
#-----------------------------------------------------------------------------------------------------------------------
n240_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n241_call_α
n240_var_β:             add              rsp, 16;                             jmp   n239_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n241_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd966:            .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd966]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx965_240
                        add              rsp, 16;                             jmp   n240_var_β
.Lx965_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_var_α
n241_call_β:            add              rsp, 16;                             jmp   n240_var_β
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n243_lit_integer_α
n242_var_β:             add              rsp, 32;                             jmp   n240_var_β
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx968_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n244_binop_α
n243_lit_integer_β:     add              rsp, 16;                             jmp   n242_var_β
.Lx968_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n244_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx969_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx969_7
.Lx969_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx969_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx969_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx969_4
.Lx969_3:               movq             xmm0, rsi
.Lx969_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx969_7:                                                                     jmp   n245_subscript_α
.Lx969_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx969_240
                        add              rsp, 16;                             jmp   n243_lit_integer_β
.Lx969_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n245_subscript_α
n244_binop_β:           add              rsp, 16;                             jmp   n243_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n245_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # call
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx970_240
                        add              rsp, 16;                             jmp   n244_binop_β
.Lx970_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n246_deref_α
n245_subscript_β:       add              rsp, 16;                             jmp   n244_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n246_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx971_240
                        add              rsp, 16;                             jmp   n245_subscript_β
.Lx971_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n247_assign_var_α
n246_deref_β:           add              rsp, 16;                             jmp   n245_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n247_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]           # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx972_240
                        add              rsp, 16;                             jmp   n246_deref_β
.Lx972_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n248_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_end_α:   add              rsp, 192;                            jmp   n222_statement_begin_α
#=======================================================================================================================
# ListInsert2     a(x)[i - 1]     =   item                                :(ListInsert9)
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_begin_α:                                                       jmp   n250_var_α
n249_statement_begin_β:                                                       jmp   n341_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_call_α
#-----------------------------------------------------------------------------------------------------------------------
n251_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd979:            .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd979]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx978_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n249_statement_begin_β
.Lx978_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n252_var_α
n251_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n249_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n252_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n253_lit_integer_α
n252_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n249_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx981_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n254_binop_α
n253_lit_integer_β:     add              rsp, 16;                             jmp   n252_var_β
.Lx981_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n254_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx982_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx982_7
.Lx982_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx982_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx982_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx982_4
.Lx982_3:               movq             xmm0, rsi
.Lx982_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx982_7:                                                                     jmp   n255_subscript_α
.Lx982_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx982_240
                        add              rsp, 16;                             jmp   n253_lit_integer_β
.Lx982_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n255_subscript_α
n254_binop_β:           add              rsp, 16;                             jmp   n253_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n255_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # call
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx983_240
                        add              rsp, 16;                             jmp   n254_binop_β
.Lx983_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n256_var_α
n255_subscript_β:       add              rsp, 16;                             jmp   n254_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # item
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n257_assign_var_α
n256_var_β:             add              rsp, 16;                             jmp   n255_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n257_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx985_240
                        add              rsp, 16;                             jmp   n256_var_β
.Lx985_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n258_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n258_statement_end_α:   add              rsp, 128;                            jmp   n341_statement_begin_α
#=======================================================================================================================
# ListInsert4     a               =   ARRAY('0:' (IDENT(a(x)) 0, size * 2 - 1))
#-----------------------------------------------------------------------------------------------------------------------
n259_statement_begin_α:                                                       jmp   n260_lit_string_α
n259_statement_begin_β:                                                       jmp   n270_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx990_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n261_var_α
.Lx990_0:               .quad            .Lx990_0_s
.Lx990_0_s:             .string          "0:"
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n262_call_α
n261_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n259_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n262_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd993:            .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd993]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx992_240
                        add              rsp, 16;                             jmp   n261_var_β
.Lx992_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n263_call_α
n262_call_β:            add              rsp, 16;                             jmp   n261_var_β
#-----------------------------------------------------------------------------------------------------------------------
n263_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd995:            .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd995]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx994_240
                        add              rsp, 32;                             jmp   n261_var_β
.Lx994_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n264_lit_integer_α
n263_call_β:            add              rsp, 32;                             jmp   n261_var_β
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx996_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n265_binop_α
n264_lit_integer_β:     add              rsp, 48;                             jmp   n261_var_β
.Lx996_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n265_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n266_binop_α
n265_binop_β:           add              rsp, 16;                             jmp   n264_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n266_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 96]            # lit_string
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n267_call_α
n266_binop_β:           add              rsp, 16;                             jmp   n265_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n267_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1000:           .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1000]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx999_240
                        add              rsp, 16;                             jmp   n266_binop_β
.Lx999_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n268_assign_α
n267_call_β:            add              rsp, 16;                             jmp   n266_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n268_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # a
                        mov              qword ptr [r9 + 136], rdx;           jmp   n269_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n269_statement_end_α:   add              rsp, 128;                            jmp   n270_statement_begin_α
#=======================================================================================================================
#                 i               =   -1
#-----------------------------------------------------------------------------------------------------------------------
n270_statement_begin_α:                                                       jmp   n271_lit_integer_α
n270_statement_begin_β:                                                       jmp   n275_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1006_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n272_unop_α
.Lx1006_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n272_unop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n273_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n273_assign_α:          mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n274_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n274_statement_end_α:   add              rsp, 32;                             jmp   n275_statement_begin_α
#=======================================================================================================================
# ListInsert5     i               =   LT(i, place - 1) i + 1              :F(ListInsert6)
#-----------------------------------------------------------------------------------------------------------------------
n275_statement_begin_α:                                                       jmp   n276_var_α
n275_statement_begin_β:                                                       jmp   n299_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n276_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n277_var_α
#-----------------------------------------------------------------------------------------------------------------------
n277_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n278_lit_integer_α
n277_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n275_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1015_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n279_binop_α
n278_lit_integer_β:     add              rsp, 16;                             jmp   n277_var_β
.Lx1015_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n279_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1016_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1016_7
.Lx1016_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1016_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1016_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1016_4
.Lx1016_3:              movq             xmm0, rsi
.Lx1016_4:              cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1016_7:                                                                    jmp   n280_coerce_numeric_α
.Lx1016_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1016_240
                        add              rsp, 16;                             jmp   n278_lit_integer_β
.Lx1016_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n280_coerce_numeric_α
n279_binop_β:           add              rsp, 16;                             jmp   n278_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n280_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 64]            # var
                        cmp              al, 5;                               je    .Lx1018_1
                        cmp              al, 3;                               jne   .Lx1018_0
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              al, 3;                               jne   .Lx1018_0
.Lx1018_1:              mov              rax, qword ptr [rsp + 64]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n281_coerce_numeric_α
.Lx1018_0:              lea              rdi, [rsp + 64]
                        lea              rsi, [rsp + 16]                      # binop
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n281_coerce_numeric_α
n280_coerce_numeric_β:  add              rsp, 16;                             jmp   n279_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n281_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              al, 5;                               je    .Lx1020_1
                        cmp              al, 3;                               jne   .Lx1020_0
                        mov              eax, dword ptr [rsp + 80]            # var
                        cmp              al, 3;                               jne   .Lx1020_0
.Lx1020_1:              mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n282_cmp_test_α
.Lx1020_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 80]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n282_cmp_test_α
n281_coerce_numeric_β:  add              rsp, 16;                             jmp   n280_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n282_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1022_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx1022_239
                        add              rsp, 16;                             jmp   n281_coerce_numeric_β
.Lx1022_239:                                                                  jmp   n283_var_α
.Lx1022_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx1022_240
                        add              rsp, 16;                             jmp   n281_coerce_numeric_β
.Lx1022_240:                                                                  jmp   n283_var_α
n282_cmp_test_β:        add              rsp, 16;                             jmp   n281_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n284_lit_integer_α
n283_var_β:             add              rsp, 16;                             jmp   n282_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1024_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n285_binop_α
n284_lit_integer_β:     add              rsp, 16;                             jmp   n283_var_β
.Lx1024_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n285_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1025_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1025_7
.Lx1025_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1025_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1025_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1025_4
.Lx1025_3:              movq             xmm0, rsi
.Lx1025_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1025_7:                                                                    jmp   n286_assign_α
.Lx1025_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1025_240
                        add              rsp, 16;                             jmp   n284_lit_integer_β
.Lx1025_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n286_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n286_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n287_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n287_statement_end_α:   add              rsp, 160;                            jmp   n288_statement_begin_α
#=======================================================================================================================
#                 a[i]            =   a(x)[i]                             :(ListInsert5)
#-----------------------------------------------------------------------------------------------------------------------
n288_statement_begin_α:                                                       jmp   n289_var_α
n288_statement_begin_β:                                                       jmp   n275_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n289_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # a
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n290_var_α
#-----------------------------------------------------------------------------------------------------------------------
n290_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n291_subscript_α
n290_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n288_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n291_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1033_240
                        add              rsp, 16;                             jmp   n290_var_β
.Lx1033_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n292_var_α
n291_subscript_β:       add              rsp, 16;                             jmp   n290_var_β
#-----------------------------------------------------------------------------------------------------------------------
n292_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n293_call_α
n292_var_β:             add              rsp, 16;                             jmp   n291_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n293_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1036:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1036]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1035_240
                        add              rsp, 16;                             jmp   n292_var_β
.Lx1035_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n294_var_α
n293_call_β:            add              rsp, 16;                             jmp   n292_var_β
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_subscript_α
n294_var_β:             add              rsp, 32;                             jmp   n292_var_β
#-----------------------------------------------------------------------------------------------------------------------
n295_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1038_240
                        add              rsp, 16;                             jmp   n294_var_β
.Lx1038_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n296_deref_α
n295_subscript_β:       add              rsp, 16;                             jmp   n294_var_β
#-----------------------------------------------------------------------------------------------------------------------
n296_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1039_240
                        add              rsp, 16;                             jmp   n295_subscript_β
.Lx1039_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n297_assign_var_α
n296_deref_β:           add              rsp, 16;                             jmp   n295_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n297_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 96]            # subscript
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1040_240
                        add              rsp, 16;                             jmp   n296_deref_β
.Lx1040_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n298_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n298_statement_end_α:   add              rsp, 144;                            jmp   n275_statement_begin_α
#=======================================================================================================================
# ListInsert6     a[i + 1]        =   item
#-----------------------------------------------------------------------------------------------------------------------
n299_statement_begin_α:                                                       jmp   n300_var_α
n299_statement_begin_β:                                                       jmp   n308_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n300_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # a
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n301_var_α
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n302_lit_integer_α
n301_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n299_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1047_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n303_binop_α
n302_lit_integer_β:     add              rsp, 16;                             jmp   n301_var_β
.Lx1047_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n303_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1048_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1048_7
.Lx1048_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1048_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1048_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1048_4
.Lx1048_3:              movq             xmm0, rsi
.Lx1048_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1048_7:                                                                    jmp   n304_subscript_α
.Lx1048_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1048_240
                        add              rsp, 16;                             jmp   n302_lit_integer_β
.Lx1048_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n304_subscript_α
n303_binop_β:           add              rsp, 16;                             jmp   n302_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n304_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1049_240
                        add              rsp, 16;                             jmp   n303_binop_β
.Lx1049_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n305_var_α
n304_subscript_β:       add              rsp, 16;                             jmp   n303_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # item
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n306_assign_var_α
n305_var_β:             add              rsp, 16;                             jmp   n304_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n306_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1051_240
                        add              rsp, 16;                             jmp   n305_var_β
.Lx1051_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n307_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n307_statement_end_α:   add              rsp, 112;                            jmp   n308_statement_begin_α
#=======================================================================================================================
# ListInsert7     i               =   LT(i, n(x) - 1) i + 1               :F(ListInsert8)
#-----------------------------------------------------------------------------------------------------------------------
n308_statement_begin_α:                                                       jmp   n309_var_α
n308_statement_begin_β:                                                       jmp   n335_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n310_var_α
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n311_call_α
n310_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n308_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n311_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1059:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1059]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1058_240
                        add              rsp, 16;                             jmp   n310_var_β
.Lx1058_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n312_lit_integer_α
n311_call_β:            add              rsp, 16;                             jmp   n310_var_β
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1060_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n313_binop_α
n312_lit_integer_β:     add              rsp, 32;                             jmp   n310_var_β
.Lx1060_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n313_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # call
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1061_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1061_7
.Lx1061_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1061_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1061_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1061_4
.Lx1061_3:              movq             xmm0, rsi
.Lx1061_4:              cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1061_7:                                                                    jmp   n314_coerce_numeric_α
.Lx1061_0:              mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1061_240
                        add              rsp, 16;                             jmp   n312_lit_integer_β
.Lx1061_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n314_coerce_numeric_α
n313_binop_β:           add              rsp, 16;                             jmp   n312_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n314_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 80]            # var
                        cmp              al, 5;                               je    .Lx1063_1
                        cmp              al, 3;                               jne   .Lx1063_0
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              al, 3;                               jne   .Lx1063_0
.Lx1063_1:              mov              rax, qword ptr [rsp + 80]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n315_coerce_numeric_α
.Lx1063_0:              lea              rdi, [rsp + 80]
                        lea              rsi, [rsp + 16]                      # binop
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n315_coerce_numeric_α
n314_coerce_numeric_β:  add              rsp, 16;                             jmp   n313_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n315_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              al, 5;                               je    .Lx1065_1
                        cmp              al, 3;                               jne   .Lx1065_0
                        mov              eax, dword ptr [rsp + 96]            # var
                        cmp              al, 3;                               jne   .Lx1065_0
.Lx1065_1:              mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n316_cmp_test_α
.Lx1065_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 96]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n316_cmp_test_α
n315_coerce_numeric_β:  add              rsp, 16;                             jmp   n314_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n316_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1067_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx1067_239
                        add              rsp, 16;                             jmp   n315_coerce_numeric_β
.Lx1067_239:                                                                  jmp   n317_var_α
.Lx1067_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx1067_240
                        add              rsp, 16;                             jmp   n315_coerce_numeric_β
.Lx1067_240:                                                                  jmp   n317_var_α
n316_cmp_test_β:        add              rsp, 16;                             jmp   n315_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n317_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n318_lit_integer_α
n317_var_β:             add              rsp, 16;                             jmp   n316_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1069_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n319_binop_α
n318_lit_integer_β:     add              rsp, 16;                             jmp   n317_var_β
.Lx1069_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n319_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1070_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1070_7
.Lx1070_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1070_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1070_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1070_4
.Lx1070_3:              movq             xmm0, rsi
.Lx1070_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1070_7:                                                                    jmp   n320_assign_α
.Lx1070_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1070_240
                        add              rsp, 16;                             jmp   n318_lit_integer_β
.Lx1070_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n320_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n320_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n321_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n321_statement_end_α:   add              rsp, 176;                            jmp   n322_statement_begin_α
#=======================================================================================================================
#                 a[i + 1]        =   a(x)[i]                             :(ListInsert7)
#-----------------------------------------------------------------------------------------------------------------------
n322_statement_begin_α:                                                       jmp   n323_var_α
n322_statement_begin_β:                                                       jmp   n308_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # a
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n324_var_α
#-----------------------------------------------------------------------------------------------------------------------
n324_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n325_lit_integer_α
n324_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n322_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1078_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n326_binop_α
n325_lit_integer_β:     add              rsp, 16;                             jmp   n324_var_β
.Lx1078_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n326_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1079_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1079_7
.Lx1079_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1079_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1079_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1079_4
.Lx1079_3:              movq             xmm0, rsi
.Lx1079_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1079_7:                                                                    jmp   n327_subscript_α
.Lx1079_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1079_240
                        add              rsp, 16;                             jmp   n325_lit_integer_β
.Lx1079_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n327_subscript_α
n326_binop_β:           add              rsp, 16;                             jmp   n325_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n327_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1080_240
                        add              rsp, 16;                             jmp   n326_binop_β
.Lx1080_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n328_var_α
n327_subscript_β:       add              rsp, 16;                             jmp   n326_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n328_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n329_call_α
n328_var_β:             add              rsp, 16;                             jmp   n327_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n329_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1083:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1083]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1082_240
                        add              rsp, 16;                             jmp   n328_var_β
.Lx1082_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n330_var_α
n329_call_β:            add              rsp, 16;                             jmp   n328_var_β
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n331_subscript_α
n330_var_β:             add              rsp, 32;                             jmp   n328_var_β
#-----------------------------------------------------------------------------------------------------------------------
n331_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1085_240
                        add              rsp, 16;                             jmp   n330_var_β
.Lx1085_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n332_deref_α
n331_subscript_β:       add              rsp, 16;                             jmp   n330_var_β
#-----------------------------------------------------------------------------------------------------------------------
n332_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1086_240
                        add              rsp, 16;                             jmp   n331_subscript_β
.Lx1086_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n333_assign_var_α
n332_deref_β:           add              rsp, 16;                             jmp   n331_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n333_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 96]            # subscript
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1087_240
                        add              rsp, 16;                             jmp   n332_deref_β
.Lx1087_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n334_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n334_statement_end_α:   add              rsp, 176;                            jmp   n308_statement_begin_α
#=======================================================================================================================
# ListInsert8     a(x)            =   a
#-----------------------------------------------------------------------------------------------------------------------
n335_statement_begin_α:                                                       jmp   n336_var_α
n335_statement_begin_β:                                                       jmp   n341_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n336_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n337_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n337_field_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1093_0]
                        mov              rsi, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1093_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n335_statement_begin_β
.Lx1093_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n338_var_α
n337_field_var_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n335_statement_begin_β
.Lx1093_0:              .quad            .Lx1093_0_s
.Lx1093_0_s:            .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n338_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # a
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n339_assign_var_α
n338_var_β:             add              rsp, 16;                             jmp   n337_field_var_β
#-----------------------------------------------------------------------------------------------------------------------
n339_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # field_var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1095_240
                        add              rsp, 16;                             jmp   n338_var_β
.Lx1095_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n340_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n340_statement_end_α:   add              rsp, 64;                             jmp   n341_statement_begin_α
#=======================================================================================================================
# ListInsert9     n(x)            =   n(x) + 1                            :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n341_statement_begin_α:                                                       jmp   n342_var_α
n341_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n342_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n343_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n343_field_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1101_0]
                        mov              rsi, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1101_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n341_statement_begin_β
.Lx1101_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n344_var_α
n343_field_var_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n341_statement_begin_β
.Lx1101_0:              .quad            .Lx1101_0_s
.Lx1101_0_s:            .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n344_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n345_call_α
n344_var_β:             add              rsp, 16;                             jmp   n343_field_var_β
#-----------------------------------------------------------------------------------------------------------------------
n345_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1104:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1104]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1103_240
                        add              rsp, 16;                             jmp   n344_var_β
.Lx1103_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n346_lit_integer_α
n345_call_β:            add              rsp, 16;                             jmp   n344_var_β
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1105_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n347_binop_α
n346_lit_integer_β:     add              rsp, 32;                             jmp   n344_var_β
.Lx1105_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n347_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # call
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1106_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1106_7
.Lx1106_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1106_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1106_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1106_4
.Lx1106_3:              movq             xmm0, rsi
.Lx1106_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1106_7:                                                                    jmp   n348_assign_var_α
.Lx1106_0:              mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1106_240
                        add              rsp, 16;                             jmp   n346_lit_integer_β
.Lx1106_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n348_assign_var_α
n347_binop_β:           add              rsp, 16;                             jmp   n346_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n348_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]            # field_var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1107_240
                        add              rsp, 16;                             jmp   n347_binop_β
.Lx1107_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n349_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n349_statement_end_α:   add              rsp, 112;                            jmp   RETURN
#=======================================================================================================================
# ListRemove      place           =   LT(place, 0) n(x) + place
#-----------------------------------------------------------------------------------------------------------------------
n350_statement_begin_α:                                                       jmp   n351_var_α
n350_statement_begin_β:                                                       jmp   n362_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n351_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n352_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1113_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n353_coerce_numeric_α
n352_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n350_statement_begin_β
.Lx1113_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n353_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx1115_1
                        cmp              al, 3;                               jne   .Lx1115_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx1115_0
.Lx1115_1:              mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n354_coerce_numeric_α
.Lx1115_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n354_coerce_numeric_α
n353_coerce_numeric_β:  add              rsp, 16;                             jmp   n352_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n354_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx1117_1
                        cmp              al, 3;                               jne   .Lx1117_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx1117_0
.Lx1117_1:              mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n355_cmp_test_α
.Lx1117_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n355_cmp_test_α
n354_coerce_numeric_β:  add              rsp, 16;                             jmp   n353_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n355_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1119_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx1119_239
                        add              rsp, 16;                             jmp   n354_coerce_numeric_β
.Lx1119_239:                                                                  jmp   n356_var_α
.Lx1119_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx1119_240
                        add              rsp, 16;                             jmp   n354_coerce_numeric_β
.Lx1119_240:                                                                  jmp   n356_var_α
n355_cmp_test_β:        add              rsp, 16;                             jmp   n354_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n356_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n357_call_α
n356_var_β:             add              rsp, 16;                             jmp   n355_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n357_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1122:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1122]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1121_240
                        add              rsp, 16;                             jmp   n356_var_β
.Lx1121_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n358_var_α
n357_call_β:            add              rsp, 16;                             jmp   n356_var_β
#-----------------------------------------------------------------------------------------------------------------------
n358_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n359_binop_α
n358_var_β:             add              rsp, 32;                             jmp   n356_var_β
#-----------------------------------------------------------------------------------------------------------------------
n359_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1124_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1124_7
.Lx1124_2:              and              edx, 1;                              jz    .Lx1124_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx1124_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1124_4
.Lx1124_3:              movq             xmm0, rsi
.Lx1124_4:              cmp              cl, 5;                               je    .Lx1124_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1124_6
.Lx1124_5:              movq             xmm1, rdi
.Lx1124_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1124_7:                                                                    jmp   n360_assign_α
.Lx1124_0:              mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1124_240
                        add              rsp, 16;                             jmp   n358_var_β
.Lx1124_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n360_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n360_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              qword ptr [r9 + 40], rdx;            jmp   n361_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n361_statement_end_α:   add              rsp, 144;                            jmp   n362_statement_begin_α
#=======================================================================================================================
#                 GE(place, 0)                                            :F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n362_statement_begin_α:                                                       jmp   n363_var_α
n362_statement_begin_β:                                                       jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n363_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n364_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1131_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n365_coerce_numeric_α
n364_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n362_statement_begin_β
.Lx1131_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n365_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx1133_1
                        cmp              al, 3;                               jne   .Lx1133_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx1133_0
.Lx1133_1:              mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n366_coerce_numeric_α
.Lx1133_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 109
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n366_coerce_numeric_α
n365_coerce_numeric_β:  add              rsp, 16;                             jmp   n364_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n366_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx1135_1
                        cmp              al, 3;                               jne   .Lx1135_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx1135_0
.Lx1135_1:              mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n367_cmp_test_α
.Lx1135_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 110
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n367_cmp_test_α
n366_coerce_numeric_β:  add              rsp, 16;                             jmp   n365_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n367_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1137_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jge   .Lx1137_239
                        add              rsp, 16;                             jmp   n366_coerce_numeric_β
.Lx1137_239:                                                                  jmp   n368_statement_end_α
.Lx1137_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jns   .Lx1137_240
                        add              rsp, 16;                             jmp   n366_coerce_numeric_β
.Lx1137_240:                                                                  jmp   n368_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n368_statement_end_α:   add              rsp, 80;                             jmp   n369_statement_begin_α
#=======================================================================================================================
#                 LT(place, n(x))                                         :F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n369_statement_begin_α:                                                       jmp   n370_var_α
n369_statement_begin_β:                                                       jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n371_var_α
#-----------------------------------------------------------------------------------------------------------------------
n371_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n372_call_α
n371_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n369_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n372_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1145:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1145]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1144_240
                        add              rsp, 16;                             jmp   n371_var_β
.Lx1144_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n373_coerce_numeric_α
n372_call_β:            add              rsp, 16;                             jmp   n371_var_β
#-----------------------------------------------------------------------------------------------------------------------
n373_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 5;                               je    .Lx1147_1
                        cmp              al, 3;                               jne   .Lx1147_0
                        mov              eax, dword ptr [rsp + 16]            # call
                        cmp              al, 3;                               jne   .Lx1147_0
.Lx1147_1:              mov              rax, qword ptr [rsp + 48]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 56]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n374_coerce_numeric_α
.Lx1147_0:              lea              rdi, [rsp + 48]
                        lea              rsi, [rsp + 16]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n374_coerce_numeric_α
n373_coerce_numeric_β:  add              rsp, 32;                             jmp   n371_var_β
#-----------------------------------------------------------------------------------------------------------------------
n374_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              al, 5;                               je    .Lx1149_1
                        cmp              al, 3;                               jne   .Lx1149_0
                        mov              eax, dword ptr [rsp + 64]            # var
                        cmp              al, 3;                               jne   .Lx1149_0
.Lx1149_1:              mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n375_cmp_test_α
.Lx1149_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 64]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n375_cmp_test_α
n374_coerce_numeric_β:  add              rsp, 16;                             jmp   n373_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n375_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1151_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx1151_239
                        add              rsp, 16;                             jmp   n374_coerce_numeric_β
.Lx1151_239:                                                                  jmp   n376_statement_end_α
.Lx1151_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx1151_240
                        add              rsp, 16;                             jmp   n374_coerce_numeric_β
.Lx1151_240:                                                                  jmp   n376_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n376_statement_end_α:   add              rsp, 96;                             jmp   n377_statement_begin_α
#=======================================================================================================================
#                 ListRemove      =   a(x)[place]
#-----------------------------------------------------------------------------------------------------------------------
n377_statement_begin_α:                                                       jmp   n378_var_α
n377_statement_begin_β:                                                       jmp   n385_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n378_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n379_call_α
#-----------------------------------------------------------------------------------------------------------------------
n379_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1158:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1158]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1157_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n377_statement_begin_β
.Lx1157_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n380_var_α
n379_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n377_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n380_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n381_subscript_α
n380_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n377_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n381_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1160_240
                        add              rsp, 16;                             jmp   n380_var_β
.Lx1160_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n382_deref_α
n381_subscript_β:       add              rsp, 16;                             jmp   n380_var_β
#-----------------------------------------------------------------------------------------------------------------------
n382_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1161_240
                        add              rsp, 16;                             jmp   n381_subscript_β
.Lx1161_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n383_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n383_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ListRemove
                        mov              qword ptr [r9 + 184], rdx;           jmp   n384_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n384_statement_end_α:   add              rsp, 80;                             jmp   n385_statement_begin_α
#=======================================================================================================================
#                 i               =   place
#-----------------------------------------------------------------------------------------------------------------------
n385_statement_begin_α:                                                       jmp   n386_var_α
n385_statement_begin_β:                                                       jmp   n389_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n386_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n387_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n387_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n388_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n388_statement_end_α:   add              rsp, 16;                             jmp   n389_statement_begin_α
#=======================================================================================================================
# ListRemove1     i               =   LT(i, n(x) - 1) i + 1               :F(ListRemove2)
#-----------------------------------------------------------------------------------------------------------------------
n389_statement_begin_α:                                                       jmp   n390_var_α
n389_statement_begin_β:                                                       jmp   n417_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n390_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n391_var_α
#-----------------------------------------------------------------------------------------------------------------------
n391_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n392_call_α
n391_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n389_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n392_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1176:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1176]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1175_240
                        add              rsp, 16;                             jmp   n391_var_β
.Lx1175_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n393_lit_integer_α
n392_call_β:            add              rsp, 16;                             jmp   n391_var_β
#-----------------------------------------------------------------------------------------------------------------------
n393_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1177_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n394_binop_α
n393_lit_integer_β:     add              rsp, 32;                             jmp   n391_var_β
.Lx1177_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n394_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # call
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1178_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1178_7
.Lx1178_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1178_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1178_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1178_4
.Lx1178_3:              movq             xmm0, rsi
.Lx1178_4:              cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1178_7:                                                                    jmp   n395_coerce_numeric_α
.Lx1178_0:              mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1178_240
                        add              rsp, 16;                             jmp   n393_lit_integer_β
.Lx1178_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n395_coerce_numeric_α
n394_binop_β:           add              rsp, 16;                             jmp   n393_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n395_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 80]            # var
                        cmp              al, 5;                               je    .Lx1180_1
                        cmp              al, 3;                               jne   .Lx1180_0
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              al, 3;                               jne   .Lx1180_0
.Lx1180_1:              mov              rax, qword ptr [rsp + 80]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n396_coerce_numeric_α
.Lx1180_0:              lea              rdi, [rsp + 80]
                        lea              rsi, [rsp + 16]                      # binop
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n396_coerce_numeric_α
n395_coerce_numeric_β:  add              rsp, 16;                             jmp   n394_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n396_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              al, 5;                               je    .Lx1182_1
                        cmp              al, 3;                               jne   .Lx1182_0
                        mov              eax, dword ptr [rsp + 96]            # var
                        cmp              al, 3;                               jne   .Lx1182_0
.Lx1182_1:              mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n397_cmp_test_α
.Lx1182_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 96]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n397_cmp_test_α
n396_coerce_numeric_β:  add              rsp, 16;                             jmp   n395_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n397_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1184_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx1184_239
                        add              rsp, 16;                             jmp   n396_coerce_numeric_β
.Lx1184_239:                                                                  jmp   n398_var_α
.Lx1184_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx1184_240
                        add              rsp, 16;                             jmp   n396_coerce_numeric_β
.Lx1184_240:                                                                  jmp   n398_var_α
n397_cmp_test_β:        add              rsp, 16;                             jmp   n396_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n398_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n399_lit_integer_α
n398_var_β:             add              rsp, 16;                             jmp   n397_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1186_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n400_binop_α
n399_lit_integer_β:     add              rsp, 16;                             jmp   n398_var_β
.Lx1186_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n400_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1187_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1187_7
.Lx1187_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1187_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1187_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1187_4
.Lx1187_3:              movq             xmm0, rsi
.Lx1187_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1187_7:                                                                    jmp   n401_assign_α
.Lx1187_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1187_240
                        add              rsp, 16;                             jmp   n399_lit_integer_β
.Lx1187_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n401_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n401_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n402_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n402_statement_end_α:   add              rsp, 176;                            jmp   n403_statement_begin_α
#=======================================================================================================================
#                 a(x)[i - 1]     =   a(x)[i]                             :(ListRemove1)
#-----------------------------------------------------------------------------------------------------------------------
n403_statement_begin_α:                                                       jmp   n404_var_α
n403_statement_begin_β:                                                       jmp   n389_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n404_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n405_call_α
#-----------------------------------------------------------------------------------------------------------------------
n405_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1195:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1195]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1194_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n403_statement_begin_β
.Lx1194_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n406_var_α
n405_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n403_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n406_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n407_lit_integer_α
n406_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n403_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1197_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n408_binop_α
n407_lit_integer_β:     add              rsp, 16;                             jmp   n406_var_β
.Lx1197_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n408_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1198_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1198_7
.Lx1198_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1198_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1198_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1198_4
.Lx1198_3:              movq             xmm0, rsi
.Lx1198_4:              cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1198_7:                                                                    jmp   n409_subscript_α
.Lx1198_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1198_240
                        add              rsp, 16;                             jmp   n407_lit_integer_β
.Lx1198_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n409_subscript_α
n408_binop_β:           add              rsp, 16;                             jmp   n407_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n409_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # call
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1199_240
                        add              rsp, 16;                             jmp   n408_binop_β
.Lx1199_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n410_var_α
n409_subscript_β:       add              rsp, 16;                             jmp   n408_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n410_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n411_call_α
n410_var_β:             add              rsp, 16;                             jmp   n409_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n411_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1202:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1202]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1201_240
                        add              rsp, 16;                             jmp   n410_var_β
.Lx1201_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n412_var_α
n411_call_β:            add              rsp, 16;                             jmp   n410_var_β
#-----------------------------------------------------------------------------------------------------------------------
n412_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n413_subscript_α
n412_var_β:             add              rsp, 32;                             jmp   n410_var_β
#-----------------------------------------------------------------------------------------------------------------------
n413_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1204_240
                        add              rsp, 16;                             jmp   n412_var_β
.Lx1204_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n414_deref_α
n413_subscript_β:       add              rsp, 16;                             jmp   n412_var_β
#-----------------------------------------------------------------------------------------------------------------------
n414_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1205_240
                        add              rsp, 16;                             jmp   n413_subscript_β
.Lx1205_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n415_assign_var_α
n414_deref_β:           add              rsp, 16;                             jmp   n413_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n415_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 96]            # subscript
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1206_240
                        add              rsp, 16;                             jmp   n414_deref_β
.Lx1206_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n416_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n416_statement_end_α:   add              rsp, 192;                            jmp   n389_statement_begin_α
#=======================================================================================================================
# ListRemove2     a(x)[i]         =
#-----------------------------------------------------------------------------------------------------------------------
n417_statement_begin_α:                                                       jmp   n418_var_α
n417_statement_begin_β:                                                       jmp   n425_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n418_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n419_call_α
#-----------------------------------------------------------------------------------------------------------------------
n419_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1213:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1213]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1212_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n417_statement_begin_β
.Lx1212_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n420_var_α
n419_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n417_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n420_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n421_subscript_α
n420_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n417_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n421_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1215_240
                        add              rsp, 16;                             jmp   n420_var_β
.Lx1215_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n422_lit_string_α
n421_subscript_β:       add              rsp, 16;                             jmp   n420_var_β
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1216_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n423_assign_var_α
n422_lit_string_β:      add              rsp, 16;                             jmp   n421_subscript_β
.Lx1216_0:              .quad            .Lx1216_0_s
.Lx1216_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n423_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1217_240
                        add              rsp, 16;                             jmp   n422_lit_string_β
.Lx1217_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n424_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n424_statement_end_α:   add              rsp, 96;                             jmp   n425_statement_begin_α
#=======================================================================================================================
#                 n(x)            =   n(x) - 1                            :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n425_statement_begin_α:                                                       jmp   n426_var_α
n425_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n426_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n427_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n427_field_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1223_0]
                        mov              rsi, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1223_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n425_statement_begin_β
.Lx1223_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n428_var_α
n427_field_var_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n425_statement_begin_β
.Lx1223_0:              .quad            .Lx1223_0_s
.Lx1223_0_s:            .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n428_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n429_call_α
n428_var_β:             add              rsp, 16;                             jmp   n427_field_var_β
#-----------------------------------------------------------------------------------------------------------------------
n429_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1226:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1226]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1225_240
                        add              rsp, 16;                             jmp   n428_var_β
.Lx1225_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n430_lit_integer_α
n429_call_β:            add              rsp, 16;                             jmp   n428_var_β
#-----------------------------------------------------------------------------------------------------------------------
n430_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1227_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n431_binop_α
n430_lit_integer_β:     add              rsp, 32;                             jmp   n428_var_β
.Lx1227_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n431_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # call
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1228_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1228_7
.Lx1228_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1228_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1228_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1228_4
.Lx1228_3:              movq             xmm0, rsi
.Lx1228_4:              cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1228_7:                                                                    jmp   n432_assign_var_α
.Lx1228_0:              mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1228_240
                        add              rsp, 16;                             jmp   n430_lit_integer_β
.Lx1228_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n432_assign_var_α
n431_binop_β:           add              rsp, 16;                             jmp   n430_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n432_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]            # field_var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1229_240
                        add              rsp, 16;                             jmp   n431_binop_β
.Lx1229_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n433_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n433_statement_end_α:   add              rsp, 112;                            jmp   RETURN
#=======================================================================================================================
# ListPop         ListPop         =   ListRemove(x, -1)                   :S(RETURN)F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n434_statement_begin_α:                                                       jmp   n435_var_α
n434_statement_begin_β:                                                       jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n435_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n436_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1235_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n437_unop_α
n436_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n434_statement_begin_β
.Lx1235_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n437_unop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n438_call_α
n437_unop_β:            add              rsp, 16;                             jmp   n436_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n438_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1238z]
                        lea              rax, [rip + ListRemove_α];           jmp   rax
.Lsig1238z:             .quad            2
                        .quad            .Lx1238_2
                        .quad            .Lx1238_2
                        .quad            48
                        .quad            16
.Lx1238_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1238_29
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
.Lx1238_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1238_240
                        add              rsp, 16;                             jmp   n437_unop_β
.Lx1238_240:                                                                  jmp   n439_assign_α
n438_call_β:                                                                  jmp   n437_unop_β
.Lx1238_0:              .quad            .Lx1238_0_s
.Lx1238_0_s:            .string          "ListRemove"
#-----------------------------------------------------------------------------------------------------------------------
n439_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ListPop
                        mov              qword ptr [r9 + 200], rdx;           jmp   n440_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n440_statement_end_α:   add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# ListSize        ListSize        =   IDENT(a(x)) 0                       :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n441_statement_begin_α:                                                       jmp   n442_var_α
n441_statement_begin_β:                                                       jmp   n449_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n442_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n443_call_α
#-----------------------------------------------------------------------------------------------------------------------
n443_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1246:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1246]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1245_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n441_statement_begin_β
.Lx1245_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n444_call_α
n443_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n441_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n444_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1248:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1248]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1247_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n441_statement_begin_β
.Lx1247_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n445_lit_integer_α
n444_call_β:            add              rsp, 16
                        add              rsp, 32;                             jmp   n441_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1249_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n446_binop_α
n445_lit_integer_β:     add              rsp, 16
                        add              rsp, 48;                             jmp   n441_statement_begin_β
.Lx1249_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n446_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n447_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n447_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ListSize
                        mov              qword ptr [r9 + 216], rdx;           jmp   n448_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n448_statement_end_α:   add              rsp, 80;                             jmp   RETURN
#=======================================================================================================================
#                 PROTOTYPE(a(x)) '0:' REM . ListSize
#-----------------------------------------------------------------------------------------------------------------------
n449_statement_begin_α:                                                       jmp   n450_var_α
n449_statement_begin_β:                                                       jmp   n460_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n450_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n451_call_α
#-----------------------------------------------------------------------------------------------------------------------
n451_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1258:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1258]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1257_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n460_statement_begin_α
.Lx1257_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n452_call_α
n451_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n460_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n452_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1260:           .string          "PROTOTYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1260]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1259_240
                                                                              jmp   n459_statement_end_α
.Lx1259_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n453_match_begin_α
n452_call_β:                                                                  jmp   n459_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n453_match_begin_α:     mov              rdi, qword ptr [rsp + 0]             # call
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
.Lx1262_0:              mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx1262_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n454_match_lit_α
n453_match_begin_β:
.Lx1262_13:             lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx1262_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1262_1
                                                                              jmp   .Lx1262_0
.Lx1262_1:
n453_match_begin_af:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        pop              rbp;                                 jmp   n459_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n454_match_lit_α:       mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n453_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 48;                             jne   n453_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 58;                             jne   n453_match_begin_β
                        add              r14d, 2;                             jmp   n455_match_assign_save_α
n454_match_lit_β:       sub              r14d, 2;                             jmp   n453_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n455_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n456_match_rem_α
n455_match_assign_save_β:
                        add              rsp, 16;                             jmp   n454_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n456_match_rem_α:       sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, r15d;                          jmp   n457_match_assign_cond_α
n456_match_rem_β:       mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n454_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n457_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S17]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n458_match_end_α
n457_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n456_match_rem_β
#-----------------------------------------------------------------------------------------------------------------------
n458_match_end_α:       mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        test             rax, rax;                            je    .Lx1271_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n453_match_begin_af
.Lx1271_13:             add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n459_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n459_statement_end_α:   add              rsp, 48;                             jmp   n460_statement_begin_α
#=======================================================================================================================
#                 ListSize        =   ListSize + 1                        :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n460_statement_begin_α:                                                       jmp   n461_var_α
n460_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n461_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ListSize
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n462_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n462_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1277_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n463_binop_α
n462_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n460_statement_begin_β
.Lx1277_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n463_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1278_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1278_7
.Lx1278_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1278_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1278_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1278_4
.Lx1278_3:              movq             xmm0, rsi
.Lx1278_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1278_7:                                                                    jmp   n464_assign_α
.Lx1278_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1278_240
                        add              rsp, 16;                             jmp   n462_lit_integer_β
.Lx1278_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n464_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n464_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ListSize
                        mov              qword ptr [r9 + 216], rdx;           jmp   n465_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n465_statement_end_α:   add              rsp, 48;                             jmp   RETURN
#=======================================================================================================================
# ListEnd  <stmt 48, line 57: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n466_statement_begin_α:                                                       jmp   n467_statement_end_α
n466_statement_begin_β:                                                       jmp   n468_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n467_statement_end_α:                                                         jmp   n468_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Init_list(vs)');    DEFINE('init_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n468_statement_begin_α:                                                       jmp   n469_define_α
n468_statement_begin_β:                                                       jmp   n471_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n469_define_α:          mov              rdi, qword ptr [rip + .Lx1289_0]
                        mov              rsi, qword ptr [rip + .Lx1289_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n498_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1289_0]
                        lea              rsi, [rip + Init_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n470_statement_end_α
n469_define_β:                                                                jmp   n468_statement_begin_β
.Lx1289_0:              .quad            .Lx1289_0_s
.Lx1289_0_s:            .string          "Init_list"
.Lx1289_1:              .quad            .Lx1289_1_s
.Lx1289_1_s:            .string          "vs"
                                                                              jmp   .Lx1290_245
#-----------------------------------------------------------------------------------------------------------------------
Init_list_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 224]            # Init_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 224], 0
                        mov              qword ptr [r9 + 232], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1290_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 240]            # vs
                        mov              qword ptr [r9 + 240], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 248]
                        mov              qword ptr [r9 + 248], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1290_41
.Lx1290_10:             mov              rax, qword ptr [r9 + 240]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 240], 0
                        mov              qword ptr [r9 + 248], 0
.Lx1290_41:             lea              r10, [rip + Init_list_γ]
                        lea              r11, [rip + Init_list_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n498_statement_begin_α]; jmp   rax
Init_list_γ:            mov              rdi, qword ptr [r9 + 224]            # Init_list
                        mov              rsi, qword ptr [r9 + 232]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 224], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 232], rax
                        cmp              rdx, 0;                              jbe   .Lx1290_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1290_110
.Lx1290_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1290_110:            mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
Init_list_ω:            mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 224], rax            # Init_list
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 232], rax
                        cmp              rdx, 0;                              jbe   .Lx1290_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1290_180
.Lx1290_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1290_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1290_245:
#-----------------------------------------------------------------------------------------------------------------------
n470_statement_end_α:                                                         jmp   n471_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Init_list(vs)');    DEFINE('init_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n471_statement_begin_α:                                                       jmp   n472_define_α
n471_statement_begin_β:                                                       jmp   n474_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n472_define_α:          mov              rdi, qword ptr [rip + .Lx1296_0]
                        mov              rsi, qword ptr [rip + .Lx1296_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n542_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1296_0]
                        lea              rsi, [rip + init_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n473_statement_end_α
n472_define_β:                                                                jmp   n471_statement_begin_β
.Lx1296_0:              .quad            .Lx1296_0_s
.Lx1296_0_s:            .string          "init_list"
.Lx1296_1:              .quad            .Lx1296_1_s
.Lx1296_1_s:            .string          "v"
                                                                              jmp   .Lx1297_245
#-----------------------------------------------------------------------------------------------------------------------
init_list_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 256]            # init_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 256], 0
                        mov              qword ptr [r9 + 264], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1297_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 272]            # v
                        mov              qword ptr [r9 + 272], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 280]
                        mov              qword ptr [r9 + 280], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1297_41
.Lx1297_10:             mov              rax, qword ptr [r9 + 272]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 272], 0
                        mov              qword ptr [r9 + 280], 0
.Lx1297_41:             lea              r10, [rip + init_list_γ]
                        lea              r11, [rip + init_list_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n542_statement_begin_α]; jmp   rax
init_list_γ:            mov              rdi, qword ptr [r9 + 256]            # init_list
                        mov              rsi, qword ptr [r9 + 264]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 256], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 264], rax
                        cmp              rdx, 0;                              jbe   .Lx1297_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1297_110
.Lx1297_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1297_110:            mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
init_list_ω:            mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 256], rax            # init_list
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 264], rax
                        cmp              rdx, 0;                              jbe   .Lx1297_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1297_180
.Lx1297_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1297_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1297_245:
#-----------------------------------------------------------------------------------------------------------------------
n473_statement_end_α:                                                         jmp   n474_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Push_list(vs)');    DEFINE('push_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n474_statement_begin_α:                                                       jmp   n475_define_α
n474_statement_begin_β:                                                       jmp   n477_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n475_define_α:          mov              rdi, qword ptr [rip + .Lx1303_0]
                        mov              rsi, qword ptr [rip + .Lx1303_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n507_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1303_0]
                        lea              rsi, [rip + Push_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n476_statement_end_α
n475_define_β:                                                                jmp   n474_statement_begin_β
.Lx1303_0:              .quad            .Lx1303_0_s
.Lx1303_0_s:            .string          "Push_list"
.Lx1303_1:              .quad            .Lx1303_1_s
.Lx1303_1_s:            .string          "vs"
                                                                              jmp   .Lx1304_245
#-----------------------------------------------------------------------------------------------------------------------
Push_list_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 288]            # Push_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 288], 0
                        mov              qword ptr [r9 + 296], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1304_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 240]            # vs
                        mov              qword ptr [r9 + 240], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 248]
                        mov              qword ptr [r9 + 248], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1304_41
.Lx1304_10:             mov              rax, qword ptr [r9 + 240]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 240], 0
                        mov              qword ptr [r9 + 248], 0
.Lx1304_41:             lea              r10, [rip + Push_list_γ]
                        lea              r11, [rip + Push_list_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n507_statement_begin_α]; jmp   rax
Push_list_γ:            mov              rdi, qword ptr [r9 + 288]            # Push_list
                        mov              rsi, qword ptr [r9 + 296]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 296], rax
                        cmp              rdx, 0;                              jbe   .Lx1304_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1304_110
.Lx1304_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1304_110:            mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
Push_list_ω:            mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 288], rax            # Push_list
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 296], rax
                        cmp              rdx, 0;                              jbe   .Lx1304_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1304_180
.Lx1304_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1304_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1304_245:
#-----------------------------------------------------------------------------------------------------------------------
n476_statement_end_α:                                                         jmp   n477_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Push_list(vs)');    DEFINE('push_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n477_statement_begin_α:                                                       jmp   n478_define_α
n477_statement_begin_β:                                                       jmp   n480_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n478_define_α:          mov              rdi, qword ptr [rip + .Lx1310_0]
                        mov              rsi, qword ptr [rip + .Lx1310_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n561_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1310_0]
                        lea              rsi, [rip + push_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n479_statement_end_α
n478_define_β:                                                                jmp   n477_statement_begin_β
.Lx1310_0:              .quad            .Lx1310_0_s
.Lx1310_0_s:            .string          "push_list"
.Lx1310_1:              .quad            .Lx1310_1_s
.Lx1310_1_s:            .string          "v"
                                                                              jmp   .Lx1311_245
#-----------------------------------------------------------------------------------------------------------------------
push_list_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 304]            # push_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 304], 0
                        mov              qword ptr [r9 + 312], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1311_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 272]            # v
                        mov              qword ptr [r9 + 272], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 280]
                        mov              qword ptr [r9 + 280], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1311_41
.Lx1311_10:             mov              rax, qword ptr [r9 + 272]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 272], 0
                        mov              qword ptr [r9 + 280], 0
.Lx1311_41:             lea              r10, [rip + push_list_γ]
                        lea              r11, [rip + push_list_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n561_statement_begin_α]; jmp   rax
push_list_γ:            mov              rdi, qword ptr [r9 + 304]            # push_list
                        mov              rsi, qword ptr [r9 + 312]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 312], rax
                        cmp              rdx, 0;                              jbe   .Lx1311_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1311_110
.Lx1311_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1311_110:            mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
push_list_ω:            mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 304], rax            # push_list
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 312], rax
                        cmp              rdx, 0;                              jbe   .Lx1311_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1311_180
.Lx1311_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1311_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1311_245:
#-----------------------------------------------------------------------------------------------------------------------
n479_statement_end_α:                                                         jmp   n480_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Push_item(vs)');    DEFINE('push_item(v)')
#-----------------------------------------------------------------------------------------------------------------------
n480_statement_begin_α:                                                       jmp   n481_define_α
n480_statement_begin_β:                                                       jmp   n483_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n481_define_α:          mov              rdi, qword ptr [rip + .Lx1317_0]
                        mov              rsi, qword ptr [rip + .Lx1317_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n516_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1317_0]
                        lea              rsi, [rip + Push_item_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n482_statement_end_α
n481_define_β:                                                                jmp   n480_statement_begin_β
.Lx1317_0:              .quad            .Lx1317_0_s
.Lx1317_0_s:            .string          "Push_item"
.Lx1317_1:              .quad            .Lx1317_1_s
.Lx1317_1_s:            .string          "vs"
                                                                              jmp   .Lx1318_245
#-----------------------------------------------------------------------------------------------------------------------
Push_item_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 320]            # Push_item
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 320], 0
                        mov              qword ptr [r9 + 328], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1318_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 240]            # vs
                        mov              qword ptr [r9 + 240], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 248]
                        mov              qword ptr [r9 + 248], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1318_41
.Lx1318_10:             mov              rax, qword ptr [r9 + 240]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 240], 0
                        mov              qword ptr [r9 + 248], 0
.Lx1318_41:             lea              r10, [rip + Push_item_γ]
                        lea              r11, [rip + Push_item_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n516_statement_begin_α]; jmp   rax
Push_item_γ:            mov              rdi, qword ptr [r9 + 320]            # Push_item
                        mov              rsi, qword ptr [r9 + 328]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 320], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 328], rax
                        cmp              rdx, 0;                              jbe   .Lx1318_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1318_110
.Lx1318_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1318_110:            mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
Push_item_ω:            mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 320], rax            # Push_item
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 328], rax
                        cmp              rdx, 0;                              jbe   .Lx1318_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1318_180
.Lx1318_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1318_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1318_245:
#-----------------------------------------------------------------------------------------------------------------------
n482_statement_end_α:                                                         jmp   n483_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Push_item(vs)');    DEFINE('push_item(v)')
#-----------------------------------------------------------------------------------------------------------------------
n483_statement_begin_α:                                                       jmp   n484_define_α
n483_statement_begin_β:                                                       jmp   n486_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n484_define_α:          mov              rdi, qword ptr [rip + .Lx1324_0]
                        mov              rsi, qword ptr [rip + .Lx1324_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n591_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1324_0]
                        lea              rsi, [rip + push_item_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n485_statement_end_α
n484_define_β:                                                                jmp   n483_statement_begin_β
.Lx1324_0:              .quad            .Lx1324_0_s
.Lx1324_0_s:            .string          "push_item"
.Lx1324_1:              .quad            .Lx1324_1_s
.Lx1324_1_s:            .string          "v"
                                                                              jmp   .Lx1325_245
#-----------------------------------------------------------------------------------------------------------------------
push_item_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 336]            # push_item
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 336], 0
                        mov              qword ptr [r9 + 344], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1325_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 272]            # v
                        mov              qword ptr [r9 + 272], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 280]
                        mov              qword ptr [r9 + 280], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1325_41
.Lx1325_10:             mov              rax, qword ptr [r9 + 272]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 272], 0
                        mov              qword ptr [r9 + 280], 0
.Lx1325_41:             lea              r10, [rip + push_item_γ]
                        lea              r11, [rip + push_item_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n591_statement_begin_α]; jmp   rax
push_item_γ:            mov              rdi, qword ptr [r9 + 336]            # push_item
                        mov              rsi, qword ptr [r9 + 344]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 344], rax
                        cmp              rdx, 0;                              jbe   .Lx1325_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1325_110
.Lx1325_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1325_110:            mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
push_item_ω:            mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 336], rax            # push_item
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 344], rax
                        cmp              rdx, 0;                              jbe   .Lx1325_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1325_180
.Lx1325_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1325_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1325_245:
#-----------------------------------------------------------------------------------------------------------------------
n485_statement_end_α:                                                         jmp   n486_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Pop_list()');       DEFINE('pop_list()')
#-----------------------------------------------------------------------------------------------------------------------
n486_statement_begin_α:                                                       jmp   n487_define_α
n486_statement_begin_β:                                                       jmp   n489_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n487_define_α:          mov              rdi, qword ptr [rip + .Lx1331_0]
                        mov              rsi, qword ptr [rip + .Lx1331_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n525_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1331_0]
                        lea              rsi, [rip + Pop_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n488_statement_end_α
n487_define_β:                                                                jmp   n486_statement_begin_β
.Lx1331_0:              .quad            .Lx1331_0_s
.Lx1331_0_s:            .string          "Pop_list"
.Lx1331_1:              .quad            .Lx1331_1_s
.Lx1331_1_s:            .string          ""
                                                                              jmp   .Lx1332_245
#-----------------------------------------------------------------------------------------------------------------------
Pop_list_α:             sub              rsp, 48
                        mov              rax, qword ptr [r9 + 352]            # Pop_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 352], 0
                        mov              qword ptr [r9 + 360], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              r10, [rip + Pop_list_γ]
                        lea              r11, [rip + Pop_list_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n525_statement_begin_α]; jmp   rax
Pop_list_γ:             mov              rdi, qword ptr [r9 + 352]
                        mov              rsi, qword ptr [r9 + 360]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 360], rax
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
Pop_list_ω:             mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 360], rax
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1332_245:
#-----------------------------------------------------------------------------------------------------------------------
n488_statement_end_α:                                                         jmp   n489_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Pop_list()');       DEFINE('pop_list()')
#-----------------------------------------------------------------------------------------------------------------------
n489_statement_begin_α:                                                       jmp   n490_define_α
n489_statement_begin_β:                                                       jmp   n492_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n490_define_α:          mov              rdi, qword ptr [rip + .Lx1338_0]
                        mov              rsi, qword ptr [rip + .Lx1338_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n604_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1338_0]
                        lea              rsi, [rip + pop_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n491_statement_end_α
n490_define_β:                                                                jmp   n489_statement_begin_β
.Lx1338_0:              .quad            .Lx1338_0_s
.Lx1338_0_s:            .string          "pop_list"
.Lx1338_1:              .quad            .Lx1338_1_s
.Lx1338_1_s:            .string          ""
                                                                              jmp   .Lx1339_245
#-----------------------------------------------------------------------------------------------------------------------
pop_list_α:             sub              rsp, 48
                        mov              rax, qword ptr [r9 + 368]            # pop_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 368], 0
                        mov              qword ptr [r9 + 376], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              r10, [rip + pop_list_γ]
                        lea              r11, [rip + pop_list_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n604_statement_begin_α]; jmp   rax
pop_list_γ:             mov              rdi, qword ptr [r9 + 368]
                        mov              rsi, qword ptr [r9 + 376]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 376], rax
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
pop_list_ω:             mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 376], rax
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1339_245:
#-----------------------------------------------------------------------------------------------------------------------
n491_statement_end_α:                                                         jmp   n492_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Pop_final(vs)');    DEFINE('pop_final(v)')      :(StackEnd)
#-----------------------------------------------------------------------------------------------------------------------
n492_statement_begin_α:                                                       jmp   n493_define_α
n492_statement_begin_β:                                                       jmp   n495_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n493_define_α:          mov              rdi, qword ptr [rip + .Lx1345_0]
                        mov              rsi, qword ptr [rip + .Lx1345_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n533_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1345_0]
                        lea              rsi, [rip + Pop_final_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n494_statement_end_α
n493_define_β:                                                                jmp   n492_statement_begin_β
.Lx1345_0:              .quad            .Lx1345_0_s
.Lx1345_0_s:            .string          "Pop_final"
.Lx1345_1:              .quad            .Lx1345_1_s
.Lx1345_1_s:            .string          "vs"
                                                                              jmp   .Lx1346_245
#-----------------------------------------------------------------------------------------------------------------------
Pop_final_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 384]            # Pop_final
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 384], 0
                        mov              qword ptr [r9 + 392], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1346_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 240]            # vs
                        mov              qword ptr [r9 + 240], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 248]
                        mov              qword ptr [r9 + 248], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1346_41
.Lx1346_10:             mov              rax, qword ptr [r9 + 240]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 240], 0
                        mov              qword ptr [r9 + 248], 0
.Lx1346_41:             lea              r10, [rip + Pop_final_γ]
                        lea              r11, [rip + Pop_final_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n533_statement_begin_α]; jmp   rax
Pop_final_γ:            mov              rdi, qword ptr [r9 + 384]            # Pop_final
                        mov              rsi, qword ptr [r9 + 392]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 384], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 392], rax
                        cmp              rdx, 0;                              jbe   .Lx1346_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1346_110
.Lx1346_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1346_110:            mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
Pop_final_ω:            mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 384], rax            # Pop_final
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 392], rax
                        cmp              rdx, 0;                              jbe   .Lx1346_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1346_180
.Lx1346_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1346_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1346_245:
#-----------------------------------------------------------------------------------------------------------------------
n494_statement_end_α:                                                         jmp   n495_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Pop_final(vs)');    DEFINE('pop_final(v)')      :(StackEnd)
#-----------------------------------------------------------------------------------------------------------------------
n495_statement_begin_α:                                                       jmp   n496_define_α
n495_statement_begin_β:                                                       jmp   n630_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n496_define_α:          mov              rdi, qword ptr [rip + .Lx1352_0]
                        mov              rsi, qword ptr [rip + .Lx1352_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n618_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1352_0]
                        lea              rsi, [rip + pop_final_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n497_statement_end_α
n496_define_β:                                                                jmp   n495_statement_begin_β
.Lx1352_0:              .quad            .Lx1352_0_s
.Lx1352_0_s:            .string          "pop_final"
.Lx1352_1:              .quad            .Lx1352_1_s
.Lx1352_1_s:            .string          "v"
                                                                              jmp   .Lx1353_245
#-----------------------------------------------------------------------------------------------------------------------
pop_final_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 400]            # pop_final
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 400], 0
                        mov              qword ptr [r9 + 408], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1353_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 272]            # v
                        mov              qword ptr [r9 + 272], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 280]
                        mov              qword ptr [r9 + 280], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1353_41
.Lx1353_10:             mov              rax, qword ptr [r9 + 272]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 272], 0
                        mov              qword ptr [r9 + 280], 0
.Lx1353_41:             lea              r10, [rip + pop_final_γ]
                        lea              r11, [rip + pop_final_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n618_statement_begin_α]; jmp   rax
pop_final_γ:            mov              rdi, qword ptr [r9 + 400]            # pop_final
                        mov              rsi, qword ptr [r9 + 408]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 400], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 408], rax
                        cmp              rdx, 0;                              jbe   .Lx1353_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1353_110
.Lx1353_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1353_110:            mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
pop_final_ω:            mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 400], rax            # pop_final
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 408], rax
                        cmp              rdx, 0;                              jbe   .Lx1353_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1353_180
.Lx1353_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1353_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1353_245:
#-----------------------------------------------------------------------------------------------------------------------
n497_statement_end_α:                                                         jmp   n630_statement_begin_α
#=======================================================================================================================
# Init_list       Init_list       =   EVAL("epsilon . *init_list(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n498_statement_begin_α:                                                       jmp   n499_lit_string_α
n498_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n499_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1358_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n500_var_α
.Lx1358_0:              .quad            .Lx1358_0_s
.Lx1358_0_s:            .string          "epsilon . *init_list("
#-----------------------------------------------------------------------------------------------------------------------
n500_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 240]            # vs
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n501_binop_α
n500_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n498_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n501_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n502_lit_string_α
n501_binop_β:           add              rsp, 16;                             jmp   n500_var_β
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1361_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n503_binop_α
n502_lit_string_β:      add              rsp, 16;                             jmp   n501_binop_β
.Lx1361_0:              .quad            .Lx1361_0_s
.Lx1361_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n503_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n504_call_α
n503_binop_β:           add              rsp, 16;                             jmp   n502_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n504_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1364:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1364]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1363_240
                        add              rsp, 16;                             jmp   n503_binop_β
.Lx1363_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n505_assign_α
n504_call_β:            add              rsp, 16;                             jmp   n503_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n505_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # Init_list
                        mov              qword ptr [r9 + 232], rdx;           jmp   n506_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n506_statement_end_α:   add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# Push_list       Push_list       =   EVAL("epsilon . *push_list(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n507_statement_begin_α:                                                       jmp   n508_lit_string_α
n507_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n508_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1370_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n509_var_α
.Lx1370_0:              .quad            .Lx1370_0_s
.Lx1370_0_s:            .string          "epsilon . *push_list("
#-----------------------------------------------------------------------------------------------------------------------
n509_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 240]            # vs
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n510_binop_α
n509_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n507_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n510_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n511_lit_string_α
n510_binop_β:           add              rsp, 16;                             jmp   n509_var_β
#-----------------------------------------------------------------------------------------------------------------------
n511_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1373_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n512_binop_α
n511_lit_string_β:      add              rsp, 16;                             jmp   n510_binop_β
.Lx1373_0:              .quad            .Lx1373_0_s
.Lx1373_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n512_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n513_call_α
n512_binop_β:           add              rsp, 16;                             jmp   n511_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n513_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1376:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1376]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1375_240
                        add              rsp, 16;                             jmp   n512_binop_β
.Lx1375_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n514_assign_α
n513_call_β:            add              rsp, 16;                             jmp   n512_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n514_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # Push_list
                        mov              qword ptr [r9 + 296], rdx;           jmp   n515_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n515_statement_end_α:   add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# Push_item       Push_item       =   EVAL("epsilon . *push_item(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n516_statement_begin_α:                                                       jmp   n517_lit_string_α
n516_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n517_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1382_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n518_var_α
.Lx1382_0:              .quad            .Lx1382_0_s
.Lx1382_0_s:            .string          "epsilon . *push_item("
#-----------------------------------------------------------------------------------------------------------------------
n518_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 240]            # vs
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n519_binop_α
n518_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n516_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n519_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n520_lit_string_α
n519_binop_β:           add              rsp, 16;                             jmp   n518_var_β
#-----------------------------------------------------------------------------------------------------------------------
n520_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1385_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n521_binop_α
n520_lit_string_β:      add              rsp, 16;                             jmp   n519_binop_β
.Lx1385_0:              .quad            .Lx1385_0_s
.Lx1385_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n521_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n522_call_α
n521_binop_β:           add              rsp, 16;                             jmp   n520_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n522_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1388:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1388]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1387_240
                        add              rsp, 16;                             jmp   n521_binop_β
.Lx1387_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n523_assign_α
n522_call_β:            add              rsp, 16;                             jmp   n521_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n523_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # Push_item
                        mov              qword ptr [r9 + 328], rdx;           jmp   n524_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n524_statement_end_α:   add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# Pop_list        Pop_list        =         epsilon . *pop_list()           :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n525_statement_begin_α:                                                       jmp   n526_var_α
n525_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n526_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 416]            # epsilon
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n527_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n527_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax            # PAT$0$V0
                        mov              qword ptr [r9 + 600], rdx;           jmp   n528_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n528_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1396_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n529_lit_string_α
n528_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n525_statement_begin_β
.Lx1396_0:              .quad            .Lx1396_0_s
.Lx1396_0_s:            .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n529_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1397_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n530_call_α
n529_lit_string_β:      add              rsp, 16;                             jmp   n528_lit_string_β
.Lx1397_0:              .quad            .Lx1397_0_s
.Lx1397_0_s:            .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n530_call_α:            sub              rsp, 16
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
.Lrkfnzd1399:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1399]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx1398_240
                        add              rsp, 16;                             jmp   n529_lit_string_β
.Lx1398_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n531_assign_α
n530_call_β:            add              rsp, 16;                             jmp   n529_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n531_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # Pop_list
                        mov              qword ptr [r9 + 360], rdx;           jmp   n532_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n532_statement_end_α:   add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# Pop_final       Pop_final       =   EVAL("epsilon . *pop_final(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n533_statement_begin_α:                                                       jmp   n534_lit_string_α
n533_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n534_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1405_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n535_var_α
.Lx1405_0:              .quad            .Lx1405_0_s
.Lx1405_0_s:            .string          "epsilon . *pop_final("
#-----------------------------------------------------------------------------------------------------------------------
n535_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 240]            # vs
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n536_binop_α
n535_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n533_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n536_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n537_lit_string_α
n536_binop_β:           add              rsp, 16;                             jmp   n535_var_β
#-----------------------------------------------------------------------------------------------------------------------
n537_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1408_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n538_binop_α
n537_lit_string_β:      add              rsp, 16;                             jmp   n536_binop_β
.Lx1408_0:              .quad            .Lx1408_0_s
.Lx1408_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n538_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n539_call_α
n538_binop_β:           add              rsp, 16;                             jmp   n537_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n539_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1411:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1411]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1410_240
                        add              rsp, 16;                             jmp   n538_binop_β
.Lx1410_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n540_assign_α
n539_call_β:            add              rsp, 16;                             jmp   n538_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n540_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax            # Pop_final
                        mov              qword ptr [r9 + 392], rdx;           jmp   n541_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n541_statement_end_α:   add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# init_list       $v              =
#-----------------------------------------------------------------------------------------------------------------------
n542_statement_begin_α:                                                       jmp   n543_var_α
n542_statement_begin_β:                                                       jmp   n548_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n543_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n544_call_α
#-----------------------------------------------------------------------------------------------------------------------
n544_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1419:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1419]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1418_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n542_statement_begin_β
.Lx1418_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n545_lit_string_α
n544_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n542_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n545_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1420_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n546_assign_var_α
n545_lit_string_β:      add              rsp, 16
                        add              rsp, 32;                             jmp   n542_statement_begin_β
.Lx1420_0:              .quad            .Lx1420_0_s
.Lx1420_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n546_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1421_240
                        add              rsp, 16;                             jmp   n545_lit_string_β
.Lx1421_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n547_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n547_statement_end_α:   add              rsp, 64;                             jmp   n548_statement_begin_α
#=======================================================================================================================
#                 tags            =   TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n548_statement_begin_α:                                                       jmp   n549_call_α
n548_statement_begin_β:                                                       jmp   n552_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n549_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1427:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1427]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1426_240
                        add              rsp, 16;                             jmp   n548_statement_begin_β
.Lx1426_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n550_assign_α
n549_call_β:            add              rsp, 16;                             jmp   n548_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n550_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # tags
                        mov              qword ptr [r9 + 440], rdx;           jmp   n551_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n551_statement_end_α:   add              rsp, 16;                             jmp   n552_statement_begin_α
#=======================================================================================================================
#                 stack           =   list()
#-----------------------------------------------------------------------------------------------------------------------
n552_statement_begin_α:                                                       jmp   n553_call_α
n552_statement_begin_β:                                                       jmp   n556_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n553_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1434:           .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1434]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1433_240
                        add              rsp, 16;                             jmp   n552_statement_begin_β
.Lx1433_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n554_assign_α
n553_call_β:            add              rsp, 16;                             jmp   n552_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n554_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax            # stack
                        mov              qword ptr [r9 + 456], rdx;           jmp   n555_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n555_statement_end_α:   add              rsp, 16;                             jmp   n556_statement_begin_α
#=======================================================================================================================
#                 init_list       =   .dummy                          :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n556_statement_begin_α:                                                       jmp   n557_lit_string_α
n556_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n557_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1440_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n558_call_α
.Lx1440_0:              .quad            .Lx1440_0_s
.Lx1440_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n558_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1442:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1442]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1441_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n556_statement_begin_β
.Lx1441_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n559_assign_α
n558_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n556_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n559_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # init_list
                        mov              qword ptr [r9 + 264], rdx;           jmp   n560_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n560_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# push_list       tags[v]         =   tags[v] + 1
#-----------------------------------------------------------------------------------------------------------------------
n561_statement_begin_α:                                                       jmp   n562_var_α
n561_statement_begin_β:                                                       jmp   n573_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n562_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]            # tags
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n563_var_α
#-----------------------------------------------------------------------------------------------------------------------
n563_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n564_subscript_α
n563_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n561_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n564_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1450_240
                        add              rsp, 16;                             jmp   n563_var_β
.Lx1450_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n565_var_α
n564_subscript_β:       add              rsp, 16;                             jmp   n563_var_β
#-----------------------------------------------------------------------------------------------------------------------
n565_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]            # tags
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n566_var_α
n565_var_β:             add              rsp, 16;                             jmp   n564_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n566_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n567_subscript_α
n566_var_β:             add              rsp, 16;                             jmp   n565_var_β
#-----------------------------------------------------------------------------------------------------------------------
n567_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1453_240
                        add              rsp, 16;                             jmp   n566_var_β
.Lx1453_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n568_deref_α
n567_subscript_β:       add              rsp, 16;                             jmp   n566_var_β
#-----------------------------------------------------------------------------------------------------------------------
n568_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1454_240
                        add              rsp, 16;                             jmp   n567_subscript_β
.Lx1454_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n569_lit_integer_α
n568_deref_β:           add              rsp, 16;                             jmp   n567_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n569_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1455_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n570_binop_α
n569_lit_integer_β:     add              rsp, 16;                             jmp   n568_deref_β
.Lx1455_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n570_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # deref
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1456_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1456_7
.Lx1456_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1456_0
                        mov              rsi, qword ptr [rsp + 40]            # deref
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1456_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1456_4
.Lx1456_3:              movq             xmm0, rsi
.Lx1456_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1456_7:                                                                    jmp   n571_assign_var_α
.Lx1456_0:              mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1456_240
                        add              rsp, 16;                             jmp   n569_lit_integer_β
.Lx1456_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n571_assign_var_α
n570_binop_β:           add              rsp, 16;                             jmp   n569_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n571_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 112]           # subscript
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1457_240
                        add              rsp, 16;                             jmp   n570_binop_β
.Lx1457_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n572_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n572_statement_end_α:   add              rsp, 160;                            jmp   n573_statement_begin_α
#=======================================================================================================================
#                 ListAppend(stack, list())
#-----------------------------------------------------------------------------------------------------------------------
n573_statement_begin_α:                                                       jmp   n574_var_α
n573_statement_begin_β:                                                       jmp   n578_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n574_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n575_call_α
#-----------------------------------------------------------------------------------------------------------------------
n575_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1464:           .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1464]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1463_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n573_statement_begin_β
.Lx1463_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n576_call_α
n575_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n573_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n576_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1466z]
                        lea              rax, [rip + ListAppend_α];           jmp   rax
.Lsig1466z:             .quad            2
                        .quad            .Lx1466_2
                        .quad            .Lx1466_2
                        .quad            32
                        .quad            16
.Lx1466_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1466_29
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
.Lx1466_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1466_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n573_statement_begin_β
.Lx1466_240:                                                                  jmp   n577_statement_end_α
n576_call_β:                                                                  jmp   n573_statement_begin_β
.Lx1466_0:              .quad            .Lx1466_0_s
.Lx1466_0_s:            .string          "ListAppend"
#-----------------------------------------------------------------------------------------------------------------------
n577_statement_end_α:   add              rsp, 48;                             jmp   n578_statement_begin_α
#=======================================================================================================================
#                 ListAppend(ListValue(stack, -1), v)
#-----------------------------------------------------------------------------------------------------------------------
n578_statement_begin_α:                                                       jmp   n579_var_α
n578_statement_begin_β:                                                       jmp   n586_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n579_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n580_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n580_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1472_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n581_unop_α
n580_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n578_statement_begin_β
.Lx1472_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n581_unop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n582_call_α
n581_unop_β:            add              rsp, 16;                             jmp   n580_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n582_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1475z]
                        lea              rax, [rip + ListValue_α];            jmp   rax
.Lsig1475z:             .quad            2
                        .quad            .Lx1475_2
                        .quad            .Lx1475_2
                        .quad            48
                        .quad            16
.Lx1475_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1475_29
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
.Lx1475_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1475_240
                        add              rsp, 16;                             jmp   n581_unop_β
.Lx1475_240:                                                                  jmp   n583_var_α
n582_call_β:                                                                  jmp   n581_unop_β
.Lx1475_0:              .quad            .Lx1475_0_s
.Lx1475_0_s:            .string          "ListValue"
#-----------------------------------------------------------------------------------------------------------------------
n583_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n584_call_α
n583_var_β:             add              rsp, 32;                             jmp   n581_unop_β
#-----------------------------------------------------------------------------------------------------------------------
n584_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1478z]
                        lea              rax, [rip + ListAppend_α];           jmp   rax
.Lsig1478z:             .quad            2
                        .quad            .Lx1478_2
                        .quad            .Lx1478_2
                        .quad            32
                        .quad            16
.Lx1478_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1478_29
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
.Lx1478_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1478_240
                        add              rsp, 16;                             jmp   n583_var_β
.Lx1478_240:                                                                  jmp   n585_statement_end_α
n584_call_β:                                                                  jmp   n583_var_β
.Lx1478_0:              .quad            .Lx1478_0_s
.Lx1478_0_s:            .string          "ListAppend"
#-----------------------------------------------------------------------------------------------------------------------
n585_statement_end_α:   add              rsp, 96;                             jmp   n586_statement_begin_α
#=======================================================================================================================
#                 push_list       =   .dummy                          :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n586_statement_begin_α:                                                       jmp   n587_lit_string_α
n586_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n587_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1483_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n588_call_α
.Lx1483_0:              .quad            .Lx1483_0_s
.Lx1483_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n588_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1485:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1485]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1484_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n586_statement_begin_β
.Lx1484_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n589_assign_α
n588_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n586_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n589_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # push_list
                        mov              qword ptr [r9 + 312], rdx;           jmp   n590_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n590_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# push_item       ListAppend(ListValue(stack, -1), v)
#-----------------------------------------------------------------------------------------------------------------------
n591_statement_begin_α:                                                       jmp   n592_var_α
n591_statement_begin_β:                                                       jmp   n599_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n592_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n593_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n593_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1492_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n594_unop_α
n593_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n591_statement_begin_β
.Lx1492_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n594_unop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n595_call_α
n594_unop_β:            add              rsp, 16;                             jmp   n593_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n595_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1495z]
                        lea              rax, [rip + ListValue_α];            jmp   rax
.Lsig1495z:             .quad            2
                        .quad            .Lx1495_2
                        .quad            .Lx1495_2
                        .quad            48
                        .quad            16
.Lx1495_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1495_29
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
.Lx1495_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1495_240
                        add              rsp, 16;                             jmp   n594_unop_β
.Lx1495_240:                                                                  jmp   n596_var_α
n595_call_β:                                                                  jmp   n594_unop_β
.Lx1495_0:              .quad            .Lx1495_0_s
.Lx1495_0_s:            .string          "ListValue"
#-----------------------------------------------------------------------------------------------------------------------
n596_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n597_call_α
n596_var_β:             add              rsp, 32;                             jmp   n594_unop_β
#-----------------------------------------------------------------------------------------------------------------------
n597_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1498z]
                        lea              rax, [rip + ListAppend_α];           jmp   rax
.Lsig1498z:             .quad            2
                        .quad            .Lx1498_2
                        .quad            .Lx1498_2
                        .quad            32
                        .quad            16
.Lx1498_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1498_29
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
.Lx1498_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1498_240
                        add              rsp, 16;                             jmp   n596_var_β
.Lx1498_240:                                                                  jmp   n598_statement_end_α
n597_call_β:                                                                  jmp   n596_var_β
.Lx1498_0:              .quad            .Lx1498_0_s
.Lx1498_0_s:            .string          "ListAppend"
#-----------------------------------------------------------------------------------------------------------------------
n598_statement_end_α:   add              rsp, 96;                             jmp   n599_statement_begin_α
#=======================================================================================================================
#                 push_item       =   .dummy                          :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n599_statement_begin_α:                                                       jmp   n600_lit_string_α
n599_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n600_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1503_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n601_call_α
.Lx1503_0:              .quad            .Lx1503_0_s
.Lx1503_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n601_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1505:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1505]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1504_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n599_statement_begin_β
.Lx1504_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n602_assign_α
n601_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n599_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n602_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # push_item
                        mov              qword ptr [r9 + 344], rdx;           jmp   n603_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n603_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# pop_list        ListAppend(ListValue(stack, -2), ListPop(stack))
#-----------------------------------------------------------------------------------------------------------------------
n604_statement_begin_α:                                                       jmp   n605_var_α
n604_statement_begin_β:                                                       jmp   n613_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n605_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n606_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n606_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1512_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n607_unop_α
n606_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n604_statement_begin_β
.Lx1512_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n607_unop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n608_call_α
n607_unop_β:            add              rsp, 16;                             jmp   n606_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n608_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1515z]
                        lea              rax, [rip + ListValue_α];            jmp   rax
.Lsig1515z:             .quad            2
                        .quad            .Lx1515_2
                        .quad            .Lx1515_2
                        .quad            48
                        .quad            16
.Lx1515_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1515_29
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
.Lx1515_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1515_240
                        add              rsp, 16;                             jmp   n607_unop_β
.Lx1515_240:                                                                  jmp   n609_var_α
n608_call_β:                                                                  jmp   n607_unop_β
.Lx1515_0:              .quad            .Lx1515_0_s
.Lx1515_0_s:            .string          "ListValue"
#-----------------------------------------------------------------------------------------------------------------------
n609_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n610_call_α
n609_var_β:             add              rsp, 32;                             jmp   n607_unop_β
#-----------------------------------------------------------------------------------------------------------------------
n610_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1518z]
                        lea              rax, [rip + ListPop_α];              jmp   rax
.Lsig1518z:             .quad            1
                        .quad            .Lx1518_2
                        .quad            .Lx1518_2
                        .quad            16
.Lx1518_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1518_29
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
.Lx1518_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1518_240
                        add              rsp, 16;                             jmp   n609_var_β
.Lx1518_240:                                                                  jmp   n611_call_α
n610_call_β:                                                                  jmp   n609_var_β
.Lx1518_0:              .quad            .Lx1518_0_s
.Lx1518_0_s:            .string          "ListPop"
#-----------------------------------------------------------------------------------------------------------------------
n611_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1520z]
                        lea              rax, [rip + ListAppend_α];           jmp   rax
.Lsig1520z:             .quad            2
                        .quad            .Lx1520_2
                        .quad            .Lx1520_2
                        .quad            48
                        .quad            16
.Lx1520_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1520_29
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
.Lx1520_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1520_240
                        add              rsp, 32;                             jmp   n609_var_β
.Lx1520_240:                                                                  jmp   n612_statement_end_α
n611_call_β:                                                                  jmp   n609_var_β
.Lx1520_0:              .quad            .Lx1520_0_s
.Lx1520_0_s:            .string          "ListAppend"
#-----------------------------------------------------------------------------------------------------------------------
n612_statement_end_α:   add              rsp, 112;                            jmp   n613_statement_begin_α
#=======================================================================================================================
#                 pop_list        =   .dummy                          :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n613_statement_begin_α:                                                       jmp   n614_lit_string_α
n613_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n614_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1525_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n615_call_α
.Lx1525_0:              .quad            .Lx1525_0_s
.Lx1525_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n615_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1527:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1527]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1526_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n613_statement_begin_β
.Lx1526_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n616_assign_α
n615_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n613_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n616_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # pop_list
                        mov              qword ptr [r9 + 376], rdx;           jmp   n617_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n617_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# pop_final       $v              =   ListPop(stack)
#-----------------------------------------------------------------------------------------------------------------------
n618_statement_begin_α:                                                       jmp   n619_var_α
n618_statement_begin_β:                                                       jmp   n625_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n619_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n620_call_α
#-----------------------------------------------------------------------------------------------------------------------
n620_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1535:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1535]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1534_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n618_statement_begin_β
.Lx1534_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n621_var_α
n620_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n618_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n621_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n622_call_α
n621_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n618_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n622_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1538z]
                        lea              rax, [rip + ListPop_α];              jmp   rax
.Lsig1538z:             .quad            1
                        .quad            .Lx1538_2
                        .quad            .Lx1538_2
                        .quad            16
.Lx1538_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1538_29
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
.Lx1538_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1538_240
                        add              rsp, 16;                             jmp   n621_var_β
.Lx1538_240:                                                                  jmp   n623_assign_var_α
n622_call_β:                                                                  jmp   n621_var_β
.Lx1538_0:              .quad            .Lx1538_0_s
.Lx1538_0_s:            .string          "ListPop"
#-----------------------------------------------------------------------------------------------------------------------
n623_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # call
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1539_240
                        add              rsp, 32;                             jmp   n621_var_β
.Lx1539_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n624_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n624_statement_end_α:   add              rsp, 80;                             jmp   n625_statement_begin_α
#=======================================================================================================================
#                 pop_final       =   .dummy                          :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n625_statement_begin_α:                                                       jmp   n626_lit_string_α
n625_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n626_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1544_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n627_call_α
.Lx1544_0:              .quad            .Lx1544_0_s
.Lx1544_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n627_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1546:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1546]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1545_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n625_statement_begin_β
.Lx1545_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n628_assign_α
n627_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n625_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n628_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # pop_final
                        mov              qword ptr [r9 + 408], rdx;           jmp   n629_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n629_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# StackEnd        delim           =   SPAN(' ' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n630_statement_begin_α:                                                       jmp   n631_lit_string_α
n630_statement_begin_β:                                                       jmp   n635_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n631_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1552_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n632_call_α
.Lx1552_0:              .quad            .Lx1552_0_s
.Lx1552_0_s:            .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n632_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1554:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1554]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1553_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n630_statement_begin_β
.Lx1553_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n633_assign_α
n632_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n630_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n633_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # delim
                        mov              qword ptr [r9 + 488], rdx;           jmp   n634_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n634_statement_end_α:   add              rsp, 32;                             jmp   n635_statement_begin_α
#=======================================================================================================================
#                 word            =   NOTANY('( )' CHAR(10)) BREAK('( )' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n635_statement_begin_α:                                                       jmp   n636_lit_string_α
n635_statement_begin_β:                                                       jmp   n640_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n636_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1560_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n637_call_α
.Lx1560_0:              .quad            .Lx1560_0_s
.Lx1560_0_s:            .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n637_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1562:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1562]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1561_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n635_statement_begin_β
.Lx1561_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n638_assign_α
n637_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n635_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n638_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # word
                        mov              qword ptr [r9 + 504], rdx;           jmp   n639_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n639_statement_end_α:   add              rsp, 32;                             jmp   n640_statement_begin_α
#=======================================================================================================================
#                 group           =   '('
#-----------------------------------------------------------------------------------------------------------------------
n640_statement_begin_α:                                                       jmp   n641_var_α
n640_statement_begin_β:                                                       jmp   n660_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n641_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]            # word
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n642_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n642_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 616], rdx;           jmp   n643_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n643_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1570_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n644_call_α
n643_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n640_statement_begin_β
.Lx1570_0:              .quad            .Lx1570_0_s
.Lx1570_0_s:            .string          "tag"
#-----------------------------------------------------------------------------------------------------------------------
n644_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1572z]
                        lea              rax, [rip + Push_list_α];            jmp   rax
.Lsig1572z:             .quad            1
                        .quad            .Lx1572_2
                        .quad            .Lx1572_2
                        .quad            16
.Lx1572_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1572_29
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
.Lx1572_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1572_240
                        add              rsp, 16;                             jmp   n643_lit_string_β
.Lx1572_240:                                                                  jmp   n645_assign_α
n644_call_β:                                                                  jmp   n643_lit_string_β
.Lx1572_0:              .quad            .Lx1572_0_s
.Lx1572_0_s:            .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n645_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # PAT$3$V1
                        mov              qword ptr [r9 + 632], rdx;           jmp   n646_var_α
#-----------------------------------------------------------------------------------------------------------------------
n646_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]            # word
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n647_assign_α
n646_var_β:             add              rsp, 32;                             jmp   n643_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n647_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 640], rax            # PAT$3$V2
                        mov              qword ptr [r9 + 648], rdx;           jmp   n648_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n648_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1576_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n649_call_α
n648_lit_string_β:      add              rsp, 16;                             jmp   n646_var_β
.Lx1576_0:              .quad            .Lx1576_0_s
.Lx1576_0_s:            .string          "wrd"
#-----------------------------------------------------------------------------------------------------------------------
n649_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1578z]
                        lea              rax, [rip + Push_item_α];            jmp   rax
.Lsig1578z:             .quad            1
                        .quad            .Lx1578_2
                        .quad            .Lx1578_2
                        .quad            16
.Lx1578_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1578_29
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
.Lx1578_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1578_240
                        add              rsp, 16;                             jmp   n648_lit_string_β
.Lx1578_240:                                                                  jmp   n650_assign_α
n649_call_β:                                                                  jmp   n648_lit_string_β
.Lx1578_0:              .quad            .Lx1578_0_s
.Lx1578_0_s:            .string          "Push_item"
#-----------------------------------------------------------------------------------------------------------------------
n650_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 656], rax            # PAT$3$V3
                        mov              qword ptr [r9 + 664], rdx;           jmp   n651_var_α
#-----------------------------------------------------------------------------------------------------------------------
n651_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # delim
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n652_assign_α
n651_var_β:             add              rsp, 32;                             jmp   n648_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n652_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 672], rax            # PAT$3$V4
                        mov              qword ptr [r9 + 680], rdx;           jmp   n653_call_α
#-----------------------------------------------------------------------------------------------------------------------
n653_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1583z]
                        lea              rax, [rip + Pop_list_α];             jmp   rax
.Lsig1583z:             .quad            0
                        .quad            .Lx1583_2
                        .quad            .Lx1583_2
.Lx1583_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1583_29
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
.Lx1583_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1583_240
                        add              rsp, 16;                             jmp   n651_var_β
.Lx1583_240:                                                                  jmp   n654_assign_α
n653_call_β:                                                                  jmp   n651_var_β
.Lx1583_0:              .quad            .Lx1583_0_s
.Lx1583_0_s:            .string          "Pop_list"
#-----------------------------------------------------------------------------------------------------------------------
n654_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 688], rax            # PAT$3$V5
                        mov              qword ptr [r9 + 696], rdx;           jmp   n655_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n655_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1585_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n656_lit_string_α
n655_lit_string_β:      add              rsp, 32;                             jmp   n651_var_β
.Lx1585_0:              .quad            .Lx1585_0_s
.Lx1585_0_s:            .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n656_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1586_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n657_call_α
n656_lit_string_β:      add              rsp, 16;                             jmp   n655_lit_string_β
.Lx1586_0:              .quad            .Lx1586_0_s
.Lx1586_0_s:            .string          "6"
#-----------------------------------------------------------------------------------------------------------------------
n657_call_α:            sub              rsp, 16
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
.Lrkfnzd1588:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1588]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx1587_240
                        add              rsp, 16;                             jmp   n656_lit_string_β
.Lx1587_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n658_assign_α
n657_call_β:            add              rsp, 16;                             jmp   n656_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n658_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 512], rax            # group
                        mov              qword ptr [r9 + 520], rdx;           jmp   n659_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n659_statement_end_α:   add              rsp, 176;                            jmp   n660_statement_begin_α
#=======================================================================================================================
#                 treebank        =   POS(0)
#-----------------------------------------------------------------------------------------------------------------------
n660_statement_begin_α:                                                       jmp   n661_lit_string_α
n660_statement_begin_β:                                                       jmp   n682_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n661_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1594_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n662_call_α
.Lx1594_0:              .quad            .Lx1594_0_s
.Lx1594_0_s:            .string          "'bank'"
#-----------------------------------------------------------------------------------------------------------------------
n662_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1596z]
                        lea              rax, [rip + Init_list_α];            jmp   rax
.Lsig1596z:             .quad            1
                        .quad            .Lx1596_2
                        .quad            .Lx1596_2
                        .quad            16
.Lx1596_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1596_29
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
.Lx1596_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1596_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n660_statement_begin_β
.Lx1596_240:                                                                  jmp   n663_assign_α
n662_call_β:                                                                  jmp   n660_statement_begin_β
.Lx1596_0:              .quad            .Lx1596_0_s
.Lx1596_0_s:            .string          "Init_list"
#-----------------------------------------------------------------------------------------------------------------------
n663_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 704], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 712], rdx;           jmp   n664_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n664_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1598_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n665_call_α
n664_lit_string_β:      add              rsp, 16
                        add              rsp, 32;                             jmp   n660_statement_begin_β
.Lx1598_0:              .quad            .Lx1598_0_s
.Lx1598_0_s:            .string          "'BANK'"
#-----------------------------------------------------------------------------------------------------------------------
n665_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1600z]
                        lea              rax, [rip + Push_list_α];            jmp   rax
.Lsig1600z:             .quad            1
                        .quad            .Lx1600_2
                        .quad            .Lx1600_2
                        .quad            16
.Lx1600_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1600_29
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
.Lx1600_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1600_240
                        add              rsp, 16;                             jmp   n664_lit_string_β
.Lx1600_240:                                                                  jmp   n666_assign_α
n665_call_β:                                                                  jmp   n664_lit_string_β
.Lx1600_0:              .quad            .Lx1600_0_s
.Lx1600_0_s:            .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n666_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 720], rax            # PAT$4$V1
                        mov              qword ptr [r9 + 728], rdx;           jmp   n667_call_α
#-----------------------------------------------------------------------------------------------------------------------
n667_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1603z]
                        lea              rax, [rip + Pop_list_α];             jmp   rax
.Lsig1603z:             .quad            0
                        .quad            .Lx1603_2
                        .quad            .Lx1603_2
.Lx1603_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1603_29
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
.Lx1603_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1603_240
                        add              rsp, 32;                             jmp   n664_lit_string_β
.Lx1603_240:                                                                  jmp   n668_assign_α
n667_call_β:                                                                  jmp   n664_lit_string_β
.Lx1603_0:              .quad            .Lx1603_0_s
.Lx1603_0_s:            .string          "Pop_list"
#-----------------------------------------------------------------------------------------------------------------------
n668_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 736], rax            # PAT$4$V2
                        mov              qword ptr [r9 + 744], rdx;           jmp   n669_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n669_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1605_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n670_call_α
n669_lit_string_β:      add              rsp, 48;                             jmp   n664_lit_string_β
.Lx1605_0:              .quad            .Lx1605_0_s
.Lx1605_0_s:            .string          "'ROOT'"
#-----------------------------------------------------------------------------------------------------------------------
n670_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1607z]
                        lea              rax, [rip + Push_list_α];            jmp   rax
.Lsig1607z:             .quad            1
                        .quad            .Lx1607_2
                        .quad            .Lx1607_2
                        .quad            16
.Lx1607_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1607_29
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
.Lx1607_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1607_240
                        add              rsp, 16;                             jmp   n669_lit_string_β
.Lx1607_240:                                                                  jmp   n671_assign_α
n670_call_β:                                                                  jmp   n669_lit_string_β
.Lx1607_0:              .quad            .Lx1607_0_s
.Lx1607_0_s:            .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n671_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 752], rax            # PAT$4$V3
                        mov              qword ptr [r9 + 760], rdx;           jmp   n672_var_α
#-----------------------------------------------------------------------------------------------------------------------
n672_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # delim
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n673_assign_α
n672_var_β:             add              rsp, 32;                             jmp   n669_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n673_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 768], rax            # PAT$4$V4
                        mov              qword ptr [r9 + 776], rdx;           jmp   n674_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n674_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1611_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n675_call_α
n674_lit_string_β:      add              rsp, 16;                             jmp   n672_var_β
.Lx1611_0:              .quad            .Lx1611_0_s
.Lx1611_0_s:            .string          "'bank'"
#-----------------------------------------------------------------------------------------------------------------------
n675_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1613z]
                        lea              rax, [rip + Pop_final_α];            jmp   rax
.Lsig1613z:             .quad            1
                        .quad            .Lx1613_2
                        .quad            .Lx1613_2
                        .quad            16
.Lx1613_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1613_29
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
.Lx1613_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1613_240
                        add              rsp, 16;                             jmp   n674_lit_string_β
.Lx1613_240:                                                                  jmp   n676_assign_α
n675_call_β:                                                                  jmp   n674_lit_string_β
.Lx1613_0:              .quad            .Lx1613_0_s
.Lx1613_0_s:            .string          "Pop_final"
#-----------------------------------------------------------------------------------------------------------------------
n676_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 784], rax            # PAT$4$V5
                        mov              qword ptr [r9 + 792], rdx;           jmp   n677_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n677_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1615_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n678_lit_string_α
n677_lit_string_β:      add              rsp, 32;                             jmp   n674_lit_string_β
.Lx1615_0:              .quad            .Lx1615_0_s
.Lx1615_0_s:            .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n678_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1616_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n679_call_α
n678_lit_string_β:      add              rsp, 16;                             jmp   n677_lit_string_β
.Lx1616_0:              .quad            .Lx1616_0_s
.Lx1616_0_s:            .string          "6"
#-----------------------------------------------------------------------------------------------------------------------
n679_call_α:            sub              rsp, 16
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
.Lrkfnzd1618:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1618]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx1617_240
                        add              rsp, 16;                             jmp   n678_lit_string_β
.Lx1617_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n680_assign_α
n679_call_β:            add              rsp, 16;                             jmp   n678_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n680_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # treebank
                        mov              qword ptr [r9 + 568], rdx;           jmp   n681_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n681_statement_end_α:   add              rsp, 208;                            jmp   n682_statement_begin_α
#=======================================================================================================================
#                 INPUT(.INPUT, 9, '[-f0 -r1000000]')
#-----------------------------------------------------------------------------------------------------------------------
n682_statement_begin_α:                                                       jmp   n683_lit_string_α
n682_statement_begin_β:                                                       jmp   n689_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n683_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1624_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n684_call_α
.Lx1624_0:              .quad            .Lx1624_0_s
.Lx1624_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n684_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1626:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1626]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1625_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n682_statement_begin_β
.Lx1625_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n685_lit_integer_α
n684_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n682_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n685_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1627_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n686_lit_string_α
n685_lit_integer_β:     add              rsp, 16
                        add              rsp, 32;                             jmp   n682_statement_begin_β
.Lx1627_0:              .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n686_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx1628_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n687_call_α
n686_lit_string_β:      add              rsp, 16;                             jmp   n685_lit_integer_β
.Lx1628_0:              .quad            .Lx1628_0_s
.Lx1628_0_s:            .string          "[-f0 -r1000000]"
#-----------------------------------------------------------------------------------------------------------------------
n687_call_α:            sub              rsp, 16
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
.Lbynamefnzd635:        .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd635]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lx1629_240
                        add              rsp, 16;                             jmp   n686_lit_string_β
.Lx1629_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n688_statement_end_α
n687_call_β:            add              rsp, 16;                             jmp   n686_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n688_statement_end_α:   add              rsp, 80;                             jmp   n689_statement_begin_α
#=======================================================================================================================
#                 src             =   INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n689_statement_begin_α:                                                       jmp   n690_var_α
n689_statement_begin_β:                                                       jmp   n708_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n690_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1634_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1634_240
                        add              rsp, 16;                             jmp   n689_statement_begin_β
.Lx1634_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n691_assign_α
.Lx1634_0:              .quad            .Lx1634_0_s
.Lx1634_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n691_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 576], rax            # src
                        mov              qword ptr [r9 + 584], rdx;           jmp   n692_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n692_statement_end_α:   add              rsp, 16;                             jmp   n693_statement_begin_α
#=======================================================================================================================
#                 src             ?   treebank  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n693_statement_begin_α:                                                       jmp   n694_var_α
n693_statement_begin_β:                                                       jmp   n708_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n694_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 576]            # src
                        mov              rdx, qword ptr [r9 + 584]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n695_var_α
#-----------------------------------------------------------------------------------------------------------------------
n695_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 560]            # treebank
                        mov              rdx, qword ptr [r9 + 568]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n696_assign_α
n695_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n708_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n696_assign_α:          mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1642_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n697_match_begin_α
n696_assign_β:                                                                jmp   n695_var_β
.Lx1642_0:              .quad            .Lx1642_0_s
.Lx1642_0_s:            .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n697_match_begin_α:     mov              rdi, qword ptr [rsp + 16]            # var
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
.Lx1644_0:              mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx1644_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n698_match_defer_α
n697_match_begin_β:
.Lx1644_13:             lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx1644_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1644_1
                                                                              jmp   .Lx1644_0
.Lx1644_1:
n697_match_begin_af:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        pop              rbp;                                 jmp   n696_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n698_match_defer_α:     lea              rdi, [rip + .S18]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx1645_14
                        mov              rax, qword ptr [rdx + 0]
.Lx1645_14:             test             rax, rax;                            jz    .Lx1645_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1645_5]
                        push             rcx
                        lea              rcx, [rip + .Lx1645_4]
                        push             rcx;                                 jmp   rax
.Lx1645_4:                                                                    jmp   n699_match_end_α
.Lx1645_5:                                                                    jmp   n697_match_begin_β
.Lx1645_0:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S18]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n697_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1645_6]
                        push             rcx
                        push             rax;                                 jmp   n699_match_end_α
.Lx1645_6:              add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n697_match_begin_β
n698_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lx1645_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx1645_12
                                                                              jmp   rax
.Lx1645_12:                                                                   jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n699_match_end_α:       mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        test             rax, rax;                            je    .Lx1647_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n697_match_begin_af
.Lx1647_13:             add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n700_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n700_statement_end_α:   add              rsp, 32;                             jmp   n701_statement_begin_α
#=======================================================================================================================
#                 OUTPUT          =   'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n701_statement_begin_α:                                                       jmp   n702_lit_string_α
n701_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n702_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx1652_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n703_var_α
.Lx1652_0:              .quad            .Lx1652_0_s
.Lx1652_0_s:            .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n703_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 576]            # src
                        mov              rdx, qword ptr [r9 + 584]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n704_call_α
n703_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n701_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n704_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1655:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1655]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1654_240
                        add              rsp, 16;                             jmp   n703_var_β
.Lx1654_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n705_binop_α
n704_call_β:            add              rsp, 16;                             jmp   n703_var_β
#-----------------------------------------------------------------------------------------------------------------------
n705_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n706_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n706_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1657_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n707_statement_end_α
.Lx1657_0:              .quad            .Lx1657_0_s
.Lx1657_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n707_statement_end_α:   add              rsp, 64;                             jmp   main_γ
#=======================================================================================================================
# error           OUTPUT          =   'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n708_statement_begin_α:                                                       jmp   n709_lit_string_α
n708_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n709_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx1662_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n710_assign_α
.Lx1662_0:              .quad            .Lx1662_0_s
.Lx1662_0_s:            .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n710_assign_α:          mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1663_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n711_statement_end_α
.Lx1663_0:              .quad            .Lx1663_0_s
.Lx1663_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n711_statement_end_α:   add              rsp, 16;                             jmp   main_γ
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
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "list(n,a)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lseala18:              .string          "ListValue"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ListValue_α
                        lea              rdi, [rip + .Lseala18]
                        mov              rsi, qword ptr [rip + ListValue_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala19:              .string          "ListName"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ListName_α
                        lea              rdi, [rip + .Lseala19]
                        mov              rsi, qword ptr [rip + ListName_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala20:              .string          "ListAppend"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ListAppend_α
                        lea              rdi, [rip + .Lseala20]
                        mov              rsi, qword ptr [rip + ListAppend_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala21:              .string          "ListPrepend"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ListPrepend_α
                        lea              rdi, [rip + .Lseala21]
                        mov              rsi, qword ptr [rip + ListPrepend_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala22:              .string          "ListInsert"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ListInsert_α
                        lea              rdi, [rip + .Lseala22]
                        mov              rsi, qword ptr [rip + ListInsert_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala23:              .string          "ListRemove"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ListRemove_α
                        lea              rdi, [rip + .Lseala23]
                        mov              rsi, qword ptr [rip + ListRemove_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala24:              .string          "ListPop"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ListPop_α
                        lea              rdi, [rip + .Lseala24]
                        mov              rsi, qword ptr [rip + ListPop_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala25:              .string          "ListSize"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ListSize_α
                        lea              rdi, [rip + .Lseala25]
                        mov              rsi, qword ptr [rip + ListSize_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala26:              .string          "Init_list"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            Init_list_α
                        lea              rdi, [rip + .Lseala26]
                        mov              rsi, qword ptr [rip + Init_list_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala27:              .string          "init_list"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            init_list_α
                        lea              rdi, [rip + .Lseala27]
                        mov              rsi, qword ptr [rip + init_list_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala28:              .string          "Push_list"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            Push_list_α
                        lea              rdi, [rip + .Lseala28]
                        mov              rsi, qword ptr [rip + Push_list_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala29:              .string          "push_list"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            push_list_α
                        lea              rdi, [rip + .Lseala29]
                        mov              rsi, qword ptr [rip + push_list_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala30:              .string          "Push_item"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            Push_item_α
                        lea              rdi, [rip + .Lseala30]
                        mov              rsi, qword ptr [rip + Push_item_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala31:              .string          "push_item"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            push_item_α
                        lea              rdi, [rip + .Lseala31]
                        mov              rsi, qword ptr [rip + push_item_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala32:              .string          "Pop_list"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            Pop_list_α
                        lea              rdi, [rip + .Lseala32]
                        mov              rsi, qword ptr [rip + Pop_list_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala33:              .string          "pop_list"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            pop_list_α
                        lea              rdi, [rip + .Lseala33]
                        mov              rsi, qword ptr [rip + pop_list_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala34:              .string          "Pop_final"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            Pop_final_α
                        lea              rdi, [rip + .Lseala34]
                        mov              rsi, qword ptr [rip + Pop_final_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala35:              .string          "pop_final"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            pop_final_α
                        lea              rdi, [rip + .Lseala35]
                        mov              rsi, qword ptr [rip + pop_final_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lstartup_pname36:      .string          "PAT$0"
                        .align           8
.Lstartup_prec36:
                        .quad            .Lstartup_pname36
                        .quad            FN__PAT$0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            96
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec36]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname37:      .string          "PAT$1"
                        .align           8
.Lstartup_prec37:
                        .quad            .Lstartup_pname37
                        .quad            FN__PAT$1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            32
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec37]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname38:      .string          "PAT$2"
                        .align           8
.Lstartup_prec38:
                        .quad            .Lstartup_pname38
                        .quad            FN__PAT$2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            48
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec38]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname39:      .string          "PAT$3"
                        .align           8
.Lstartup_prec39:
                        .quad            .Lstartup_pname39
                        .quad            FN__PAT$3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            400
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec39]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname40:      .string          "PAT$4"
                        .align           8
.Lstartup_prec40:
                        .quad            .Lstartup_pname40
                        .quad            FN__PAT$4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            400
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec40]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "PAT$0$V0"
.S1:                    .string          "*pop_list"
.S2:                    .string          "PAT$3$V0"
.S3:                    .string          "tag"
.S4:                    .string          "PAT$3$V1"
.S5:                    .string          "PAT$3$V5"
.S6:                    .string          "PAT$3$V4"
.S7:                    .string          "PAT$3$V2"
.S8:                    .string          "wrd"
.S9:                    .string          "PAT$3$V3"
.S10:                   .string          "group"
.S11:                   .string          "PAT$4$V0"
.S12:                   .string          "PAT$4$V1"
.S13:                   .string          "PAT$4$V5"
.S14:                   .string          "PAT$4$V3"
.S15:                   .string          "PAT$4$V4"
.S16:                   .string          "PAT$4$V2"
.S17:                   .string          "ListSize"
.S18:                   .string          "PATV$0"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0
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
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .text
                        .section         .note.GNU-stack,"",@progbits
