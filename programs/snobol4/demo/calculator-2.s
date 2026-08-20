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
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 56
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
                        mov              qword ptr [rbp + -24], rdx
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
.Lx15_240:              mov              dword ptr [rbp + -44], r14d
                        mov              r14d, ecx;                           jmp   n11_match_assign_cond_α
n10_match_span_β:       mov              r14d, dword ptr [rbp + -44]
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
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + PAT$1_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$2:
PAT$2_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 88
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
                        mov              qword ptr [rbp + -24], rdx
#-----------------------------------------------------------------------------------------------------------------------
n18_match_alternate_α:  mov              dword ptr [rbp + -88], r14d
                        lea              rax, [rip + .Lx26_21]
                        mov              qword ptr [rbp + -72], rax;          jmp   n24_match_defer_α
.Lx26_21:               lea              rax, [rip + .Lx26_22]
                        mov              qword ptr [rbp + -72], rax;          jmp   n23_match_defer_α
.Lx26_22:               lea              rax, [rip + .Lx26_19]
                        mov              qword ptr [rbp + -72], rax;          jmp   n20_match_lit_α
n18_match_alternate_s0: lea              rax, [rip + .Lx26_40]
                        mov              qword ptr [rbp + -80], rax;          jmp   n18_match_alternate_as
n18_match_alternate_s1: lea              rax, [rip + .Lx26_41]
                        mov              qword ptr [rbp + -80], rax;          jmp   n18_match_alternate_as
n18_match_alternate_s2: lea              rax, [rip + .Lx26_42]
                        mov              qword ptr [rbp + -80], rax;          jmp   n18_match_alternate_as
.Lx26_40:                                                                     jmp   n24_match_defer_β
.Lx26_41:                                                                     jmp   n23_match_defer_β
.Lx26_42:                                                                     jmp   n19_goto_β
n18_match_alternate_as:                                                       jmp   PAT$2_γ
n18_match_alternate_β:  mov              rax, qword ptr [rbp + -80];          jmp   rax
n18_match_alternate_af: mov              r14d, dword ptr [rbp + -88]
                        mov              rax, qword ptr [rbp + -72];          jmp   rax
.Lx26_19:                                                                     jmp   PAT$2_ω
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
.Lx30_9:                cmp              eax, 88;                             jne   .Lx30_21
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
                        test             rax, rax;                            je    .Lx30_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx30_10
.Lx30_21:               xor              eax, eax
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
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx30_6]
                        push             rcx
                        push             rax;                                 jmp   n22_match_lit_α
.Lx30_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n20_match_lit_β
n21_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx30_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx30_12
                                                                              jmp   rax
.Lx30_12:                                                                     jmp   qword ptr [rsp]
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
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx33_6]
                        push             rcx
                        push             rax;                                 jmp   n18_match_alternate_s1
.Lx33_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n18_match_alternate_af
n23_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx33_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx33_12
                                                                              jmp   rax
.Lx33_12:                                                                     jmp   qword ptr [rsp]
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
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx34_6]
                        push             rcx
                        push             rax;                                 jmp   n18_match_alternate_s0
.Lx34_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n18_match_alternate_af
n24_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx34_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx34_12
                                                                              jmp   rax
.Lx34_12:                                                                     jmp   qword ptr [rsp]
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
                        sub              rsp, 120
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
                        mov              qword ptr [rbp + -24], rdx
#-----------------------------------------------------------------------------------------------------------------------
n35_match_alternate_α:  mov              dword ptr [rbp + -120], r14d
                        lea              rax, [rip + .Lx45_21]
                        mov              qword ptr [rbp + -104], rax;         jmp   n43_match_defer_α
.Lx45_21:               lea              rax, [rip + .Lx45_19]
                        mov              qword ptr [rbp + -104], rax;         jmp   n37_match_assign_save_α
n35_match_alternate_s0: lea              rax, [rip + .Lx45_40]
                        mov              qword ptr [rbp + -112], rax;         jmp   n35_match_alternate_as
n35_match_alternate_s1: lea              rax, [rip + .Lx45_41]
                        mov              qword ptr [rbp + -112], rax;         jmp   n35_match_alternate_as
.Lx45_40:                                                                     jmp   n43_match_defer_β
.Lx45_41:                                                                     jmp   n36_goto_β
n35_match_alternate_as:                                                       jmp   PAT$3_γ
n35_match_alternate_β:  mov              rax, qword ptr [rbp + -112];         jmp   rax
n35_match_alternate_af: mov              r14d, dword ptr [rbp + -120]
                        mov              rax, qword ptr [rbp + -104];         jmp   rax
.Lx45_19:                                                                     jmp   PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_goto_α:                                                                   jmp   n35_match_alternate_af
n36_goto_β:                                                                   jmp   n35_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n37_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + -48], r14d;         jmp   n38_match_any_α
n37_match_assign_save_β:
                        add              rsp, 16;                             jmp   n35_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n38_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jl    .Lx50_240
                        add              rsp, 16;                             jmp   n35_match_alternate_af
.Lx50_240:              movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43;                             je    .Lx50_0
                        cmp              esi, 45;                             je    .Lx50_0
                        add              rsp, 16;                             jmp   n35_match_alternate_af
.Lx50_0:                add              r14d, 1;                             jmp   n39_match_assign_cond_α
n38_match_any_β:        sub              r14d, 1
                        add              rsp, 16;                             jmp   n35_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n39_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -48]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n40_match_assign_save_α
n39_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n38_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n40_match_assign_save_α:
                        mov              dword ptr [rbp + -64], r14d;         jmp   n41_match_defer_α
n40_match_assign_save_β:
                                                                              jmp   n39_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n41_match_defer_α:      push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        cmp              eax, 8;                              jne   .Lx55_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx55_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 312];           jmp   .Lx55_10
.Lx55_9:                cmp              eax, 88;                             jne   .Lx55_21
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
                        test             rax, rax;                            je    .Lx55_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx55_10
.Lx55_21:               xor              eax, eax
.Lx55_10:               test             rax, rax;                            jz    .Lx55_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx55_4]
                        lea              r11, [rip + .Lx55_5];                jmp   rax
.Lx55_4:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n42_match_assign_cond_α
.Lx55_5:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n40_match_assign_save_β
.Lx55_0:                push             r14
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
                        test             eax, eax;                            js    n40_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx55_6]
                        push             rcx
                        push             rax;                                 jmp   n42_match_assign_cond_α
.Lx55_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n40_match_assign_save_β
n41_match_defer_β:      mov              rsp, rbp
                        pop              rbp;                                 jmp   n40_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n42_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -64]
                        lea              rcx, [rip + .S5]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n35_match_alternate_s1
n42_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n41_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n43_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx58_16
                        mov              rax, qword ptr [rdx + 0]
.Lx58_16:               test             rax, rax;                            jz    .Lx58_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx58_4]
                        lea              r11, [rip + .Lx58_5];                jmp   rax
.Lx58_4:                                                                      jmp   n35_match_alternate_s0
.Lx58_5:                                                                      jmp   n35_match_alternate_af
.Lx58_0:                push             r14
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
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx58_6]
                        push             rcx
                        push             rax;                                 jmp   n35_match_alternate_s0
.Lx58_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n35_match_alternate_af
n43_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx58_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx58_12
                                                                              jmp   rax
.Lx58_12:                                                                     jmp   qword ptr [rsp]
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
                        sub              rsp, 136
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
                        mov              qword ptr [rbp + -24], rdx
#-----------------------------------------------------------------------------------------------------------------------
n59_match_defer_α:      sub              rsp, 16
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
                        test             rax, rax;                            je    .Lx72_16
                        mov              rax, qword ptr [rdx + 0]
.Lx72_16:               test             rax, rax;                            jz    .Lx72_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx72_4]
                        lea              r11, [rip + .Lx72_5];                jmp   rax
.Lx72_4:                                                                      jmp   n60_match_arbno_α
.Lx72_5:                add              rsp, 16;                             jmp   PAT$4_ω
.Lx72_0:                push             r14
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
                        test             eax, eax;                            jns   .Lx72_240
                        add              rsp, 16;                             jmp   PAT$4_ω
.Lx72_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx72_6]
                        push             rcx
                        push             rax;                                 jmp   n60_match_arbno_α
.Lx72_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$4_ω
n59_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx72_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx72_12
                                                                              jmp   rax
.Lx72_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n60_match_arbno_α:      mov              dword ptr [rbp + -32], r14d
                        mov              dword ptr [rbp + -28], r14d;         jmp   PAT$4_γ
n60_match_arbno_β:                                                            jmp   n61_match_alternate_α
n60_match_arbno_as:     mov              eax, dword ptr [rbp + -28]
                        cmp              r14d, eax;                           je    n61_match_alternate_β
                        mov              dword ptr [rbp + -28], r14d;         jmp   PAT$4_γ
n60_match_arbno_af:     mov              eax, dword ptr [rbp + -32]
                        cmp              r14d, eax;                           jmp   n59_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n61_match_alternate_α:  mov              dword ptr [rbp + -136], r14d
                        lea              rax, [rip + .Lx76_21]
                        mov              qword ptr [rbp + -120], rax;         jmp   n68_match_lit_α
.Lx76_21:               lea              rax, [rip + .Lx76_19]
                        mov              qword ptr [rbp + -120], rax;         jmp   n63_match_lit_α
n61_match_alternate_s0: lea              rax, [rip + .Lx76_40]
                        mov              qword ptr [rbp + -128], rax;         jmp   n61_match_alternate_as
n61_match_alternate_s1: lea              rax, [rip + .Lx76_41]
                        mov              qword ptr [rbp + -128], rax;         jmp   n61_match_alternate_as
.Lx76_40:                                                                     jmp   n67_goto_β
.Lx76_41:                                                                     jmp   n62_goto_β
n61_match_alternate_as:                                                       jmp   n60_match_arbno_as
n61_match_alternate_β:  mov              rax, qword ptr [rbp + -128];         jmp   rax
n61_match_alternate_af: mov              r14d, dword ptr [rbp + -136]
                        mov              rax, qword ptr [rbp + -120];         jmp   rax
.Lx76_19:                                                                     jmp   n60_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n62_goto_α:                                                                   jmp   n61_match_alternate_af
n62_goto_β:                                                                   jmp   n61_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n63_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n61_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47;                             jne   n61_match_alternate_af
                        add              r14d, 1;                             jmp   n64_match_assign_save_α
n63_match_lit_β:        sub              r14d, 1;                             jmp   n61_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n64_match_assign_save_α:
                        mov              dword ptr [rbp + -80], r14d;         jmp   n65_match_defer_α
n64_match_assign_save_β:
                                                                              jmp   n63_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n65_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx82_16
                        mov              rax, qword ptr [rdx + 0]
.Lx82_16:               test             rax, rax;                            jz    .Lx82_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx82_4]
                        lea              r11, [rip + .Lx82_5];                jmp   rax
.Lx82_4:                                                                      jmp   n66_match_assign_cond_α
.Lx82_5:                                                                      jmp   n64_match_assign_save_β
.Lx82_0:                push             r14
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
                        test             eax, eax;                            js    n64_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx82_6]
                        push             rcx
                        push             rax;                                 jmp   n66_match_assign_cond_α
.Lx82_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n64_match_assign_save_β
n65_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx82_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx82_12
                                                                              jmp   rax
.Lx82_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n66_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -80]
                        lea              rcx, [rip + .S9]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n61_match_alternate_s1
n66_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n65_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n67_goto_α:                                                                   jmp   n61_match_alternate_af
n67_goto_β:                                                                   jmp   n61_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n68_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n61_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42;                             jne   n61_match_alternate_af
                        add              r14d, 1;                             jmp   n69_match_assign_save_α
n68_match_lit_β:        sub              r14d, 1;                             jmp   n61_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n69_match_assign_save_α:
                        mov              dword ptr [rbp + -48], r14d;         jmp   n70_match_defer_α
n69_match_assign_save_β:
                                                                              jmp   n68_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n70_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx90_16
                        mov              rax, qword ptr [rdx + 0]
.Lx90_16:               test             rax, rax;                            jz    .Lx90_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx90_4]
                        lea              r11, [rip + .Lx90_5];                jmp   rax
.Lx90_4:                                                                      jmp   n71_match_assign_cond_α
.Lx90_5:                                                                      jmp   n69_match_assign_save_β
.Lx90_0:                push             r14
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
                        test             eax, eax;                            js    n69_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx90_6]
                        push             rcx
                        push             rax;                                 jmp   n71_match_assign_cond_α
.Lx90_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n69_match_assign_save_β
n70_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx90_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx90_12
                                                                              jmp   rax
.Lx90_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n71_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -48]
                        lea              rcx, [rip + .S11]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n61_match_alternate_s0
n71_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n70_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_β:
                                                                              jmp   n60_match_arbno_β
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
                        sub              rsp, 136
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
                        mov              qword ptr [rbp + -24], rdx
#-----------------------------------------------------------------------------------------------------------------------
n93_match_defer_α:      sub              rsp, 16
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
                        test             rax, rax;                            je    .Lx106_16
                        mov              rax, qword ptr [rdx + 0]
.Lx106_16:              test             rax, rax;                            jz    .Lx106_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx106_4]
                        lea              r11, [rip + .Lx106_5];               jmp   rax
.Lx106_4:                                                                     jmp   n94_match_arbno_α
.Lx106_5:               add              rsp, 16;                             jmp   PAT$5_ω
.Lx106_0:               push             r14
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
                        test             eax, eax;                            jns   .Lx106_240
                        add              rsp, 16;                             jmp   PAT$5_ω
.Lx106_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx106_6]
                        push             rcx
                        push             rax;                                 jmp   n94_match_arbno_α
.Lx106_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$5_ω
n93_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx106_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx106_12
                                                                              jmp   rax
.Lx106_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n94_match_arbno_α:      mov              dword ptr [rbp + -32], r14d
                        mov              dword ptr [rbp + -28], r14d;         jmp   PAT$5_γ
n94_match_arbno_β:                                                            jmp   n95_match_alternate_α
n94_match_arbno_as:     mov              eax, dword ptr [rbp + -28]
                        cmp              r14d, eax;                           je    n95_match_alternate_β
                        mov              dword ptr [rbp + -28], r14d;         jmp   PAT$5_γ
n94_match_arbno_af:     mov              eax, dword ptr [rbp + -32]
                        cmp              r14d, eax;                           jmp   n93_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n95_match_alternate_α:  mov              dword ptr [rbp + -136], r14d
                        lea              rax, [rip + .Lx110_21]
                        mov              qword ptr [rbp + -120], rax;         jmp   n102_match_lit_α
.Lx110_21:              lea              rax, [rip + .Lx110_19]
                        mov              qword ptr [rbp + -120], rax;         jmp   n97_match_lit_α
n95_match_alternate_s0: lea              rax, [rip + .Lx110_40]
                        mov              qword ptr [rbp + -128], rax;         jmp   n95_match_alternate_as
n95_match_alternate_s1: lea              rax, [rip + .Lx110_41]
                        mov              qword ptr [rbp + -128], rax;         jmp   n95_match_alternate_as
.Lx110_40:                                                                    jmp   n101_goto_β
.Lx110_41:                                                                    jmp   n96_goto_β
n95_match_alternate_as:                                                       jmp   n94_match_arbno_as
n95_match_alternate_β:  mov              rax, qword ptr [rbp + -128];         jmp   rax
n95_match_alternate_af: mov              r14d, dword ptr [rbp + -136]
                        mov              rax, qword ptr [rbp + -120];         jmp   rax
.Lx110_19:                                                                    jmp   n94_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n96_goto_α:                                                                   jmp   n95_match_alternate_af
n96_goto_β:                                                                   jmp   n95_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n97_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n95_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n95_match_alternate_af
                        add              r14d, 1;                             jmp   n98_match_assign_save_α
n97_match_lit_β:        sub              r14d, 1;                             jmp   n95_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n98_match_assign_save_α:
                        mov              dword ptr [rbp + -80], r14d;         jmp   n99_match_defer_α
n98_match_assign_save_β:
                                                                              jmp   n97_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n99_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx116_16
                        mov              rax, qword ptr [rdx + 0]
.Lx116_16:              test             rax, rax;                            jz    .Lx116_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx116_4]
                        lea              r11, [rip + .Lx116_5];               jmp   rax
.Lx116_4:                                                                     jmp   n100_match_assign_cond_α
.Lx116_5:                                                                     jmp   n98_match_assign_save_β
.Lx116_0:               push             r14
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
                        test             eax, eax;                            js    n98_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx116_6]
                        push             rcx
                        push             rax;                                 jmp   n100_match_assign_cond_α
.Lx116_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n98_match_assign_save_β
n99_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx116_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx116_12
                                                                              jmp   rax
.Lx116_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n100_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -80]
                        lea              rcx, [rip + .S14]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n95_match_alternate_s1
n100_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n99_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n101_goto_α:                                                                  jmp   n95_match_alternate_af
n101_goto_β:                                                                  jmp   n95_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n102_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n95_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   n95_match_alternate_af
                        add              r14d, 1;                             jmp   n103_match_assign_save_α
n102_match_lit_β:       sub              r14d, 1;                             jmp   n95_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n103_match_assign_save_α:
                        mov              dword ptr [rbp + -48], r14d;         jmp   n104_match_defer_α
n103_match_assign_save_β:
                                                                              jmp   n102_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n104_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx124_16
                        mov              rax, qword ptr [rdx + 0]
.Lx124_16:              test             rax, rax;                            jz    .Lx124_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx124_4]
                        lea              r11, [rip + .Lx124_5];               jmp   rax
.Lx124_4:                                                                     jmp   n105_match_assign_cond_α
.Lx124_5:                                                                     jmp   n103_match_assign_save_β
.Lx124_0:               push             r14
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
                        test             eax, eax;                            js    n103_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx124_6]
                        push             rcx
                        push             rax;                                 jmp   n105_match_assign_cond_α
.Lx124_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n103_match_assign_save_β
n104_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lx124_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx124_12
                                                                              jmp   rax
.Lx124_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n105_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -48]
                        lea              rcx, [rip + .S16]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n95_match_alternate_s0
n105_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n104_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_β:
                                                                              jmp   n94_match_arbno_β
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
n127_match_defer_α:     sub              rsp, 16
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
                        test             rax, rax;                            je    .Lx129_16
                        mov              rax, qword ptr [rdx + 0]
.Lx129_16:              test             rax, rax;                            jz    .Lx129_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx129_4]
                        lea              r11, [rip + .Lx129_5];               jmp   rax
.Lx129_4:                                                                     jmp   n128_match_fence0_α
.Lx129_5:               add              rsp, 16;                             jmp   PAT$6_ω
.Lx129_0:               push             r14
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
                        test             eax, eax;                            jns   .Lx129_240
                        add              rsp, 16;                             jmp   PAT$6_ω
.Lx129_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx129_6]
                        push             rcx
                        push             rax;                                 jmp   n128_match_fence0_α
.Lx129_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$6_ω
n127_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lx129_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx129_12
                                                                              jmp   rax
.Lx129_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n128_match_fence0_α:                                                          jmp   PAT$6_γ
n128_match_fence0_β:                                                          jmp   PAT$6_ω
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
                        sub              rsp, 72
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
                        mov              qword ptr [rbp + -24], rdx
#-----------------------------------------------------------------------------------------------------------------------
n132_match_pos_α:       mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$7_ω
                                                                              jmp   n133_match_arbno_α
n132_match_pos_β:                                                             jmp   PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n133_match_arbno_α:     mov              dword ptr [rbp + -32], r14d
                        mov              dword ptr [rbp + -28], r14d;         jmp   n134_match_rpos_α
n133_match_arbno_β:                                                           jmp   n135_match_defer_α
n133_match_arbno_as:    mov              eax, dword ptr [rbp + -28]
                        cmp              r14d, eax;                           je    n135_match_defer_β
                        mov              dword ptr [rbp + -28], r14d;         jmp   n134_match_rpos_α
n133_match_arbno_af:    mov              eax, dword ptr [rbp + -32]
                        cmp              r14d, eax;                           jmp   n132_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n134_match_rpos_α:      mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n133_match_arbno_β
                                                                              jmp   PAT$7_γ
n134_match_rpos_β:                                                            jmp   n133_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n135_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx144_16
                        mov              rax, qword ptr [rdx + 0]
.Lx144_16:              test             rax, rax;                            jz    .Lx144_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx144_4]
                        lea              r11, [rip + .Lx144_5];               jmp   rax
.Lx144_4:                                                                     jmp   n136_match_defer_α
.Lx144_5:                                                                     jmp   n133_match_arbno_af
.Lx144_0:               push             r14
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
                        test             eax, eax;                            js    n133_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx144_6]
                        push             rcx
                        push             rax;                                 jmp   n136_match_defer_α
.Lx144_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n133_match_arbno_af
n135_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lx144_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx144_12
                                                                              jmp   rax
.Lx144_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n136_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx145_16
                        mov              rax, qword ptr [rdx + 0]
.Lx145_16:              test             rax, rax;                            jz    .Lx145_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx145_4]
                        lea              r11, [rip + .Lx145_5];               jmp   rax
.Lx145_4:                                                                     jmp   n137_match_assign_save_α
.Lx145_5:                                                                     jmp   n135_match_defer_β
.Lx145_0:               push             r14
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
                        test             eax, eax;                            js    n135_match_defer_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx145_6]
                        push             rcx
                        push             rax;                                 jmp   n137_match_assign_save_α
.Lx145_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n135_match_defer_β
n136_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lx145_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx145_12
                                                                              jmp   rax
.Lx145_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n137_match_assign_save_α:
                        mov              dword ptr [rbp + -64], r14d;         jmp   n138_match_defer_α
n137_match_assign_save_β:
                                                                              jmp   n136_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n138_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx148_16
                        mov              rax, qword ptr [rdx + 0]
.Lx148_16:              test             rax, rax;                            jz    .Lx148_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx148_4]
                        lea              r11, [rip + .Lx148_5];               jmp   rax
.Lx148_4:                                                                     jmp   n139_match_assign_cond_α
.Lx148_5:                                                                     jmp   n137_match_assign_save_β
.Lx148_0:               push             r14
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
                        test             eax, eax;                            js    n137_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx148_6]
                        push             rcx
                        push             rax;                                 jmp   n139_match_assign_cond_α
.Lx148_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n137_match_assign_save_β
n138_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lx148_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx148_12
                                                                              jmp   rax
.Lx148_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n139_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -64]
                        lea              rcx, [rip + .S21]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n133_match_arbno_as
n139_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n138_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_β:
                                                                              jmp   n134_match_rpos_β
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
.Lgvan5:                .string          "p1"
.Lgvan6:                .string          "SUB"
.Lgvan7:                .string          "MUL"
.Lgvan8:                .string          "DIV"
.Lgvan9:                .string          "SGN"
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
#         DEFINE('EMIT()')                        :(EMIT_end)
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_begin_α:                                                       jmp   n152_define_α
n151_statement_begin_β:                                                       jmp   n171_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n152_define_α:          mov              rdi, qword ptr [rip + .Lx580_0]
                        mov              rsi, qword ptr [rip + .Lx580_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n154_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n153_statement_end_α
n152_define_β:                                                                jmp   n151_statement_begin_β
.Lx580_0:               .quad            .Lx580_0_s
.Lx580_0_s:             .string          "EMIT"
.Lx580_1:               .quad            .Lx580_1_s
.Lx580_1_s:             .string          ""
                                                                              jmp   .Lx581_245
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
                        lea              rax, [rip + n154_statement_begin_α]; jmp   rax
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
.Lx581_245:
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_end_α:                                                         jmp   n171_statement_begin_α
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_begin_α:                                                       jmp   n155_var_α
n154_statement_begin_β:                                                       jmp   n162_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n155_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n156_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx587_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_subscript_α
n156_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n154_statement_begin_β
.Lx587_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n157_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx588_240
                        add              rsp, 16;                             jmp   n156_lit_integer_β
.Lx588_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n158_deref_α
n157_subscript_β:       add              rsp, 16;                             jmp   n156_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n158_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx589_240
                        add              rsp, 16;                             jmp   n157_subscript_β
.Lx589_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_call_α
n158_deref_β:           add              rsp, 16;                             jmp   n157_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n159_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig591z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig591z:              .quad            1
                        .quad            .Lx591_2
                        .quad            .Lx591_2
                        .quad            16
.Lx591_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx591_29
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
.Lx591_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx591_240
                        add              rsp, 16;                             jmp   n158_deref_β
.Lx591_240:                                                                   jmp   n160_assign_α
n159_call_β:                                                                  jmp   n158_deref_β
.Lx591_0:               .quad            .Lx591_0_s
.Lx591_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_α:          mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n161_statement_end_α
.Lx592_0:               .quad            .Lx592_0_s
.Lx592_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_end_α:   add              rsp, 80;                             jmp   n162_statement_begin_α
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_begin_α:                                                       jmp   n163_lit_integer_α
n162_statement_begin_β:                                                       jmp   n166_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx597_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n164_assign_α
.Lx597_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n164_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n165_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_end_α:   add              rsp, 16;                             jmp   n166_statement_begin_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_begin_α:                                                       jmp   n167_lit_string_α
n166_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx603_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n168_call_α
.Lx603_0:               .quad            .Lx603_0_s
.Lx603_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n168_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd605:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd605]
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
                        cmp              eax, 104;                            jne   .Lx604_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n166_statement_begin_β
.Lx604_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n169_assign_α
n168_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n166_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # EMIT
                        mov              qword ptr [r9 + 8], rdx;             jmp   n170_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# EMIT_end  <stmt 5, line 33: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_begin_α:                                                       jmp   n172_statement_end_α
n171_statement_begin_β:                                                       jmp   n173_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_end_α:                                                         jmp   n173_statement_begin_α
#=======================================================================================================================
#         DEFINE('PSH()')                         :(PSH_end)
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_begin_α:                                                       jmp   n174_define_α
n173_statement_begin_β:                                                       jmp   n188_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n174_define_α:          mov              rdi, qword ptr [rip + .Lx616_0]
                        mov              rsi, qword ptr [rip + .Lx616_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n176_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n175_statement_end_α
n174_define_β:                                                                jmp   n173_statement_begin_β
.Lx616_0:               .quad            .Lx616_0_s
.Lx616_0_s:             .string          "PSH"
.Lx616_1:               .quad            .Lx616_1_s
.Lx616_1_s:             .string          ""
                                                                              jmp   .Lx617_245
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
                        lea              rax, [rip + n176_statement_begin_α]; jmp   rax
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
.Lx617_245:
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_end_α:                                                         jmp   n188_statement_begin_α
#=======================================================================================================================
# PSH     sp = sp + 1
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_begin_α:                                                       jmp   n177_var_α
n176_statement_begin_β:                                                       jmp   n182_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n178_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n179_binop_α
n178_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n176_statement_begin_β
.Lx623_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n179_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx624_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx624_7
.Lx624_2:               and              edx, 1;                              jz    .Lx624_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx624_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx624_4
.Lx624_3:               movq             xmm0, rsi
.Lx624_4:               cmp              ecx, 5;                              je    .Lx624_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx624_6
.Lx624_5:               movq             xmm1, rdi
.Lx624_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx624_7:                                                                     jmp   n180_assign_α
.Lx624_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx624_240
                        add              rsp, 16;                             jmp   n178_lit_integer_β
.Lx624_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n180_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n180_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n181_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_end_α:   add              rsp, 48;                             jmp   n182_statement_begin_α
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_begin_α:                                                       jmp   n183_var_α
n182_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n184_var_α
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n185_subscript_α
n184_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n182_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n185_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx632_240
                        add              rsp, 16;                             jmp   n184_var_β
.Lx632_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n186_assign_α:          mov              rax, qword ptr [rsp + 0]             # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # PSH
                        mov              qword ptr [r9 + 24], rdx;            jmp   n187_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_end_α:   add              rsp, 48;                             jmp   NRETURN
#=======================================================================================================================
# PSH_end  <stmt 9, line 37: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_begin_α:                                                       jmp   n189_statement_end_α
n188_statement_begin_β:                                                       jmp   n190_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_end_α:                                                         jmp   n190_statement_begin_α
#=======================================================================================================================
#         DEFINE('DRF(nm)')                       :(DRF_end)
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_begin_α:                                                       jmp   n191_define_α
n190_statement_begin_β:                                                       jmp   n212_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n191_define_α:          mov              rdi, qword ptr [rip + .Lx643_0]
                        mov              rsi, qword ptr [rip + .Lx643_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n193_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n192_statement_end_α
n191_define_β:                                                                jmp   n190_statement_begin_β
.Lx643_0:               .quad            .Lx643_0_s
.Lx643_0_s:             .string          "DRF"
.Lx643_1:               .quad            .Lx643_1_s
.Lx643_1_s:             .string          "nm"
                                                                              jmp   .Lx644_245
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
                        cmp              rdx, 0;                              jbe   .Lx644_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # nm
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx644_41
.Lx644_10:              mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx644_41:              lea              r10, [rip + DRF_γ]
                        lea              r11, [rip + DRF_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n193_statement_begin_α]; jmp   rax
DRF_γ:                  mov              rdi, qword ptr [r9 + 32]             # DRF
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Lx644_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx644_110
.Lx644_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx644_110:             mov              r10, qword ptr [rsp + 16]
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
                        cmp              rdx, 0;                              jbe   .Lx644_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx644_180
.Lx644_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx644_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx644_245:
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_end_α:                                                         jmp   n212_statement_begin_α
#=======================================================================================================================
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
#-----------------------------------------------------------------------------------------------------------------------
n193_statement_begin_α:                                                       jmp   n194_var_α
n193_statement_begin_β:                                                       jmp   n208_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n195_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n195_match_begin_α:     mov              rdi, qword ptr [rsp + 0]             # var
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
.Lx651_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx651_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n196_match_pos_α
n195_match_begin_β:
.Lx651_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx651_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx651_1
                                                                              jmp   .Lx651_0
.Lx651_1:
n195_match_begin_af:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        add              rsp, 16;                             jmp   n208_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n196_match_pos_α:       mov              rax, 0
                        cmp              r14d, eax;                           jne   n195_match_begin_β
                                                                              jmp   n197_match_any_α
n196_match_pos_β:                                                             jmp   n195_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n197_match_any_α:       mov              eax, r14d
                        cmp              eax, r15d;                           jge   n195_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n195_match_begin_β
                        add              r14d, 1;                             jmp   n198_match_rpos_α
n197_match_any_β:       sub              r14d, 1;                             jmp   n195_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n198_match_rpos_α:      mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n197_match_any_β
                                                                              jmp   n199_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n199_match_end_α:       mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        test             rax, rax;                            je    .Lx657_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n195_match_begin_af
.Lx657_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n200_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_end_α:   add              rsp, 16;                             jmp   n201_statement_begin_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_begin_α:                                                       jmp   n202_var_α
n201_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n202_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n203_var_α
#-----------------------------------------------------------------------------------------------------------------------
n203_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n204_subscript_α
n203_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n201_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n204_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx664_240
                        add              rsp, 16;                             jmp   n203_var_β
.Lx664_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n205_deref_α
n204_subscript_β:       add              rsp, 16;                             jmp   n203_var_β
#-----------------------------------------------------------------------------------------------------------------------
n205_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx665_240
                        add              rsp, 16;                             jmp   n204_subscript_β
.Lx665_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n206_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n206_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx;            jmp   n207_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n207_statement_end_α:   add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n208_statement_begin_α:                                                       jmp   n209_var_α
n208_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n209_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n210_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n210_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx;            jmp   n211_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n211_statement_end_α:   add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# DRF_end  <stmt 14, line 42: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n212_statement_begin_α:                                                       jmp   n213_statement_end_α
n212_statement_begin_β:                                                       jmp   n214_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n213_statement_end_α:                                                         jmp   n214_statement_begin_α
#=======================================================================================================================
#         DEFINE('ADD()p1')                       :(ADD_end)
#-----------------------------------------------------------------------------------------------------------------------
n214_statement_begin_α:                                                       jmp   n215_define_α
n214_statement_begin_β:                                                       jmp   n251_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n215_define_α:          mov              rdi, qword ptr [rip + .Lx682_0]
                        mov              rsi, qword ptr [rip + .Lx682_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n217_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n216_statement_end_α
n215_define_β:                                                                jmp   n214_statement_begin_β
.Lx682_0:               .quad            .Lx682_0_s
.Lx682_0_s:             .string          "ADD"
.Lx682_1:               .quad            .Lx682_1_s
.Lx682_1_s:             .string          "p1"
                                                                              jmp   .Lx683_245
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
                        cmp              rdx, 0;                              jbe   .Lx683_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx683_41
.Lx683_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx683_41:              lea              r10, [rip + ADD_γ]
                        lea              r11, [rip + ADD_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n217_statement_begin_α]; jmp   rax
ADD_γ:                  mov              rdi, qword ptr [r9 + 64]             # ADD
                        mov              rsi, qword ptr [r9 + 72]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rdx, 0;                              jbe   .Lx683_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx683_110
.Lx683_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx683_110:             mov              r10, qword ptr [rsp + 16]
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
                        cmp              rdx, 0;                              jbe   .Lx683_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx683_180
.Lx683_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx683_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx683_245:
#-----------------------------------------------------------------------------------------------------------------------
n216_statement_end_α:                                                         jmp   n251_statement_begin_α
#=======================================================================================================================
# ADD     S[sp - 1] = DRF(S[sp - 1]) + DRF(S[sp - 0])
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_begin_α:                                                       jmp   n218_var_α
n217_statement_begin_β:                                                       jmp   n240_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n219_var_α
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_lit_integer_α
n219_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n217_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx690_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n221_binop_α
n220_lit_integer_β:     add              rsp, 16;                             jmp   n219_var_β
.Lx690_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n221_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx691_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx691_7
.Lx691_2:               and              edx, 1;                              jz    .Lx691_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx691_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx691_4
.Lx691_3:               movq             xmm0, rsi
.Lx691_4:               cmp              ecx, 5;                              je    .Lx691_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx691_6
.Lx691_5:               movq             xmm1, rdi
.Lx691_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx691_7:                                                                     jmp   n222_subscript_α
.Lx691_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx691_240
                        add              rsp, 16;                             jmp   n220_lit_integer_β
.Lx691_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n222_subscript_α
n221_binop_β:           add              rsp, 16;                             jmp   n220_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n222_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx692_240
                        add              rsp, 16;                             jmp   n221_binop_β
.Lx692_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n223_var_α
n222_subscript_β:       add              rsp, 16;                             jmp   n221_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n223_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n224_var_α
n223_var_β:             add              rsp, 16;                             jmp   n222_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n224_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n225_lit_integer_α
n224_var_β:             add              rsp, 16;                             jmp   n223_var_β
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx695_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n226_binop_α
n225_lit_integer_β:     add              rsp, 16;                             jmp   n224_var_β
.Lx695_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n226_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx696_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx696_7
.Lx696_2:               and              edx, 1;                              jz    .Lx696_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx696_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx696_4
.Lx696_3:               movq             xmm0, rsi
.Lx696_4:               cmp              ecx, 5;                              je    .Lx696_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx696_6
.Lx696_5:               movq             xmm1, rdi
.Lx696_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx696_7:                                                                     jmp   n227_subscript_α
.Lx696_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx696_240
                        add              rsp, 16;                             jmp   n225_lit_integer_β
.Lx696_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n227_subscript_α
n226_binop_β:           add              rsp, 16;                             jmp   n225_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n227_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx697_240
                        add              rsp, 16;                             jmp   n226_binop_β
.Lx697_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n228_deref_α
n227_subscript_β:       add              rsp, 16;                             jmp   n226_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n228_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx698_240
                        add              rsp, 16;                             jmp   n227_subscript_β
.Lx698_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n229_call_α
n228_deref_β:           add              rsp, 16;                             jmp   n227_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n229_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig700z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig700z:              .quad            1
                        .quad            .Lx700_2
                        .quad            .Lx700_2
                        .quad            16
.Lx700_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx700_29
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
.Lx700_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx700_240
                        add              rsp, 16;                             jmp   n228_deref_β
.Lx700_240:                                                                   jmp   n230_var_α
n229_call_β:                                                                  jmp   n228_deref_β
.Lx700_0:               .quad            .Lx700_0_s
.Lx700_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n230_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n231_var_α
n230_var_β:             add              rsp, 32;                             jmp   n228_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n232_lit_integer_α
n231_var_β:             add              rsp, 16;                             jmp   n230_var_β
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx703_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n233_binop_α
n232_lit_integer_β:     add              rsp, 16;                             jmp   n231_var_β
.Lx703_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n233_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx704_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx704_7
.Lx704_2:               and              edx, 1;                              jz    .Lx704_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx704_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx704_4
.Lx704_3:               movq             xmm0, rsi
.Lx704_4:               cmp              ecx, 5;                              je    .Lx704_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx704_6
.Lx704_5:               movq             xmm1, rdi
.Lx704_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx704_7:                                                                     jmp   n234_subscript_α
.Lx704_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx704_240
                        add              rsp, 16;                             jmp   n232_lit_integer_β
.Lx704_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n234_subscript_α
n233_binop_β:           add              rsp, 16;                             jmp   n232_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n234_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx705_240
                        add              rsp, 16;                             jmp   n233_binop_β
.Lx705_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n235_deref_α
n234_subscript_β:       add              rsp, 16;                             jmp   n233_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n235_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx706_240
                        add              rsp, 16;                             jmp   n234_subscript_β
.Lx706_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n236_call_α
n235_deref_β:           add              rsp, 16;                             jmp   n234_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n236_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig708z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig708z:              .quad            1
                        .quad            .Lx708_2
                        .quad            .Lx708_2
                        .quad            16
.Lx708_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx708_29
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
.Lx708_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx708_240
                        add              rsp, 16;                             jmp   n235_deref_β
.Lx708_240:                                                                   jmp   n237_binop_α
n236_call_β:                                                                  jmp   n235_deref_β
.Lx708_0:               .quad            .Lx708_0_s
.Lx708_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n237_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx709_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx709_7
.Lx709_2:               and              edx, 1;                              jz    .Lx709_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx709_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx709_4
.Lx709_3:               movq             xmm0, rsi
.Lx709_4:               cmp              ecx, 5;                              je    .Lx709_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx709_6
.Lx709_5:               movq             xmm1, rdi
.Lx709_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx709_7:                                                                     jmp   n238_assign_var_α
.Lx709_0:               mov              rdi, qword ptr [rsp + 128]           # call
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx709_240
                        add              rsp, 32;                             jmp   n235_deref_β
.Lx709_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n238_assign_var_α
n237_binop_β:           add              rsp, 32;                             jmp   n235_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n238_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 256]           # subscript
                        mov              rsi, qword ptr [rsp + 264]
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
                        cmp              eax, 104;                            jne   .Lx710_240
                        add              rsp, 16;                             jmp   n237_binop_β
.Lx710_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n239_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_end_α:   add              rsp, 336;                            jmp   n240_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n240_statement_begin_α:                                                       jmp   n241_var_α
n240_statement_begin_β:                                                       jmp   n246_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx716_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n243_binop_α
n242_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n240_statement_begin_β
.Lx716_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n243_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx717_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx717_7
.Lx717_2:               and              edx, 1;                              jz    .Lx717_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx717_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx717_4
.Lx717_3:               movq             xmm0, rsi
.Lx717_4:               cmp              ecx, 5;                              je    .Lx717_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx717_6
.Lx717_5:               movq             xmm1, rdi
.Lx717_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx717_7:                                                                     jmp   n244_assign_α
.Lx717_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx717_240
                        add              rsp, 16;                             jmp   n242_lit_integer_β
.Lx717_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n244_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n244_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n245_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n245_statement_end_α:   add              rsp, 48;                             jmp   n246_statement_begin_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n246_statement_begin_α:                                                       jmp   n247_lit_string_α
n246_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx723_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n248_call_α
.Lx723_0:               .quad            .Lx723_0_s
.Lx723_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n248_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd725:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd725]
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
                        cmp              eax, 104;                            jne   .Lx724_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n246_statement_begin_β
.Lx724_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n249_assign_α
n248_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n246_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n249_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ADD
                        mov              qword ptr [r9 + 72], rdx;            jmp   n250_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n250_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# ADD_end  <stmt 19, line 47: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n251_statement_begin_α:                                                       jmp   n252_statement_end_α
n251_statement_begin_β:                                                       jmp   n253_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n252_statement_end_α:                                                         jmp   n253_statement_begin_α
#=======================================================================================================================
#         DEFINE('SUB()p1')                       :(SUB_end)
#-----------------------------------------------------------------------------------------------------------------------
n253_statement_begin_α:                                                       jmp   n254_define_α
n253_statement_begin_β:                                                       jmp   n288_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n254_define_α:          mov              rdi, qword ptr [rip + .Lx736_0]
                        mov              rsi, qword ptr [rip + .Lx736_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n256_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n255_statement_end_α
n254_define_β:                                                                jmp   n253_statement_begin_β
.Lx736_0:               .quad            .Lx736_0_s
.Lx736_0_s:             .string          "SUB"
.Lx736_1:               .quad            .Lx736_1_s
.Lx736_1_s:             .string          "p1"
                                                                              jmp   .Lx737_245
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
                        cmp              rdx, 0;                              jbe   .Lx737_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx737_41
.Lx737_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx737_41:              lea              r10, [rip + SUB_γ]
                        lea              r11, [rip + SUB_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n256_statement_begin_α]; jmp   rax
SUB_γ:                  mov              rdi, qword ptr [r9 + 96]             # SUB
                        mov              rsi, qword ptr [r9 + 104]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        cmp              rdx, 0;                              jbe   .Lx737_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx737_110
.Lx737_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx737_110:             mov              r10, qword ptr [rsp + 16]
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
                        cmp              rdx, 0;                              jbe   .Lx737_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx737_180
.Lx737_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx737_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx737_245:
#-----------------------------------------------------------------------------------------------------------------------
n255_statement_end_α:                                                         jmp   n288_statement_begin_α
#=======================================================================================================================
# SUB     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_begin_α:                                                       jmp   n257_var_α
n256_statement_begin_β:                                                       jmp   n264_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n258_var_α
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n259_subscript_α
n258_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n256_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n259_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx744_240
                        add              rsp, 16;                             jmp   n258_var_β
.Lx744_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n260_deref_α
n259_subscript_β:       add              rsp, 16;                             jmp   n258_var_β
#-----------------------------------------------------------------------------------------------------------------------
n260_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx745_240
                        add              rsp, 16;                             jmp   n259_subscript_β
.Lx745_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n261_call_α
n260_deref_β:           add              rsp, 16;                             jmp   n259_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n261_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig747z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig747z:              .quad            1
                        .quad            .Lx747_2
                        .quad            .Lx747_2
                        .quad            16
.Lx747_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx747_29
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
.Lx747_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx747_240
                        add              rsp, 16;                             jmp   n260_deref_β
.Lx747_240:                                                                   jmp   n262_assign_α
n261_call_β:                                                                  jmp   n260_deref_β
.Lx747_0:               .quad            .Lx747_0_s
.Lx747_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n262_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n263_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n263_statement_end_α:   add              rsp, 80;                             jmp   n264_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n264_statement_begin_α:                                                       jmp   n265_var_α
n264_statement_begin_β:                                                       jmp   n270_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n266_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx754_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n267_binop_α
n266_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n264_statement_begin_β
.Lx754_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n267_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx755_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx755_7
.Lx755_2:               and              edx, 1;                              jz    .Lx755_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx755_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx755_4
.Lx755_3:               movq             xmm0, rsi
.Lx755_4:               cmp              ecx, 5;                              je    .Lx755_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx755_6
.Lx755_5:               movq             xmm1, rdi
.Lx755_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx755_7:                                                                     jmp   n268_assign_α
.Lx755_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx755_240
                        add              rsp, 16;                             jmp   n266_lit_integer_β
.Lx755_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n268_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n268_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n269_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n269_statement_end_α:   add              rsp, 48;                             jmp   n270_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n270_statement_begin_α:                                                       jmp   n271_var_α
n270_statement_begin_β:                                                       jmp   n283_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n271_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n272_var_α
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n273_subscript_α
n272_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n270_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n273_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx763_240
                        add              rsp, 16;                             jmp   n272_var_β
.Lx763_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n274_var_α
n273_subscript_β:       add              rsp, 16;                             jmp   n272_var_β
#-----------------------------------------------------------------------------------------------------------------------
n274_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n275_var_α
n274_var_β:             add              rsp, 16;                             jmp   n273_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n275_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n276_subscript_α
n275_var_β:             add              rsp, 16;                             jmp   n274_var_β
#-----------------------------------------------------------------------------------------------------------------------
n276_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx766_240
                        add              rsp, 16;                             jmp   n275_var_β
.Lx766_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n277_deref_α
n276_subscript_β:       add              rsp, 16;                             jmp   n275_var_β
#-----------------------------------------------------------------------------------------------------------------------
n277_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx767_240
                        add              rsp, 16;                             jmp   n276_subscript_β
.Lx767_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n278_call_α
n277_deref_β:           add              rsp, 16;                             jmp   n276_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n278_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig769z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig769z:              .quad            1
                        .quad            .Lx769_2
                        .quad            .Lx769_2
                        .quad            16
.Lx769_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx769_29
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
.Lx769_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx769_240
                        add              rsp, 16;                             jmp   n277_deref_β
.Lx769_240:                                                                   jmp   n279_var_α
n278_call_β:                                                                  jmp   n277_deref_β
.Lx769_0:               .quad            .Lx769_0_s
.Lx769_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n279_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n280_binop_α
n279_var_β:             add              rsp, 32;                             jmp   n277_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n280_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx771_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx771_7
.Lx771_2:               and              edx, 1;                              jz    .Lx771_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx771_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx771_4
.Lx771_3:               movq             xmm0, rsi
.Lx771_4:               cmp              ecx, 5;                              je    .Lx771_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx771_6
.Lx771_5:               movq             xmm1, rdi
.Lx771_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx771_7:                                                                     jmp   n281_assign_var_α
.Lx771_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx771_240
                        add              rsp, 16;                             jmp   n279_var_β
.Lx771_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n281_assign_var_α
n280_binop_β:           add              rsp, 16;                             jmp   n279_var_β
#-----------------------------------------------------------------------------------------------------------------------
n281_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx772_240
                        add              rsp, 16;                             jmp   n280_binop_β
.Lx772_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n282_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n282_statement_end_α:   add              rsp, 176;                            jmp   n283_statement_begin_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n283_statement_begin_α:                                                       jmp   n284_lit_string_α
n283_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx777_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n285_call_α
.Lx777_0:               .quad            .Lx777_0_s
.Lx777_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n285_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd779:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd779]
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
                        cmp              eax, 104;                            jne   .Lx778_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n283_statement_begin_β
.Lx778_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n286_assign_α
n285_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n283_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n286_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # SUB
                        mov              qword ptr [r9 + 104], rdx;           jmp   n287_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n287_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# SUB_end  <stmt 25, line 53: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n288_statement_begin_α:                                                       jmp   n289_statement_end_α
n288_statement_begin_β:                                                       jmp   n290_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n289_statement_end_α:                                                         jmp   n290_statement_begin_α
#=======================================================================================================================
#         DEFINE('MUL()p1')                       :(MUL_end)
#-----------------------------------------------------------------------------------------------------------------------
n290_statement_begin_α:                                                       jmp   n291_define_α
n290_statement_begin_β:                                                       jmp   n325_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n291_define_α:          mov              rdi, qword ptr [rip + .Lx790_0]
                        mov              rsi, qword ptr [rip + .Lx790_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n293_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n292_statement_end_α
n291_define_β:                                                                jmp   n290_statement_begin_β
.Lx790_0:               .quad            .Lx790_0_s
.Lx790_0_s:             .string          "MUL"
.Lx790_1:               .quad            .Lx790_1_s
.Lx790_1_s:             .string          "p1"
                                                                              jmp   .Lx791_245
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
                        cmp              rdx, 0;                              jbe   .Lx791_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx791_41
.Lx791_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx791_41:              lea              r10, [rip + MUL_γ]
                        lea              r11, [rip + MUL_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n293_statement_begin_α]; jmp   rax
MUL_γ:                  mov              rdi, qword ptr [r9 + 112]            # MUL
                        mov              rsi, qword ptr [r9 + 120]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
                        cmp              rdx, 0;                              jbe   .Lx791_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx791_110
.Lx791_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx791_110:             mov              r10, qword ptr [rsp + 16]
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
                        cmp              rdx, 0;                              jbe   .Lx791_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx791_180
.Lx791_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx791_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx791_245:
#-----------------------------------------------------------------------------------------------------------------------
n292_statement_end_α:                                                         jmp   n325_statement_begin_α
#=======================================================================================================================
# MUL     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n293_statement_begin_α:                                                       jmp   n294_var_α
n293_statement_begin_β:                                                       jmp   n301_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_var_α
#-----------------------------------------------------------------------------------------------------------------------
n295_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n296_subscript_α
n295_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n293_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n296_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx798_240
                        add              rsp, 16;                             jmp   n295_var_β
.Lx798_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n297_deref_α
n296_subscript_β:       add              rsp, 16;                             jmp   n295_var_β
#-----------------------------------------------------------------------------------------------------------------------
n297_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx799_240
                        add              rsp, 16;                             jmp   n296_subscript_β
.Lx799_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n298_call_α
n297_deref_β:           add              rsp, 16;                             jmp   n296_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n298_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig801z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig801z:              .quad            1
                        .quad            .Lx801_2
                        .quad            .Lx801_2
                        .quad            16
.Lx801_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx801_29
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
.Lx801_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx801_240
                        add              rsp, 16;                             jmp   n297_deref_β
.Lx801_240:                                                                   jmp   n299_assign_α
n298_call_β:                                                                  jmp   n297_deref_β
.Lx801_0:               .quad            .Lx801_0_s
.Lx801_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n299_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n300_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n300_statement_end_α:   add              rsp, 80;                             jmp   n301_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n301_statement_begin_α:                                                       jmp   n302_var_α
n301_statement_begin_β:                                                       jmp   n307_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n302_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n303_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx808_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n304_binop_α
n303_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n301_statement_begin_β
.Lx808_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n304_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx809_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx809_7
.Lx809_2:               and              edx, 1;                              jz    .Lx809_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx809_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx809_4
.Lx809_3:               movq             xmm0, rsi
.Lx809_4:               cmp              ecx, 5;                              je    .Lx809_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx809_6
.Lx809_5:               movq             xmm1, rdi
.Lx809_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx809_7:                                                                     jmp   n305_assign_α
.Lx809_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx809_240
                        add              rsp, 16;                             jmp   n303_lit_integer_β
.Lx809_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n305_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n305_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n306_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n306_statement_end_α:   add              rsp, 48;                             jmp   n307_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n307_statement_begin_α:                                                       jmp   n308_var_α
n307_statement_begin_β:                                                       jmp   n320_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n309_var_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n310_subscript_α
n309_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n307_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n310_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx817_240
                        add              rsp, 16;                             jmp   n309_var_β
.Lx817_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n311_var_α
n310_subscript_β:       add              rsp, 16;                             jmp   n309_var_β
#-----------------------------------------------------------------------------------------------------------------------
n311_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n312_var_α
n311_var_β:             add              rsp, 16;                             jmp   n310_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n312_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n313_subscript_α
n312_var_β:             add              rsp, 16;                             jmp   n311_var_β
#-----------------------------------------------------------------------------------------------------------------------
n313_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx820_240
                        add              rsp, 16;                             jmp   n312_var_β
.Lx820_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n314_deref_α
n313_subscript_β:       add              rsp, 16;                             jmp   n312_var_β
#-----------------------------------------------------------------------------------------------------------------------
n314_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx821_240
                        add              rsp, 16;                             jmp   n313_subscript_β
.Lx821_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n315_call_α
n314_deref_β:           add              rsp, 16;                             jmp   n313_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n315_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig823z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig823z:              .quad            1
                        .quad            .Lx823_2
                        .quad            .Lx823_2
                        .quad            16
.Lx823_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx823_29
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
.Lx823_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx823_240
                        add              rsp, 16;                             jmp   n314_deref_β
.Lx823_240:                                                                   jmp   n316_var_α
n315_call_β:                                                                  jmp   n314_deref_β
.Lx823_0:               .quad            .Lx823_0_s
.Lx823_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n316_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n317_binop_α
n316_var_β:             add              rsp, 32;                             jmp   n314_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n317_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx825_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx825_7
.Lx825_2:               and              edx, 1;                              jz    .Lx825_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx825_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx825_4
.Lx825_3:               movq             xmm0, rsi
.Lx825_4:               cmp              ecx, 5;                              je    .Lx825_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx825_6
.Lx825_5:               movq             xmm1, rdi
.Lx825_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx825_7:                                                                     jmp   n318_assign_var_α
.Lx825_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx825_240
                        add              rsp, 16;                             jmp   n316_var_β
.Lx825_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n318_assign_var_α
n317_binop_β:           add              rsp, 16;                             jmp   n316_var_β
#-----------------------------------------------------------------------------------------------------------------------
n318_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx826_240
                        add              rsp, 16;                             jmp   n317_binop_β
.Lx826_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n319_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n319_statement_end_α:   add              rsp, 176;                            jmp   n320_statement_begin_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n320_statement_begin_α:                                                       jmp   n321_lit_string_α
n320_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx831_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n322_call_α
.Lx831_0:               .quad            .Lx831_0_s
.Lx831_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n322_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd833:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd833]
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
                        cmp              eax, 104;                            jne   .Lx832_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n320_statement_begin_β
.Lx832_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n323_assign_α
n322_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n320_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n323_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # MUL
                        mov              qword ptr [r9 + 120], rdx;           jmp   n324_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n324_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# MUL_end  <stmt 31, line 59: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n325_statement_begin_α:                                                       jmp   n326_statement_end_α
n325_statement_begin_β:                                                       jmp   n327_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n326_statement_end_α:                                                         jmp   n327_statement_begin_α
#=======================================================================================================================
#         DEFINE('DIV()p1')                       :(DIV_end)
#-----------------------------------------------------------------------------------------------------------------------
n327_statement_begin_α:                                                       jmp   n328_define_α
n327_statement_begin_β:                                                       jmp   n362_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n328_define_α:          mov              rdi, qword ptr [rip + .Lx844_0]
                        mov              rsi, qword ptr [rip + .Lx844_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n330_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n329_statement_end_α
n328_define_β:                                                                jmp   n327_statement_begin_β
.Lx844_0:               .quad            .Lx844_0_s
.Lx844_0_s:             .string          "DIV"
.Lx844_1:               .quad            .Lx844_1_s
.Lx844_1_s:             .string          "p1"
                                                                              jmp   .Lx845_245
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
                        cmp              rdx, 0;                              jbe   .Lx845_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx845_41
.Lx845_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx845_41:              lea              r10, [rip + DIV_γ]
                        lea              r11, [rip + DIV_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n330_statement_begin_α]; jmp   rax
DIV_γ:                  mov              rdi, qword ptr [r9 + 128]            # DIV
                        mov              rsi, qword ptr [r9 + 136]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rdx, 0;                              jbe   .Lx845_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx845_110
.Lx845_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx845_110:             mov              r10, qword ptr [rsp + 16]
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
                        cmp              rdx, 0;                              jbe   .Lx845_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx845_180
.Lx845_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx845_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx845_245:
#-----------------------------------------------------------------------------------------------------------------------
n329_statement_end_α:                                                         jmp   n362_statement_begin_α
#=======================================================================================================================
# DIV     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n330_statement_begin_α:                                                       jmp   n331_var_α
n330_statement_begin_β:                                                       jmp   n338_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n332_var_α
#-----------------------------------------------------------------------------------------------------------------------
n332_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n333_subscript_α
n332_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n330_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n333_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx852_240
                        add              rsp, 16;                             jmp   n332_var_β
.Lx852_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n334_deref_α
n333_subscript_β:       add              rsp, 16;                             jmp   n332_var_β
#-----------------------------------------------------------------------------------------------------------------------
n334_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx853_240
                        add              rsp, 16;                             jmp   n333_subscript_β
.Lx853_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n335_call_α
n334_deref_β:           add              rsp, 16;                             jmp   n333_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n335_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig855z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig855z:              .quad            1
                        .quad            .Lx855_2
                        .quad            .Lx855_2
                        .quad            16
.Lx855_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx855_29
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
.Lx855_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx855_240
                        add              rsp, 16;                             jmp   n334_deref_β
.Lx855_240:                                                                   jmp   n336_assign_α
n335_call_β:                                                                  jmp   n334_deref_β
.Lx855_0:               .quad            .Lx855_0_s
.Lx855_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n336_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n337_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n337_statement_end_α:   add              rsp, 80;                             jmp   n338_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n338_statement_begin_α:                                                       jmp   n339_var_α
n338_statement_begin_β:                                                       jmp   n344_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n339_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n340_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx862_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n341_binop_α
n340_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n338_statement_begin_β
.Lx862_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n341_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx863_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx863_7
.Lx863_2:               and              edx, 1;                              jz    .Lx863_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx863_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx863_4
.Lx863_3:               movq             xmm0, rsi
.Lx863_4:               cmp              ecx, 5;                              je    .Lx863_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx863_6
.Lx863_5:               movq             xmm1, rdi
.Lx863_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx863_7:                                                                     jmp   n342_assign_α
.Lx863_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx863_240
                        add              rsp, 16;                             jmp   n340_lit_integer_β
.Lx863_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n342_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n342_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n343_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n343_statement_end_α:   add              rsp, 48;                             jmp   n344_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n344_statement_begin_α:                                                       jmp   n345_var_α
n344_statement_begin_β:                                                       jmp   n357_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n345_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n346_var_α
#-----------------------------------------------------------------------------------------------------------------------
n346_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n347_subscript_α
n346_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n344_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n347_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx871_240
                        add              rsp, 16;                             jmp   n346_var_β
.Lx871_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n348_var_α
n347_subscript_β:       add              rsp, 16;                             jmp   n346_var_β
#-----------------------------------------------------------------------------------------------------------------------
n348_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n349_var_α
n348_var_β:             add              rsp, 16;                             jmp   n347_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n349_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n350_subscript_α
n349_var_β:             add              rsp, 16;                             jmp   n348_var_β
#-----------------------------------------------------------------------------------------------------------------------
n350_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx874_240
                        add              rsp, 16;                             jmp   n349_var_β
.Lx874_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n351_deref_α
n350_subscript_β:       add              rsp, 16;                             jmp   n349_var_β
#-----------------------------------------------------------------------------------------------------------------------
n351_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx875_240
                        add              rsp, 16;                             jmp   n350_subscript_β
.Lx875_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n352_call_α
n351_deref_β:           add              rsp, 16;                             jmp   n350_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n352_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig877z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig877z:              .quad            1
                        .quad            .Lx877_2
                        .quad            .Lx877_2
                        .quad            16
.Lx877_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx877_29
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
.Lx877_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx877_240
                        add              rsp, 16;                             jmp   n351_deref_β
.Lx877_240:                                                                   jmp   n353_var_α
n352_call_β:                                                                  jmp   n351_deref_β
.Lx877_0:               .quad            .Lx877_0_s
.Lx877_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n353_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n354_binop_α
n353_var_β:             add              rsp, 32;                             jmp   n351_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n354_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              eax, 104;                            jne   .Lx879_240
                        add              rsp, 16;                             jmp   n353_var_β
.Lx879_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n355_assign_var_α
n354_binop_β:           add              rsp, 16;                             jmp   n353_var_β
#-----------------------------------------------------------------------------------------------------------------------
n355_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx880_240
                        add              rsp, 16;                             jmp   n354_binop_β
.Lx880_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n356_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n356_statement_end_α:   add              rsp, 176;                            jmp   n357_statement_begin_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n357_statement_begin_α:                                                       jmp   n358_lit_string_α
n357_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx885_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n359_call_α
.Lx885_0:               .quad            .Lx885_0_s
.Lx885_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n359_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd887:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd887]
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
                        cmp              eax, 104;                            jne   .Lx886_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n357_statement_begin_β
.Lx886_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n360_assign_α
n359_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n357_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n360_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # DIV
                        mov              qword ptr [r9 + 136], rdx;           jmp   n361_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n361_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# DIV_end  <stmt 37, line 65: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n362_statement_begin_α:                                                       jmp   n363_statement_end_α
n362_statement_begin_β:                                                       jmp   n364_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n363_statement_end_α:                                                         jmp   n364_statement_begin_α
#=======================================================================================================================
#         DEFINE('SGN()p1')                       :(SGN_end)
#-----------------------------------------------------------------------------------------------------------------------
n364_statement_begin_α:                                                       jmp   n365_define_α
n364_statement_begin_β:                                                       jmp   n406_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n365_define_α:          mov              rdi, qword ptr [rip + .Lx898_0]
                        mov              rsi, qword ptr [rip + .Lx898_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n367_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n366_statement_end_α
n365_define_β:                                                                jmp   n364_statement_begin_β
.Lx898_0:               .quad            .Lx898_0_s
.Lx898_0_s:             .string          "SGN"
.Lx898_1:               .quad            .Lx898_1_s
.Lx898_1_s:             .string          "p1"
                                                                              jmp   .Lx899_245
#-----------------------------------------------------------------------------------------------------------------------
SGN_α:                  sub              rsp, 64
                        mov              rax, qword ptr [r9 + 144]            # SGN
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 144], 0
                        mov              qword ptr [r9 + 152], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx899_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx899_41
.Lx899_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx899_41:              lea              r10, [rip + SGN_γ]
                        lea              r11, [rip + SGN_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n367_statement_begin_α]; jmp   rax
SGN_γ:                  mov              rdi, qword ptr [r9 + 144]            # SGN
                        mov              rsi, qword ptr [r9 + 152]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 152], rax
                        cmp              rdx, 0;                              jbe   .Lx899_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx899_110
.Lx899_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx899_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
SGN_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 144], rax            # SGN
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 152], rax
                        cmp              rdx, 0;                              jbe   .Lx899_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx899_180
.Lx899_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx899_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx899_245:
#-----------------------------------------------------------------------------------------------------------------------
n366_statement_end_α:                                                         jmp   n406_statement_begin_α
#=======================================================================================================================
# SGN     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n367_statement_begin_α:                                                       jmp   n368_var_α
n367_statement_begin_β:                                                       jmp   n375_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n368_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n369_var_α
#-----------------------------------------------------------------------------------------------------------------------
n369_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n370_subscript_α
n369_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n367_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n370_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx906_240
                        add              rsp, 16;                             jmp   n369_var_β
.Lx906_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n371_deref_α
n370_subscript_β:       add              rsp, 16;                             jmp   n369_var_β
#-----------------------------------------------------------------------------------------------------------------------
n371_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx907_240
                        add              rsp, 16;                             jmp   n370_subscript_β
.Lx907_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n372_call_α
n371_deref_β:           add              rsp, 16;                             jmp   n370_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n372_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig909z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig909z:              .quad            1
                        .quad            .Lx909_2
                        .quad            .Lx909_2
                        .quad            16
.Lx909_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx909_29
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
.Lx909_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx909_240
                        add              rsp, 16;                             jmp   n371_deref_β
.Lx909_240:                                                                   jmp   n373_assign_α
n372_call_β:                                                                  jmp   n371_deref_β
.Lx909_0:               .quad            .Lx909_0_s
.Lx909_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n373_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n374_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n374_statement_end_α:   add              rsp, 80;                             jmp   n375_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n375_statement_begin_α:                                                       jmp   n376_var_α
n375_statement_begin_β:                                                       jmp   n381_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n377_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx916_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n378_binop_α
n377_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n375_statement_begin_β
.Lx916_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n378_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx917_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx917_7
.Lx917_2:               and              edx, 1;                              jz    .Lx917_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx917_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx917_4
.Lx917_3:               movq             xmm0, rsi
.Lx917_4:               cmp              ecx, 5;                              je    .Lx917_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx917_6
.Lx917_5:               movq             xmm1, rdi
.Lx917_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx917_7:                                                                     jmp   n379_assign_α
.Lx917_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx917_240
                        add              rsp, 16;                             jmp   n377_lit_integer_β
.Lx917_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n379_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n379_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n380_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n380_statement_end_α:   add              rsp, 48;                             jmp   n381_statement_begin_α
#=======================================================================================================================
#         IDENT(S[sp], '-')                       :F(SGN1)
#-----------------------------------------------------------------------------------------------------------------------
n381_statement_begin_α:                                                       jmp   n382_var_α
n381_statement_begin_β:                                                       jmp   n394_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n382_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n383_var_α
#-----------------------------------------------------------------------------------------------------------------------
n383_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n384_subscript_α
n383_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n381_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n384_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx925_240
                        add              rsp, 16;                             jmp   n383_var_β
.Lx925_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n385_deref_α
n384_subscript_β:       add              rsp, 16;                             jmp   n383_var_β
#-----------------------------------------------------------------------------------------------------------------------
n385_deref_α:           sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx926_240
                        add              rsp, 16;                             jmp   n384_subscript_β
.Lx926_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n386_lit_string_α
n385_deref_β:           add              rsp, 16;                             jmp   n384_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx927_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n387_call_α
n386_lit_string_β:      add              rsp, 16;                             jmp   n385_deref_β
.Lx927_0:               .quad            .Lx927_0_s
.Lx927_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n387_call_α:            sub              rsp, 16
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
.Lrkfnzd929:            .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd929]
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
                        cmp              eax, 104;                            jne   .Lx928_240
                        add              rsp, 16;                             jmp   n386_lit_string_β
.Lx928_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n388_statement_end_α
n387_call_β:            add              rsp, 16;                             jmp   n386_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n388_statement_end_α:   add              rsp, 96;                             jmp   n389_statement_begin_α
#=======================================================================================================================
#         p1 = -p1
#-----------------------------------------------------------------------------------------------------------------------
n389_statement_begin_α:                                                       jmp   n390_var_α
n389_statement_begin_β:                                                       jmp   n394_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n390_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n391_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n391_unop_α:            sub              rsp, 16
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n392_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n392_assign_α:          mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n393_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n393_statement_end_α:   add              rsp, 32;                             jmp   n394_statement_begin_α
#=======================================================================================================================
# SGN1    S[sp] = p1
#-----------------------------------------------------------------------------------------------------------------------
n394_statement_begin_α:                                                       jmp   n395_var_α
n394_statement_begin_β:                                                       jmp   n401_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n395_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n396_var_α
#-----------------------------------------------------------------------------------------------------------------------
n396_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n397_subscript_α
n396_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n394_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n397_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx943_240
                        add              rsp, 16;                             jmp   n396_var_β
.Lx943_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n398_var_α
n397_subscript_β:       add              rsp, 16;                             jmp   n396_var_β
#-----------------------------------------------------------------------------------------------------------------------
n398_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n399_assign_var_α
n398_var_β:             add              rsp, 16;                             jmp   n397_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n399_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx945_240
                        add              rsp, 16;                             jmp   n398_var_β
.Lx945_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n400_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n400_statement_end_α:   add              rsp, 80;                             jmp   n401_statement_begin_α
#=======================================================================================================================
#         SGN = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n401_statement_begin_α:                                                       jmp   n402_lit_string_α
n401_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx950_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n403_call_α
.Lx950_0:               .quad            .Lx950_0_s
.Lx950_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n403_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd952:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd952]
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
                        cmp              eax, 104;                            jne   .Lx951_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n401_statement_begin_β
.Lx951_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n404_assign_α
n403_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n401_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n404_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # SGN
                        mov              qword ptr [r9 + 152], rdx;           jmp   n405_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n405_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# SGN_end  <stmt 45, line 73: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n406_statement_begin_α:                                                       jmp   n407_statement_end_α
n406_statement_begin_β:                                                       jmp   n408_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n407_statement_end_α:                                                         jmp   n408_statement_begin_α
#=======================================================================================================================
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
n408_statement_begin_α:                                                       jmp   n409_lit_integer_α
n408_statement_begin_β:                                                       jmp   n413_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx962_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n410_call_α
.Lx962_0:               .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n410_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd964:            .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd964]
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
                        cmp              eax, 104;                            jne   .Lx963_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n408_statement_begin_β
.Lx963_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n411_assign_α
n410_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n408_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n411_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # S
                        mov              qword ptr [r9 + 168], rdx;           jmp   n412_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n412_statement_end_α:   add              rsp, 32;                             jmp   n413_statement_begin_α
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
n413_statement_begin_α:                                                       jmp   n414_keyword_snobol4_α
n413_statement_begin_β:                                                       jmp   n417_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n414_keyword_snobol4_α: sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx970_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n415_assign_α
.Lx970_0:               .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n415_assign_α:          mov              rax, qword ptr [rsp + 0]             # keyword_snobol4
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # LCASE
                        mov              qword ptr [r9 + 232], rdx;           jmp   n416_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n416_statement_end_α:   add              rsp, 16;                             jmp   n417_statement_begin_α
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n417_statement_begin_α:                                                       jmp   n418_lit_string_α
n417_statement_begin_β:                                                       jmp   n421_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n418_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx976_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n419_assign_α
.Lx976_0:               .quad            .Lx976_0_s
.Lx976_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n419_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # DIGITS
                        mov              qword ptr [r9 + 248], rdx;           jmp   n420_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n420_statement_end_α:   add              rsp, 16;                             jmp   n421_statement_begin_α
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n421_statement_begin_α:                                                       jmp   n422_lit_string_α
n421_statement_begin_β:                                                       jmp   n426_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx982_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n423_call_α
.Lx982_0:               .quad            .Lx982_0_s
.Lx982_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n423_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd984:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd984]
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
                        cmp              eax, 104;                            jne   .Lx983_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n421_statement_begin_β
.Lx983_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n424_assign_α
n423_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n421_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n424_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # V
                        mov              qword ptr [r9 + 264], rdx;           jmp   n425_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n425_statement_end_α:   add              rsp, 32;                             jmp   n426_statement_begin_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n426_statement_begin_α:                                                       jmp   n427_lit_string_α
n426_statement_begin_β:                                                       jmp   n431_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx990_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n428_call_α
.Lx990_0:               .quad            .Lx990_0_s
.Lx990_0_s:             .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n428_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd992:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd992]
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
                        cmp              eax, 104;                            jne   .Lx991_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n426_statement_begin_β
.Lx991_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n429_assign_α
n428_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n426_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n429_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # I
                        mov              qword ptr [r9 + 280], rdx;           jmp   n430_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n430_statement_end_α:   add              rsp, 32;                             jmp   n431_statement_begin_α
#=======================================================================================================================
#         A = FENCE(V | I | '(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n431_statement_begin_α:                                                       jmp   n432_var_α
n431_statement_begin_β:                                                       jmp   n441_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n432_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # I
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n433_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n433_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax            # PAT$2$V1
                        mov              qword ptr [r9 + 472], rdx;           jmp   n434_var_α
#-----------------------------------------------------------------------------------------------------------------------
n434_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]            # V
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n435_assign_α
n434_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n431_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n435_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax            # PAT$2$V0
                        mov              qword ptr [r9 + 456], rdx;           jmp   n436_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1002_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n437_lit_string_α
n436_lit_string_β:      add              rsp, 16;                             jmp   n434_var_β
.Lx1002_0:              .quad            .Lx1002_0_s
.Lx1002_0_s:            .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1003_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n438_call_α
n437_lit_string_β:      add              rsp, 16;                             jmp   n436_lit_string_β
.Lx1003_0:              .quad            .Lx1003_0_s
.Lx1003_0_s:            .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n438_call_α:            sub              rsp, 16
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
                        add              rsp, 16;                             jmp   n437_lit_string_β
.Lx1004_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n439_assign_α
n438_call_β:            add              rsp, 16;                             jmp   n437_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n439_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # A
                        mov              qword ptr [r9 + 296], rdx;           jmp   n440_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n440_statement_end_α:   add              rsp, 80;                             jmp   n441_statement_begin_α
#=======================================================================================================================
#         F = FENCE(A | ANY('+-') . *PSH() *F . *SGN())
#-----------------------------------------------------------------------------------------------------------------------
n441_statement_begin_α:                                                       jmp   n442_var_α
n441_statement_begin_β:                                                       jmp   n449_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n442_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 288]            # A
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n443_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n443_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 488], rdx;           jmp   n444_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1013_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n445_lit_string_α
n444_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n441_statement_begin_β
.Lx1013_0:              .quad            .Lx1013_0_s
.Lx1013_0_s:            .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1014_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n446_call_α
n445_lit_string_β:      add              rsp, 16;                             jmp   n444_lit_string_β
.Lx1014_0:              .quad            .Lx1014_0_s
.Lx1014_0_s:            .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n446_call_α:            sub              rsp, 16
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
                        add              rsp, 16;                             jmp   n445_lit_string_β
.Lx1015_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n447_assign_α
n446_call_β:            add              rsp, 16;                             jmp   n445_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n447_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # F
                        mov              qword ptr [r9 + 312], rdx;           jmp   n448_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n448_statement_end_α:   add              rsp, 64;                             jmp   n449_statement_begin_α
#=======================================================================================================================
#         T = F ARBNO('*' F . *MUL() | '/' F . *DIV())
#-----------------------------------------------------------------------------------------------------------------------
n449_statement_begin_α:                                                       jmp   n450_var_α
n449_statement_begin_β:                                                       jmp   n461_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n450_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n451_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n451_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 528], rax            # PAT$4$V2
                        mov              qword ptr [r9 + 536], rdx;           jmp   n452_var_α
#-----------------------------------------------------------------------------------------------------------------------
n452_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n453_assign_α
n452_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n449_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n453_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 512], rax            # PAT$4$V1
                        mov              qword ptr [r9 + 520], rdx;           jmp   n454_var_α
#-----------------------------------------------------------------------------------------------------------------------
n454_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n455_assign_α
n454_var_β:             add              rsp, 16;                             jmp   n452_var_β
#-----------------------------------------------------------------------------------------------------------------------
n455_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 504], rdx;           jmp   n456_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1028_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n457_lit_string_α
n456_lit_string_β:      add              rsp, 16;                             jmp   n454_var_β
.Lx1028_0:              .quad            .Lx1028_0_s
.Lx1028_0_s:            .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n457_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1029_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n458_call_α
n457_lit_string_β:      add              rsp, 16;                             jmp   n456_lit_string_β
.Lx1029_0:              .quad            .Lx1029_0_s
.Lx1029_0_s:            .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n458_call_α:            sub              rsp, 16
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
.Lrkfnzd1031:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1031]
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
                        cmp              eax, 104;                            jne   .Lx1030_240
                        add              rsp, 16;                             jmp   n457_lit_string_β
.Lx1030_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n459_assign_α
n458_call_β:            add              rsp, 16;                             jmp   n457_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n459_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # T
                        mov              qword ptr [r9 + 328], rdx;           jmp   n460_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n460_statement_end_α:   add              rsp, 96;                             jmp   n461_statement_begin_α
#=======================================================================================================================
#         X = T ARBNO('+' T . *ADD() | '-' T . *SUB())
#-----------------------------------------------------------------------------------------------------------------------
n461_statement_begin_α:                                                       jmp   n462_var_α
n461_statement_begin_β:                                                       jmp   n473_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n462_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n463_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n463_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 576], rax            # PAT$5$V2
                        mov              qword ptr [r9 + 584], rdx;           jmp   n464_var_α
#-----------------------------------------------------------------------------------------------------------------------
n464_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n465_assign_α
n464_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n461_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n465_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # PAT$5$V1
                        mov              qword ptr [r9 + 568], rdx;           jmp   n466_var_α
#-----------------------------------------------------------------------------------------------------------------------
n466_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n467_assign_α
n466_var_β:             add              rsp, 16;                             jmp   n464_var_β
#-----------------------------------------------------------------------------------------------------------------------
n467_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax            # PAT$5$V0
                        mov              qword ptr [r9 + 552], rdx;           jmp   n468_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1043_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n469_lit_string_α
n468_lit_string_β:      add              rsp, 16;                             jmp   n466_var_β
.Lx1043_0:              .quad            .Lx1043_0_s
.Lx1043_0_s:            .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n469_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1044_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n470_call_α
n469_lit_string_β:      add              rsp, 16;                             jmp   n468_lit_string_β
.Lx1044_0:              .quad            .Lx1044_0_s
.Lx1044_0_s:            .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n470_call_α:            sub              rsp, 16
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
.Lrkfnzd1046:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1046]
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
                        cmp              eax, 104;                            jne   .Lx1045_240
                        add              rsp, 16;                             jmp   n469_lit_string_β
.Lx1045_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n471_assign_α
n470_call_β:            add              rsp, 16;                             jmp   n469_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n471_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # X
                        mov              qword ptr [r9 + 344], rdx;           jmp   n472_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n472_statement_end_α:   add              rsp, 96;                             jmp   n473_statement_begin_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n473_statement_begin_α:                                                       jmp   n474_lit_integer_α
n473_statement_begin_β:                                                       jmp   n482_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1052_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n475_call_α
.Lx1052_0:              .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n475_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd383:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd383]
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
                        cmp              eax, 104;                            jne   .Lx1053_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n473_statement_begin_β
.Lx1053_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n476_assign_α
n475_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n473_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n476_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax            # PAT$6$V0
                        mov              qword ptr [r9 + 600], rdx;           jmp   n477_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n477_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1055_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n478_lit_string_α
n477_lit_string_β:      add              rsp, 16
                        add              rsp, 32;                             jmp   n473_statement_begin_β
.Lx1055_0:              .quad            .Lx1055_0_s
.Lx1055_0_s:            .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1056_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n479_call_α
n478_lit_string_β:      add              rsp, 16;                             jmp   n477_lit_string_β
.Lx1056_0:              .quad            .Lx1056_0_s
.Lx1056_0_s:            .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n479_call_α:            sub              rsp, 16
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
.Lrkfnzd1058:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1058]
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
                        cmp              eax, 104;                            jne   .Lx1057_240
                        add              rsp, 16;                             jmp   n478_lit_string_β
.Lx1057_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n480_assign_α
n479_call_β:            add              rsp, 16;                             jmp   n478_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n480_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # eol
                        mov              qword ptr [r9 + 360], rdx;           jmp   n481_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n481_statement_end_α:   add              rsp, 80;                             jmp   n482_statement_begin_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n482_statement_begin_α:                                                       jmp   n483_var_α
n482_statement_begin_β:                                                       jmp   n494_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n483_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]            # epsilon
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n484_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n484_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 640], rax            # PAT$7$V2
                        mov              qword ptr [r9 + 648], rdx;           jmp   n485_var_α
#-----------------------------------------------------------------------------------------------------------------------
n485_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]            # eol
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n486_assign_α
n485_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n482_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n486_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # PAT$7$V1
                        mov              qword ptr [r9 + 632], rdx;           jmp   n487_var_α
#-----------------------------------------------------------------------------------------------------------------------
n487_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 336]            # X
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n488_assign_α
n487_var_β:             add              rsp, 16;                             jmp   n485_var_β
#-----------------------------------------------------------------------------------------------------------------------
n488_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax            # PAT$7$V0
                        mov              qword ptr [r9 + 616], rdx;           jmp   n489_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1070_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n490_lit_string_α
n489_lit_string_β:      add              rsp, 16;                             jmp   n487_var_β
.Lx1070_0:              .quad            .Lx1070_0_s
.Lx1070_0_s:            .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1071_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n491_call_α
n490_lit_string_β:      add              rsp, 16;                             jmp   n489_lit_string_β
.Lx1071_0:              .quad            .Lx1071_0_s
.Lx1071_0_s:            .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n491_call_α:            sub              rsp, 16
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
.Lrkfnzd1073:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1073]
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
                        cmp              eax, 104;                            jne   .Lx1072_240
                        add              rsp, 16;                             jmp   n490_lit_string_β
.Lx1072_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n492_assign_α
n491_call_β:            add              rsp, 16;                             jmp   n490_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n492_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # C
                        mov              qword ptr [r9 + 376], rdx;           jmp   n493_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n493_statement_end_α:   add              rsp, 96;                             jmp   n494_statement_begin_α
#=======================================================================================================================
#         &TRIM = 0
#-----------------------------------------------------------------------------------------------------------------------
n494_statement_begin_α:                                                       jmp   n495_lit_integer_α
n494_statement_begin_β:                                                       jmp   n498_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1079_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n496_keyword_assign_snobol4_α
.Lx1079_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n496_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1080_0]
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
                        cmp              eax, 104;                            jne   .Lx1080_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n494_statement_begin_β
.Lx1080_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n497_statement_end_α
.Lx1080_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n497_statement_end_α:   add              rsp, 32;                             jmp   n498_statement_begin_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n498_statement_begin_α:                                                       jmp   n499_call_α
n498_statement_begin_β:                                                       jmp   n502_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n499_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1086:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1086]
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
                        cmp              eax, 104;                            jne   .Lx1085_240
                        add              rsp, 16;                             jmp   n498_statement_begin_β
.Lx1085_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n500_assign_α
n499_call_β:            add              rsp, 16;                             jmp   n498_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n500_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # vars
                        mov              qword ptr [r9 + 216], rdx;           jmp   n501_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n501_statement_end_α:   add              rsp, 16;                             jmp   n502_statement_begin_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n502_statement_begin_α:                                                       jmp   n503_var_α
n502_statement_begin_β:                                                       jmp   n509_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n503_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n504_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n504_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1093_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n505_subscript_α
n504_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n502_statement_begin_β
.Lx1093_0:              .quad            .Lx1093_0_s
.Lx1093_0_s:            .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n505_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1094_240
                        add              rsp, 16;                             jmp   n504_lit_string_β
.Lx1094_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n506_lit_integer_α
n505_subscript_β:       add              rsp, 16;                             jmp   n504_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1095_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n507_assign_var_α
n506_lit_integer_β:     add              rsp, 16;                             jmp   n505_subscript_β
.Lx1095_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n507_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1096_240
                        add              rsp, 16;                             jmp   n506_lit_integer_β
.Lx1096_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n508_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n508_statement_end_α:   add              rsp, 80;                             jmp   n509_statement_begin_α
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n509_statement_begin_α:                                                       jmp   n510_var_α
n509_statement_begin_β:                                                       jmp   n516_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n510_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n511_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n511_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1102_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n512_subscript_α
n511_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n509_statement_begin_β
.Lx1102_0:              .quad            .Lx1102_0_s
.Lx1102_0_s:            .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n512_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1103_240
                        add              rsp, 16;                             jmp   n511_lit_string_β
.Lx1103_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n513_lit_integer_α
n512_subscript_β:       add              rsp, 16;                             jmp   n511_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n513_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1104_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n514_assign_var_α
n513_lit_integer_β:     add              rsp, 16;                             jmp   n512_subscript_β
.Lx1104_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n514_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1105_240
                        add              rsp, 16;                             jmp   n513_lit_integer_β
.Lx1105_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n515_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n515_statement_end_α:   add              rsp, 80;                             jmp   n516_statement_begin_α
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n516_statement_begin_α:                                                       jmp   n517_var_α
n516_statement_begin_β:                                                       jmp   n523_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n517_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n518_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n518_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1111_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n519_subscript_α
n518_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n516_statement_begin_β
.Lx1111_0:              .quad            .Lx1111_0_s
.Lx1111_0_s:            .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n519_subscript_α:       sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1112_240
                        add              rsp, 16;                             jmp   n518_lit_string_β
.Lx1112_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n520_lit_integer_α
n519_subscript_β:       add              rsp, 16;                             jmp   n518_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n520_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1113_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n521_assign_var_α
n520_lit_integer_β:     add              rsp, 16;                             jmp   n519_subscript_β
.Lx1113_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n521_assign_var_α:      sub              rsp, 16
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
                        cmp              eax, 104;                            jne   .Lx1114_240
                        add              rsp, 16;                             jmp   n520_lit_integer_β
.Lx1114_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n522_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n522_statement_end_α:   add              rsp, 80;                             jmp   n523_statement_begin_α
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
n523_statement_begin_α:                                                       jmp   n524_lit_string_α
n523_statement_begin_β:                                                       jmp   n530_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n524_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1119_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n525_call_α
.Lx1119_0:              .quad            .Lx1119_0_s
.Lx1119_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n525_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1121:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1121]
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
                        cmp              eax, 104;                            jne   .Lx1120_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n523_statement_begin_β
.Lx1120_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n526_lit_integer_α
n525_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n523_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n526_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1122_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n527_lit_string_α
n526_lit_integer_β:     add              rsp, 16
                        add              rsp, 32;                             jmp   n523_statement_begin_β
.Lx1122_0:              .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n527_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx1123_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n528_call_α
n527_lit_string_β:      add              rsp, 16;                             jmp   n526_lit_integer_β
.Lx1123_0:              .quad            .Lx1123_0_s
.Lx1123_0_s:            .string          "[-f0 -r4194304]"
#-----------------------------------------------------------------------------------------------------------------------
n528_call_α:            sub              rsp, 16
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
.Lbynamefnzd436:        .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd436]
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
                        cmp              eax, 104;                            jne   .Lx1124_240
                        add              rsp, 16;                             jmp   n527_lit_string_β
.Lx1124_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n529_statement_end_α
n528_call_β:            add              rsp, 16;                             jmp   n527_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n529_statement_end_α:   add              rsp, 80;                             jmp   n530_statement_begin_α
#=======================================================================================================================
#         src = INPUT
#-----------------------------------------------------------------------------------------------------------------------
n530_statement_begin_α:                                                       jmp   n531_var_α
n530_statement_begin_β:                                                       jmp   n534_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n531_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1129_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx1129_240
                        add              rsp, 16;                             jmp   n530_statement_begin_β
.Lx1129_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n532_assign_α
.Lx1129_0:              .quad            .Lx1129_0_s
.Lx1129_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n532_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # src
                        mov              qword ptr [r9 + 408], rdx;           jmp   n533_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n533_statement_end_α:   add              rsp, 16;                             jmp   n534_statement_begin_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n534_statement_begin_α:                                                       jmp   n535_call_α
n534_statement_begin_β:                                                       jmp   n538_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n535_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1136:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1136]
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
                        cmp              eax, 104;                            jne   .Lx1135_240
                        add              rsp, 16;                             jmp   n534_statement_begin_β
.Lx1135_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n536_assign_α
n535_call_β:            add              rsp, 16;                             jmp   n534_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n536_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax            # t0
                        mov              qword ptr [r9 + 424], rdx;           jmp   n537_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n537_statement_end_α:   add              rsp, 16;                             jmp   n538_statement_begin_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n538_statement_begin_α:                                                       jmp   n539_var_α
n538_statement_begin_β:                                                       jmp   n558_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n539_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]            # src
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n540_var_α
#-----------------------------------------------------------------------------------------------------------------------
n540_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]            # C
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n541_assign_α
n540_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n558_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n541_assign_α:          mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1144_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n542_match_begin_α
n541_assign_β:                                                                jmp   n540_var_β
.Lx1144_0:              .quad            .Lx1144_0_s
.Lx1144_0_s:            .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n542_match_begin_α:     mov              rdi, qword ptr [rsp + 16]            # var
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
.Lx1146_0:              mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx1146_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n543_match_defer_α
n542_match_begin_β:
.Lx1146_13:             lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx1146_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1146_1
                                                                              jmp   .Lx1146_0
.Lx1146_1:
n542_match_begin_af:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        pop              rbp;                                 jmp   n541_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n543_match_defer_α:     lea              rdi, [rip + .S22]
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
                        test             rax, rax;                            je    .Lx1147_14
                        mov              rax, qword ptr [rdx + 0]
.Lx1147_14:             test             rax, rax;                            jz    .Lx1147_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx1147_4]
                        lea              r11, [rip + .Lx1147_5];              jmp   rax
.Lx1147_4:                                                                    jmp   n544_match_end_α
.Lx1147_5:                                                                    jmp   n542_match_begin_β
.Lx1147_0:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S22]
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
                        test             eax, eax;                            js    n542_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1147_6]
                        push             rcx
                        push             rax;                                 jmp   n544_match_end_α
.Lx1147_6:              add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n542_match_begin_β
n543_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lx1147_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx1147_12
                                                                              jmp   rax
.Lx1147_12:                                                                   jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n544_match_end_α:       mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        test             rax, rax;                            je    .Lx1149_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n542_match_begin_af
.Lx1149_13:             add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n545_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n545_statement_end_α:   add              rsp, 32;                             jmp   n546_statement_begin_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n546_statement_begin_α:                                                       jmp   n547_call_α
n546_statement_begin_β:                                                       jmp   n550_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n547_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1155:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1155]
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
                        cmp              eax, 104;                            jne   .Lx1154_240
                        add              rsp, 16;                             jmp   n546_statement_begin_β
.Lx1154_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n548_assign_α
n547_call_β:            add              rsp, 16;                             jmp   n546_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n548_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # t1
                        mov              qword ptr [r9 + 440], rdx;           jmp   n549_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n549_statement_end_α:   add              rsp, 16;                             jmp   n550_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n550_statement_begin_α:                                                       jmp   n551_lit_string_α
n550_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n551_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1161_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n552_var_α
.Lx1161_0:              .quad            .Lx1161_0_s
.Lx1161_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n552_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]            # t1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n553_var_α
n552_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n550_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n553_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 416]            # t0
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n554_binop_α
n553_var_β:             add              rsp, 16;                             jmp   n552_var_β
#-----------------------------------------------------------------------------------------------------------------------
n554_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1164_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1164_7
.Lx1164_2:              and              edx, 1;                              jz    .Lx1164_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx1164_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1164_4
.Lx1164_3:              movq             xmm0, rsi
.Lx1164_4:              cmp              ecx, 5;                              je    .Lx1164_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1164_6
.Lx1164_5:              movq             xmm1, rdi
.Lx1164_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1164_7:                                                                    jmp   n555_binop_α
.Lx1164_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx1164_240
                        add              rsp, 16;                             jmp   n553_var_β
.Lx1164_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n555_binop_α
n554_binop_β:           add              rsp, 16;                             jmp   n553_var_β
#-----------------------------------------------------------------------------------------------------------------------
n555_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n556_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n556_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1166_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n557_statement_end_α
.Lx1166_0:              .quad            .Lx1166_0_s
.Lx1166_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n557_statement_end_α:   add              rsp, 80;                             jmp   main_γ
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n558_statement_begin_α:                                                       jmp   n559_call_α
n558_statement_begin_β:                                                       jmp   n562_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n559_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1172:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1172]
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
                        cmp              eax, 104;                            jne   .Lx1171_240
                        add              rsp, 16;                             jmp   n558_statement_begin_β
.Lx1171_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n560_assign_α
n559_call_β:            add              rsp, 16;                             jmp   n558_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n560_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # t1
                        mov              qword ptr [r9 + 440], rdx;           jmp   n561_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n561_statement_end_α:   add              rsp, 16;                             jmp   n562_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n562_statement_begin_α:                                                       jmp   n563_lit_string_α
n562_statement_begin_β:                                                       jmp   n566_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n563_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1178_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n564_assign_α
.Lx1178_0:              .quad            .Lx1178_0_s
.Lx1178_0_s:            .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n564_assign_α:          mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1179_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n565_statement_end_α
.Lx1179_0:              .quad            .Lx1179_0_s
.Lx1179_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n565_statement_end_α:   add              rsp, 16;                             jmp   n566_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n566_statement_begin_α:                                                       jmp   n567_lit_string_α
n566_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n567_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1184_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n568_var_α
.Lx1184_0:              .quad            .Lx1184_0_s
.Lx1184_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n568_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]            # t1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n569_var_α
n568_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n566_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n569_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 416]            # t0
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n570_binop_α
n569_var_β:             add              rsp, 16;                             jmp   n568_var_β
#-----------------------------------------------------------------------------------------------------------------------
n570_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1187_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1187_7
.Lx1187_2:              and              edx, 1;                              jz    .Lx1187_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx1187_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1187_4
.Lx1187_3:              movq             xmm0, rsi
.Lx1187_4:              cmp              ecx, 5;                              je    .Lx1187_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1187_6
.Lx1187_5:              movq             xmm1, rdi
.Lx1187_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1187_7:                                                                    jmp   n571_binop_α
.Lx1187_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx1187_240
                        add              rsp, 16;                             jmp   n569_var_β
.Lx1187_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n571_binop_α
n570_binop_β:           add              rsp, 16;                             jmp   n569_var_β
#-----------------------------------------------------------------------------------------------------------------------
n571_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n572_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n572_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1189_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n573_statement_end_α
.Lx1189_0:              .quad            .Lx1189_0_s
.Lx1189_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n573_statement_end_α:   add              rsp, 80;                             jmp   main_γ
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
