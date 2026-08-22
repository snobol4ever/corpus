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
                        sub              rsp, 104
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n18_match_alternate_α:  mov              r11, 7
                        mov              dword ptr [rbp + -104], r14d
                        lea              rax, [rip + .Lx26_21]
                        mov              qword ptr [rbp + -88], rax;          jmp   n24_match_defer_α
.Lx26_21:               lea              rax, [rip + .Lx26_22]
                        mov              qword ptr [rbp + -88], rax;          jmp   n23_match_defer_α
.Lx26_22:               lea              rax, [rip + .Lx26_19]
                        mov              qword ptr [rbp + -88], rax;          jmp   n20_match_lit_α
n18_match_alternate_s0: mov              r11, 7
                        lea              rax, [rip + .Lx26_40]
                        mov              qword ptr [rbp + -96], rax;          jmp   n18_match_alternate_as
n18_match_alternate_s1: mov              r11, 7
                        lea              rax, [rip + .Lx26_41]
                        mov              qword ptr [rbp + -96], rax;          jmp   n18_match_alternate_as
n18_match_alternate_s2: mov              r11, 7
                        lea              rax, [rip + .Lx26_42]
                        mov              qword ptr [rbp + -96], rax;          jmp   n18_match_alternate_as
.Lx26_40:                                                                     jmp   n24_match_defer_β
.Lx26_41:                                                                     jmp   n23_match_defer_β
.Lx26_42:                                                                     jmp   n19_goto_β
n18_match_alternate_as: mov              r11, 7;                              jmp   PAT$2_γ
n18_match_alternate_β:  mov              r11, 7
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
n18_match_alternate_af: mov              r11, 7
                        mov              r14d, dword ptr [rbp + -104]
                        mov              rax, qword ptr [rbp + -88];          jmp   rax
.Lx26_19:                                                                     jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_goto_α:             mov              r11, 8;                              jmp   n18_match_alternate_af
n19_goto_β:             mov              r11, 8;                              jmp   n18_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n20_match_lit_α:        mov              r11, 9
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n18_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n18_match_alternate_af
                        add              r14d, 1;                             jmp   n21_match_defer_α
n20_match_lit_β:        mov              r11, 9
                        sub              r14d, 1;                             jmp   n18_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n21_match_defer_α:      mov              r11, 10
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx30_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx30_11
.Lx30_13:               mov              rax, qword ptr [r9 + 336]            # X
                        mov              rdx, qword ptr [r9 + 344]
                        cmp              al, 8;                               jne   .Lx30_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx30_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, qword ptr [r9 + 344];           jmp   .Lx30_10
.Lx30_9:                cmp              al, 88;                              jne   .Lx30_21
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_xpat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
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
                        lea              rcx, [rip + .Lx30_5]
                        push             rcx
                        lea              rcx, [rip + .Lx30_4]
                        push             rcx;                                 jmp   rax
.Lx30_4:                                                                      jmp   n22_match_lit_α
.Lx30_5:                                                                      jmp   n20_match_lit_β
.Lx30_0:                push             r14
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
                        test             eax, eax;                            js    n20_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx30_6]
                        push             rcx
                        push             rax;                                 jmp   n22_match_lit_α
.Lx30_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n20_match_lit_β
n21_match_defer_β:      mov              r11, 10
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx30_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx30_12
                                                                              jmp   rax
.Lx30_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n22_match_lit_α:        mov              r11, 11
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n21_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n21_match_defer_β
                        add              r14d, 1;                             jmp   n18_match_alternate_s2
n22_match_lit_β:        mov              r11, 11
                        sub              r14d, 1;                             jmp   n21_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n23_match_defer_α:      mov              r11, 12
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S2]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx33_16
                        mov              rax, qword ptr [rdx + 0]
.Lx33_16:               test             rax, rax;                            jz    .Lx33_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx33_5]
                        push             rcx
                        lea              rcx, [rip + .Lx33_4]
                        push             rcx;                                 jmp   rax
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
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
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
n23_match_defer_β:      mov              r11, 12
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx33_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx33_12
                                                                              jmp   rax
.Lx33_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n24_match_defer_α:      mov              r11, 13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S3]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx34_16
                        mov              rax, qword ptr [rdx + 0]
.Lx34_16:               test             rax, rax;                            jz    .Lx34_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx34_5]
                        push             rcx
                        lea              rcx, [rip + .Lx34_4]
                        push             rcx;                                 jmp   rax
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
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
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
n24_match_defer_β:      mov              r11, 13
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx34_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx34_12
                                                                              jmp   rax
.Lx34_12:                                                                     jmp   qword ptr [rsp]
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
                        sub              rsp, 136
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n35_match_alternate_α:  mov              r11, 14
                        mov              dword ptr [rbp + -136], r14d
                        lea              rax, [rip + .Lx45_21]
                        mov              qword ptr [rbp + -120], rax;         jmp   n43_match_defer_α
.Lx45_21:               lea              rax, [rip + .Lx45_19]
                        mov              qword ptr [rbp + -120], rax;         jmp   n37_match_assign_save_α
n35_match_alternate_s0: mov              r11, 14
                        lea              rax, [rip + .Lx45_40]
                        mov              qword ptr [rbp + -128], rax;         jmp   n35_match_alternate_as
n35_match_alternate_s1: mov              r11, 14
                        lea              rax, [rip + .Lx45_41]
                        mov              qword ptr [rbp + -128], rax;         jmp   n35_match_alternate_as
.Lx45_40:                                                                     jmp   n43_match_defer_β
.Lx45_41:                                                                     jmp   n36_goto_β
n35_match_alternate_as: mov              r11, 14;                             jmp   PAT$3_γ
n35_match_alternate_β:  mov              r11, 14
                        mov              rax, qword ptr [rbp + -128];         jmp   rax
n35_match_alternate_af: mov              r11, 14
                        mov              r14d, dword ptr [rbp + -136]
                        mov              rax, qword ptr [rbp + -120];         jmp   rax
.Lx45_19:                                                                     jmp   PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_goto_α:             mov              r11, 15;                             jmp   n35_match_alternate_af
n36_goto_β:             mov              r11, 15;                             jmp   n35_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n37_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 16
                        mov              dword ptr [rbp + -64], r14d;         jmp   n38_match_any_α
n37_match_assign_save_β:
                        mov              r11, 16
                        add              rsp, 16;                             jmp   n35_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n38_match_any_α:        mov              r11, 17
                        mov              eax, r14d
                        cmp              eax, r15d;                           jl    .Lx50_240
                        add              rsp, 16;                             jmp   n35_match_alternate_af
.Lx50_240:              movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43;                             je    .Lx50_0
                        cmp              esi, 45;                             je    .Lx50_0
                        add              rsp, 16;                             jmp   n35_match_alternate_af
.Lx50_0:                add              r14d, 1;                             jmp   n39_match_assign_cond_α
n38_match_any_β:        mov              r11, 17
                        sub              r14d, 1
                        add              rsp, 16;                             jmp   n35_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n39_match_assign_cond_α:
                        mov              r11, 18
                        mov              eax, dword ptr [rbp + -64]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n40_match_assign_save_α
n39_match_assign_cond_β:
                        mov              r11, 18
                        sub              r12, 24;                             jmp   n38_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n40_match_assign_save_α:
                        mov              r11, 19
                        mov              dword ptr [rbp + -80], r14d;         jmp   n41_match_defer_α
n40_match_assign_save_β:
                        mov              r11, 19;                             jmp   n39_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n41_match_defer_α:      mov              r11, 20
                        push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        cmp              al, 8;                               jne   .Lx55_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx55_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, qword ptr [r9 + 312];           jmp   .Lx55_10
.Lx55_9:                cmp              al, 88;                              jne   .Lx55_21
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_xpat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx55_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx55_10
.Lx55_21:               xor              eax, eax
.Lx55_10:               test             rax, rax;                            jz    .Lx55_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx55_5]
                        push             rcx
                        lea              rcx, [rip + .Lx55_4]
                        push             rcx;                                 jmp   rax
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
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
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
n41_match_defer_β:      mov              r11, 20
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n40_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n42_match_assign_cond_α:
                        mov              r11, 21
                        mov              eax, dword ptr [rbp + -80]
                        lea              rcx, [rip + .S5]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n35_match_alternate_s1
n42_match_assign_cond_β:
                        mov              r11, 21
                        sub              r12, 24;                             jmp   n41_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n43_match_defer_α:      mov              r11, 22
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S6]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx58_16
                        mov              rax, qword ptr [rdx + 0]
.Lx58_16:               test             rax, rax;                            jz    .Lx58_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx58_5]
                        push             rcx
                        lea              rcx, [rip + .Lx58_4]
                        push             rcx;                                 jmp   rax
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
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
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
n43_match_defer_β:      mov              r11, 22
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx58_12
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
                        sub              rsp, 152
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n59_match_defer_α:      sub              rsp, 16
                        mov              r11, 23
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S7]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx72_16
                        mov              rax, qword ptr [rdx + 0]
.Lx72_16:               test             rax, rax;                            jz    .Lx72_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx72_5]
                        push             rcx
                        lea              rcx, [rip + .Lx72_4]
                        push             rcx;                                 jmp   rax
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
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
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
n59_match_defer_β:      mov              r11, 23
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx72_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx72_12
                                                                              jmp   rax
.Lx72_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n60_match_arbno_α:      mov              r11, 24
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d;         jmp   PAT$4_γ
n60_match_arbno_β:      mov              r11, 24;                             jmp   n61_match_alternate_α
n60_match_arbno_as:     mov              r11, 24
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n61_match_alternate_β
                        mov              dword ptr [rbp + -44], r14d;         jmp   PAT$4_γ
n60_match_arbno_af:     mov              r11, 24
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n59_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n61_match_alternate_α:  mov              r11, 25
                        mov              dword ptr [rbp + -152], r14d
                        lea              rax, [rip + .Lx76_21]
                        mov              qword ptr [rbp + -136], rax;         jmp   n68_match_lit_α
.Lx76_21:               lea              rax, [rip + .Lx76_19]
                        mov              qword ptr [rbp + -136], rax;         jmp   n63_match_lit_α
n61_match_alternate_s0: mov              r11, 25
                        lea              rax, [rip + .Lx76_40]
                        mov              qword ptr [rbp + -144], rax;         jmp   n61_match_alternate_as
n61_match_alternate_s1: mov              r11, 25
                        lea              rax, [rip + .Lx76_41]
                        mov              qword ptr [rbp + -144], rax;         jmp   n61_match_alternate_as
.Lx76_40:                                                                     jmp   n67_goto_β
.Lx76_41:                                                                     jmp   n62_goto_β
n61_match_alternate_as: mov              r11, 25;                             jmp   n60_match_arbno_as
n61_match_alternate_β:  mov              r11, 25
                        mov              rax, qword ptr [rbp + -144];         jmp   rax
n61_match_alternate_af: mov              r11, 25
                        mov              r14d, dword ptr [rbp + -152]
                        mov              rax, qword ptr [rbp + -136];         jmp   rax
.Lx76_19:                                                                     jmp   n60_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n62_goto_α:             mov              r11, 26;                             jmp   n61_match_alternate_af
n62_goto_β:             mov              r11, 26;                             jmp   n61_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n63_match_lit_α:        mov              r11, 27
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n61_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47;                             jne   n61_match_alternate_af
                        add              r14d, 1;                             jmp   n64_match_assign_save_α
n63_match_lit_β:        mov              r11, 27
                        sub              r14d, 1;                             jmp   n61_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n64_match_assign_save_α:
                        mov              r11, 28
                        mov              dword ptr [rbp + -96], r14d;         jmp   n65_match_defer_α
n64_match_assign_save_β:
                        mov              r11, 28;                             jmp   n63_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n65_match_defer_α:      mov              r11, 29
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S8]
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
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
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
n65_match_defer_β:      mov              r11, 29
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx82_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx82_12
                                                                              jmp   rax
.Lx82_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n66_match_assign_cond_α:
                        mov              r11, 30
                        mov              eax, dword ptr [rbp + -96]
                        lea              rcx, [rip + .S9]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n61_match_alternate_s1
n66_match_assign_cond_β:
                        mov              r11, 30
                        sub              r12, 24;                             jmp   n65_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n67_goto_α:             mov              r11, 31;                             jmp   n61_match_alternate_af
n67_goto_β:             mov              r11, 31;                             jmp   n61_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n68_match_lit_α:        mov              r11, 32
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n61_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42;                             jne   n61_match_alternate_af
                        add              r14d, 1;                             jmp   n69_match_assign_save_α
n68_match_lit_β:        mov              r11, 32
                        sub              r14d, 1;                             jmp   n61_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n69_match_assign_save_α:
                        mov              r11, 33
                        mov              dword ptr [rbp + -64], r14d;         jmp   n70_match_defer_α
n69_match_assign_save_β:
                        mov              r11, 33;                             jmp   n68_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n70_match_defer_α:      mov              r11, 34
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S10]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx90_16
                        mov              rax, qword ptr [rdx + 0]
.Lx90_16:               test             rax, rax;                            jz    .Lx90_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx90_5]
                        push             rcx
                        lea              rcx, [rip + .Lx90_4]
                        push             rcx;                                 jmp   rax
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
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
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
n70_match_defer_β:      mov              r11, 34
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx90_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx90_12
                                                                              jmp   rax
.Lx90_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n71_match_assign_cond_α:
                        mov              r11, 35
                        mov              eax, dword ptr [rbp + -64]
                        lea              rcx, [rip + .S11]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n61_match_alternate_s0
n71_match_assign_cond_β:
                        mov              r11, 35
                        sub              r12, 24;                             jmp   n70_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_β:
                                                                              jmp   n60_match_arbno_β
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
n93_match_defer_α:      sub              rsp, 16
                        mov              r11, 36
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S12]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx106_16
                        mov              rax, qword ptr [rdx + 0]
.Lx106_16:              test             rax, rax;                            jz    .Lx106_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx106_5]
                        push             rcx
                        lea              rcx, [rip + .Lx106_4]
                        push             rcx;                                 jmp   rax
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
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
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
n93_match_defer_β:      mov              r11, 36
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx106_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx106_12
                                                                              jmp   rax
.Lx106_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n94_match_arbno_α:      mov              r11, 37
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d;         jmp   PAT$5_γ
n94_match_arbno_β:      mov              r11, 37;                             jmp   n95_match_alternate_α
n94_match_arbno_as:     mov              r11, 37
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n95_match_alternate_β
                        mov              dword ptr [rbp + -44], r14d;         jmp   PAT$5_γ
n94_match_arbno_af:     mov              r11, 37
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n93_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n95_match_alternate_α:  mov              r11, 38
                        mov              dword ptr [rbp + -152], r14d
                        lea              rax, [rip + .Lx110_21]
                        mov              qword ptr [rbp + -136], rax;         jmp   n102_match_lit_α
.Lx110_21:              lea              rax, [rip + .Lx110_19]
                        mov              qword ptr [rbp + -136], rax;         jmp   n97_match_lit_α
n95_match_alternate_s0: mov              r11, 38
                        lea              rax, [rip + .Lx110_40]
                        mov              qword ptr [rbp + -144], rax;         jmp   n95_match_alternate_as
n95_match_alternate_s1: mov              r11, 38
                        lea              rax, [rip + .Lx110_41]
                        mov              qword ptr [rbp + -144], rax;         jmp   n95_match_alternate_as
.Lx110_40:                                                                    jmp   n101_goto_β
.Lx110_41:                                                                    jmp   n96_goto_β
n95_match_alternate_as: mov              r11, 38;                             jmp   n94_match_arbno_as
n95_match_alternate_β:  mov              r11, 38
                        mov              rax, qword ptr [rbp + -144];         jmp   rax
n95_match_alternate_af: mov              r11, 38
                        mov              r14d, dword ptr [rbp + -152]
                        mov              rax, qword ptr [rbp + -136];         jmp   rax
.Lx110_19:                                                                    jmp   n94_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n96_goto_α:             mov              r11, 39;                             jmp   n95_match_alternate_af
n96_goto_β:             mov              r11, 39;                             jmp   n95_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n97_match_lit_α:        mov              r11, 40
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n95_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n95_match_alternate_af
                        add              r14d, 1;                             jmp   n98_match_assign_save_α
n97_match_lit_β:        mov              r11, 40
                        sub              r14d, 1;                             jmp   n95_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n98_match_assign_save_α:
                        mov              r11, 41
                        mov              dword ptr [rbp + -96], r14d;         jmp   n99_match_defer_α
n98_match_assign_save_β:
                        mov              r11, 41;                             jmp   n97_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n99_match_defer_α:      mov              r11, 42
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S13]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx116_16
                        mov              rax, qword ptr [rdx + 0]
.Lx116_16:              test             rax, rax;                            jz    .Lx116_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx116_5]
                        push             rcx
                        lea              rcx, [rip + .Lx116_4]
                        push             rcx;                                 jmp   rax
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
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
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
n99_match_defer_β:      mov              r11, 42
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx116_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx116_12
                                                                              jmp   rax
.Lx116_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n100_match_assign_cond_α:
                        mov              r11, 43
                        mov              eax, dword ptr [rbp + -96]
                        lea              rcx, [rip + .S14]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n95_match_alternate_s1
n100_match_assign_cond_β:
                        mov              r11, 43
                        sub              r12, 24;                             jmp   n99_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n101_goto_α:            mov              r11, 44;                             jmp   n95_match_alternate_af
n101_goto_β:            mov              r11, 44;                             jmp   n95_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n102_match_lit_α:       mov              r11, 45
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n95_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   n95_match_alternate_af
                        add              r14d, 1;                             jmp   n103_match_assign_save_α
n102_match_lit_β:       mov              r11, 45
                        sub              r14d, 1;                             jmp   n95_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n103_match_assign_save_α:
                        mov              r11, 46
                        mov              dword ptr [rbp + -64], r14d;         jmp   n104_match_defer_α
n103_match_assign_save_β:
                        mov              r11, 46;                             jmp   n102_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n104_match_defer_α:     mov              r11, 47
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S15]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx124_16
                        mov              rax, qword ptr [rdx + 0]
.Lx124_16:              test             rax, rax;                            jz    .Lx124_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx124_5]
                        push             rcx
                        lea              rcx, [rip + .Lx124_4]
                        push             rcx;                                 jmp   rax
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
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
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
n104_match_defer_β:     mov              r11, 47
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx124_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx124_12
                                                                              jmp   rax
.Lx124_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n105_match_assign_cond_α:
                        mov              r11, 48
                        mov              eax, dword ptr [rbp + -64]
                        lea              rcx, [rip + .S16]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n95_match_alternate_s0
n105_match_assign_cond_β:
                        mov              r11, 48
                        sub              r12, 24;                             jmp   n104_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_β:
                                                                              jmp   n94_match_arbno_β
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
n127_match_defer_α:     sub              rsp, 16
                        mov              r11, 49
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S17]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx129_16
                        mov              rax, qword ptr [rdx + 0]
.Lx129_16:              test             rax, rax;                            jz    .Lx129_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx129_5]
                        push             rcx
                        lea              rcx, [rip + .Lx129_4]
                        push             rcx;                                 jmp   rax
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
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
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
n127_match_defer_β:     mov              r11, 49
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx129_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx129_12
                                                                              jmp   rax
.Lx129_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n128_match_fence0_α:    mov              r11, 50;                             jmp   PAT$6_γ
n128_match_fence0_β:    mov              r11, 50;                             jmp   PAT$6_ω
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
n132_match_pos_α:       mov              r11, 51
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$7_ω
                                                                              jmp   n133_match_arbno_α
n132_match_pos_β:       mov              r11, 51;                             jmp   PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n133_match_arbno_α:     mov              r11, 52
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d;         jmp   n134_match_rpos_α
n133_match_arbno_β:     mov              r11, 52;                             jmp   n135_match_defer_α
n133_match_arbno_as:    mov              r11, 52
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n135_match_defer_β
                        mov              dword ptr [rbp + -44], r14d;         jmp   n134_match_rpos_α
n133_match_arbno_af:    mov              r11, 52
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n132_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n134_match_rpos_α:      mov              r11, 53
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n133_match_arbno_β
                                                                              jmp   PAT$7_γ
n134_match_rpos_β:      mov              r11, 53;                             jmp   n133_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n135_match_defer_α:     mov              r11, 54
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S18]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx144_16
                        mov              rax, qword ptr [rdx + 0]
.Lx144_16:              test             rax, rax;                            jz    .Lx144_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx144_5]
                        push             rcx
                        lea              rcx, [rip + .Lx144_4]
                        push             rcx;                                 jmp   rax
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
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
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
n135_match_defer_β:     mov              r11, 54
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx144_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx144_12
                                                                              jmp   rax
.Lx144_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n136_match_defer_α:     mov              r11, 55
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S19]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx145_16
                        mov              rax, qword ptr [rdx + 0]
.Lx145_16:              test             rax, rax;                            jz    .Lx145_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx145_5]
                        push             rcx
                        lea              rcx, [rip + .Lx145_4]
                        push             rcx;                                 jmp   rax
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
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
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
n136_match_defer_β:     mov              r11, 55
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx145_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx145_12
                                                                              jmp   rax
.Lx145_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n137_match_assign_save_α:
                        mov              r11, 56
                        mov              dword ptr [rbp + -80], r14d;         jmp   n138_match_defer_α
n137_match_assign_save_β:
                        mov              r11, 56;                             jmp   n136_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n138_match_defer_α:     mov              r11, 57
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S20]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx148_16
                        mov              rax, qword ptr [rdx + 0]
.Lx148_16:              test             rax, rax;                            jz    .Lx148_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx148_5]
                        push             rcx
                        lea              rcx, [rip + .Lx148_4]
                        push             rcx;                                 jmp   rax
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
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
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
n138_match_defer_β:     mov              r11, 57
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx148_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx148_12
                                                                              jmp   rax
.Lx148_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n139_match_assign_cond_α:
                        mov              r11, 58
                        mov              eax, dword ptr [rbp + -80]
                        lea              rcx, [rip + .S21]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n133_match_arbno_as
n139_match_assign_cond_β:
                        mov              r11, 58
                        sub              r12, 24;                             jmp   n138_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_β:
                                                                              jmp   n134_match_rpos_β
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
n151_statement_begin_α: mov              r11, 59
                        mov              r10, 1;                              jmp   n152_define_α
n151_statement_begin_β: mov              r11, 59;                             jmp   n171_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n152_define_α:          mov              r11, 60
                        mov              rdi, qword ptr [rip + .Lx584_0]
                        mov              rsi, qword ptr [rip + .Lx584_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n154_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx584_0]
                        lea              rsi, [rip + EMIT_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n153_statement_end_α
n152_define_β:          mov              r11, 60;                             jmp   n151_statement_begin_β
.Lx584_0:               .quad            .Lx584_0_s
.Lx584_0_s:             .string          "EMIT"
.Lx584_1:               .quad            .Lx584_1_s
.Lx584_1_s:             .string          ""
                                                                              jmp   .Lx585_245
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
.Lx585_245:
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_end_α:   mov              r11, 61
                        mov              r10, 1;                              jmp   n171_statement_begin_α
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_begin_α: mov              r11, 62
                        mov              r10, 2;                              jmp   n155_var_α
n154_statement_begin_β: mov              r11, 62;                             jmp   n162_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n155_var_α:             sub              rsp, 16
                        mov              r11, 63
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n156_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_integer_α:     sub              rsp, 16
                        mov              r11, 64
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx591_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_subscript_α
n156_lit_integer_β:     mov              r11, 64
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n154_statement_begin_β
.Lx591_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n157_subscript_α:       sub              rsp, 16
                        mov              r11, 65
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx592_240
                        add              rsp, 16;                             jmp   n156_lit_integer_β
.Lx592_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n158_deref_α
n157_subscript_β:       mov              r11, 65
                        add              rsp, 16;                             jmp   n156_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n158_deref_α:           sub              rsp, 16
                        mov              r11, 66
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx593_240
                        add              rsp, 16;                             jmp   n157_subscript_β
.Lx593_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_call_α
n158_deref_β:           mov              r11, 66
                        add              rsp, 16;                             jmp   n157_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n159_call_α:            sub              rsp, 16
                        mov              r11, 67
                        lea              rcx, [rip + .Lsig595z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig595z:              .quad            1
                        .quad            .Lx595_2
                        .quad            .Lx595_2
                        .quad            16
.Lx595_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx595_29
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
.Lx595_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx595_240
                        add              rsp, 16;                             jmp   n158_deref_β
.Lx595_240:                                                                   jmp   n160_assign_α
n159_call_β:            mov              r11, 67;                             jmp   n158_deref_β
.Lx595_0:               .quad            .Lx595_0_s
.Lx595_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_α:          mov              r11, 68
                        mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx596_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n161_statement_end_α
.Lx596_0:               .quad            .Lx596_0_s
.Lx596_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_end_α:   mov              r11, 69
                        mov              r10, 2
                        add              rsp, 80;                             jmp   n162_statement_begin_α
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_begin_α: mov              r11, 70
                        mov              r10, 3;                              jmp   n163_lit_integer_α
n162_statement_begin_β: mov              r11, 70;                             jmp   n166_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_integer_α:     sub              rsp, 16
                        mov              r11, 71
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n164_assign_α
.Lx601_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n164_assign_α:          mov              r11, 72
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n165_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_end_α:   mov              r11, 73
                        mov              r10, 3
                        add              rsp, 16;                             jmp   n166_statement_begin_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_begin_α: mov              r11, 74
                        mov              r10, 4;                              jmp   n167_lit_string_α
n166_statement_begin_β: mov              r11, 74;                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:      sub              rsp, 16
                        mov              r11, 75
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx607_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n168_call_α
.Lx607_0:               .quad            .Lx607_0_s
.Lx607_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n168_call_α:            sub              rsp, 16
                        mov              r11, 76
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd609:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd609]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx608_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n166_statement_begin_β
.Lx608_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n169_assign_α
n168_call_β:            mov              r11, 76
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n166_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_α:          mov              r11, 77
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # EMIT
                        mov              qword ptr [r9 + 8], rdx;             jmp   n170_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   mov              r11, 78
                        mov              r10, 4
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# EMIT_end  <stmt 5, line 33: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_begin_α: mov              r11, 79
                        mov              r10, 5;                              jmp   n172_statement_end_α
n171_statement_begin_β: mov              r11, 79;                             jmp   n173_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_end_α:   mov              r11, 80
                        mov              r10, 5;                              jmp   n173_statement_begin_α
#=======================================================================================================================
#         DEFINE('PSH()')                         :(PSH_end)
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_begin_α: mov              r11, 81
                        mov              r10, 6;                              jmp   n174_define_α
n173_statement_begin_β: mov              r11, 81;                             jmp   n188_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n174_define_α:          mov              r11, 82
                        mov              rdi, qword ptr [rip + .Lx620_0]
                        mov              rsi, qword ptr [rip + .Lx620_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n176_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx620_0]
                        lea              rsi, [rip + PSH_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n175_statement_end_α
n174_define_β:          mov              r11, 82;                             jmp   n173_statement_begin_β
.Lx620_0:               .quad            .Lx620_0_s
.Lx620_0_s:             .string          "PSH"
.Lx620_1:               .quad            .Lx620_1_s
.Lx620_1_s:             .string          ""
                                                                              jmp   .Lx621_245
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
.Lx621_245:
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_end_α:   mov              r11, 83
                        mov              r10, 6;                              jmp   n188_statement_begin_α
#=======================================================================================================================
# PSH     sp = sp + 1
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_begin_α: mov              r11, 84
                        mov              r10, 7;                              jmp   n177_var_α
n176_statement_begin_β: mov              r11, 84;                             jmp   n182_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:             sub              rsp, 16
                        mov              r11, 85
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n178_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_integer_α:     sub              rsp, 16
                        mov              r11, 86
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx627_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n179_binop_α
n178_lit_integer_β:     mov              r11, 86
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n176_statement_begin_β
.Lx627_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n179_binop_α:           sub              rsp, 16
                        mov              r11, 87
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx628_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx628_7
.Lx628_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx628_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx628_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx628_4
.Lx628_3:               movq             xmm0, rsi
.Lx628_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx628_7:                                                                     jmp   n180_assign_α
.Lx628_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx628_240
                        add              rsp, 16;                             jmp   n178_lit_integer_β
.Lx628_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n180_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n180_assign_α:          mov              r11, 88
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n181_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_end_α:   mov              r11, 89
                        mov              r10, 7
                        add              rsp, 48;                             jmp   n182_statement_begin_α
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_begin_α: mov              r11, 90
                        mov              r10, 8;                              jmp   n183_var_α
n182_statement_begin_β: mov              r11, 90;                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:             sub              rsp, 16
                        mov              r11, 91
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n184_var_α
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             sub              rsp, 16
                        mov              r11, 92
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n185_subscript_α
n184_var_β:             mov              r11, 92
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n182_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n185_subscript_α:       sub              rsp, 16
                        mov              r11, 93
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx636_240
                        add              rsp, 16;                             jmp   n184_var_β
.Lx636_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n186_assign_α:          mov              r11, 94
                        mov              rax, qword ptr [rsp + 0]             # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # PSH
                        mov              qword ptr [r9 + 24], rdx;            jmp   n187_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_end_α:   mov              r11, 95
                        mov              r10, 8
                        add              rsp, 48;                             jmp   NRETURN
#=======================================================================================================================
# PSH_end  <stmt 9, line 37: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_begin_α: mov              r11, 96
                        mov              r10, 9;                              jmp   n189_statement_end_α
n188_statement_begin_β: mov              r11, 96;                             jmp   n190_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_end_α:   mov              r11, 97
                        mov              r10, 9;                              jmp   n190_statement_begin_α
#=======================================================================================================================
#         DEFINE('DRF(nm)')                       :(DRF_end)
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_begin_α: mov              r11, 98
                        mov              r10, 10;                             jmp   n191_define_α
n190_statement_begin_β: mov              r11, 98;                             jmp   n212_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n191_define_α:          mov              r11, 99
                        mov              rdi, qword ptr [rip + .Lx647_0]
                        mov              rsi, qword ptr [rip + .Lx647_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n193_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx647_0]
                        lea              rsi, [rip + DRF_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n192_statement_end_α
n191_define_β:          mov              r11, 99;                             jmp   n190_statement_begin_β
.Lx647_0:               .quad            .Lx647_0_s
.Lx647_0_s:             .string          "DRF"
.Lx647_1:               .quad            .Lx647_1_s
.Lx647_1_s:             .string          "nm"
                                                                              jmp   .Lx648_245
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
                        cmp              rdx, 0;                              jbe   .Lx648_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # nm
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx648_41
.Lx648_10:              mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx648_41:              lea              rcx, [rip + DRF_γ]
                        lea              rax, [rip + DRF_ω]
                        push             rax
                        push             rcx
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
                        cmp              rdx, 0;                              jbe   .Lx648_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx648_110
.Lx648_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx648_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx648_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx648_180
.Lx648_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx648_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx648_245:
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_end_α:   mov              r11, 100
                        mov              r10, 10;                             jmp   n212_statement_begin_α
#=======================================================================================================================
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
#-----------------------------------------------------------------------------------------------------------------------
n193_statement_begin_α: mov              r11, 101
                        mov              r10, 11;                             jmp   n194_var_α
n193_statement_begin_β: mov              r11, 101;                            jmp   n208_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             sub              rsp, 16
                        mov              r11, 102
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n195_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n195_match_begin_α:     mov              r11, 103
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
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx655_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx655_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n196_match_pos_α
n195_match_begin_β:     mov              r11, 103
.Lx655_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx655_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx655_1
                                                                              jmp   .Lx655_0
.Lx655_1:
n195_match_begin_af:    mov              r11, 103
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        add              rsp, 16;                             jmp   n208_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n196_match_pos_α:       mov              r11, 104
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n195_match_begin_β
                                                                              jmp   n197_match_any_α
n196_match_pos_β:       mov              r11, 104;                            jmp   n195_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n197_match_any_α:       mov              r11, 105
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n195_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n195_match_begin_β
                        add              r14d, 1;                             jmp   n198_match_rpos_α
n197_match_any_β:       mov              r11, 105
                        sub              r14d, 1;                             jmp   n195_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n198_match_rpos_α:      mov              r11, 106
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n197_match_any_β
                                                                              jmp   n199_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n199_match_end_α:       mov              r11, 107
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
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx661_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n195_match_begin_af
.Lx661_13:              add              rsp, 16
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
n200_statement_end_α:   mov              r11, 108
                        mov              r10, 11
                        add              rsp, 16;                             jmp   n201_statement_begin_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_begin_α: mov              r11, 109
                        mov              r10, 12;                             jmp   n202_var_α
n201_statement_begin_β: mov              r11, 109;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n202_var_α:             sub              rsp, 16
                        mov              r11, 110
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n203_var_α
#-----------------------------------------------------------------------------------------------------------------------
n203_var_α:             sub              rsp, 16
                        mov              r11, 111
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n204_subscript_α
n203_var_β:             mov              r11, 111
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n201_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n204_subscript_α:       sub              rsp, 16
                        mov              r11, 112
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx668_240
                        add              rsp, 16;                             jmp   n203_var_β
.Lx668_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n205_deref_α
n204_subscript_β:       mov              r11, 112
                        add              rsp, 16;                             jmp   n203_var_β
#-----------------------------------------------------------------------------------------------------------------------
n205_deref_α:           sub              rsp, 16
                        mov              r11, 113
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx669_240
                        add              rsp, 16;                             jmp   n204_subscript_β
.Lx669_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n206_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n206_assign_α:          mov              r11, 114
                        mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx;            jmp   n207_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n207_statement_end_α:   mov              r11, 115
                        mov              r10, 12
                        add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n208_statement_begin_α: mov              r11, 116
                        mov              r10, 13;                             jmp   n209_var_α
n208_statement_begin_β: mov              r11, 116;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n209_var_α:             sub              rsp, 16
                        mov              r11, 117
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n210_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n210_assign_α:          mov              r11, 118
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx;            jmp   n211_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n211_statement_end_α:   mov              r11, 119
                        mov              r10, 13
                        add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# DRF_end  <stmt 14, line 42: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n212_statement_begin_α: mov              r11, 120
                        mov              r10, 14;                             jmp   n213_statement_end_α
n212_statement_begin_β: mov              r11, 120;                            jmp   n214_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n213_statement_end_α:   mov              r11, 121
                        mov              r10, 14;                             jmp   n214_statement_begin_α
#=======================================================================================================================
#         DEFINE('ADD()p1')                       :(ADD_end)
#-----------------------------------------------------------------------------------------------------------------------
n214_statement_begin_α: mov              r11, 122
                        mov              r10, 15;                             jmp   n215_define_α
n214_statement_begin_β: mov              r11, 122;                            jmp   n251_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n215_define_α:          mov              r11, 123
                        mov              rdi, qword ptr [rip + .Lx686_0]
                        mov              rsi, qword ptr [rip + .Lx686_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n217_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx686_0]
                        lea              rsi, [rip + ADD_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n216_statement_end_α
n215_define_β:          mov              r11, 123;                            jmp   n214_statement_begin_β
.Lx686_0:               .quad            .Lx686_0_s
.Lx686_0_s:             .string          "ADD"
.Lx686_1:               .quad            .Lx686_1_s
.Lx686_1_s:             .string          "p1"
                                                                              jmp   .Lx687_245
#-----------------------------------------------------------------------------------------------------------------------
ADD_α:                  sub              rsp, 64
                        mov              rax, qword ptr [r9 + 64]             # ADD
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 64], 0
                        mov              qword ptr [r9 + 72], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx687_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx687_41
.Lx687_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx687_41:              lea              rcx, [rip + ADD_γ]
                        lea              rax, [rip + ADD_ω]
                        push             rax
                        push             rcx
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
                        cmp              rdx, 0;                              jbe   .Lx687_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx687_110
.Lx687_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx687_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx687_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx687_180
.Lx687_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx687_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx687_245:
#-----------------------------------------------------------------------------------------------------------------------
n216_statement_end_α:   mov              r11, 124
                        mov              r10, 15;                             jmp   n251_statement_begin_α
#=======================================================================================================================
# ADD     S[sp - 1] = DRF(S[sp - 1]) + DRF(S[sp - 0])
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_begin_α: mov              r11, 125
                        mov              r10, 16;                             jmp   n218_var_α
n217_statement_begin_β: mov              r11, 125;                            jmp   n240_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:             sub              rsp, 16
                        mov              r11, 126
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n219_var_α
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             sub              rsp, 16
                        mov              r11, 127
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_lit_integer_α
n219_var_β:             mov              r11, 127
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n217_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_integer_α:     sub              rsp, 16
                        mov              r11, 128
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx694_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n221_binop_α
n220_lit_integer_β:     mov              r11, 128
                        add              rsp, 16;                             jmp   n219_var_β
.Lx694_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n221_binop_α:           sub              rsp, 16
                        mov              r11, 129
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx695_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx695_7
.Lx695_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx695_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx695_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx695_4
.Lx695_3:               movq             xmm0, rsi
.Lx695_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx695_7:                                                                     jmp   n222_subscript_α
.Lx695_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx695_240
                        add              rsp, 16;                             jmp   n220_lit_integer_β
.Lx695_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n222_subscript_α
n221_binop_β:           mov              r11, 129
                        add              rsp, 16;                             jmp   n220_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n222_subscript_α:       sub              rsp, 16
                        mov              r11, 130
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx696_240
                        add              rsp, 16;                             jmp   n221_binop_β
.Lx696_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n223_var_α
n222_subscript_β:       mov              r11, 130
                        add              rsp, 16;                             jmp   n221_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n223_var_α:             sub              rsp, 16
                        mov              r11, 131
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n224_var_α
n223_var_β:             mov              r11, 131
                        add              rsp, 16;                             jmp   n222_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n224_var_α:             sub              rsp, 16
                        mov              r11, 132
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n225_lit_integer_α
n224_var_β:             mov              r11, 132
                        add              rsp, 16;                             jmp   n223_var_β
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_integer_α:     sub              rsp, 16
                        mov              r11, 133
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx699_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n226_binop_α
n225_lit_integer_β:     mov              r11, 133
                        add              rsp, 16;                             jmp   n224_var_β
.Lx699_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n226_binop_α:           sub              rsp, 16
                        mov              r11, 134
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx700_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx700_7
.Lx700_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx700_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx700_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx700_4
.Lx700_3:               movq             xmm0, rsi
.Lx700_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx700_7:                                                                     jmp   n227_subscript_α
.Lx700_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx700_240
                        add              rsp, 16;                             jmp   n225_lit_integer_β
.Lx700_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n227_subscript_α
n226_binop_β:           mov              r11, 134
                        add              rsp, 16;                             jmp   n225_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n227_subscript_α:       sub              rsp, 16
                        mov              r11, 135
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx701_240
                        add              rsp, 16;                             jmp   n226_binop_β
.Lx701_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n228_deref_α
n227_subscript_β:       mov              r11, 135
                        add              rsp, 16;                             jmp   n226_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n228_deref_α:           sub              rsp, 16
                        mov              r11, 136
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx702_240
                        add              rsp, 16;                             jmp   n227_subscript_β
.Lx702_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n229_call_α
n228_deref_β:           mov              r11, 136
                        add              rsp, 16;                             jmp   n227_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n229_call_α:            sub              rsp, 16
                        mov              r11, 137
                        lea              rcx, [rip + .Lsig704z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig704z:              .quad            1
                        .quad            .Lx704_2
                        .quad            .Lx704_2
                        .quad            16
.Lx704_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx704_29
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
.Lx704_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx704_240
                        add              rsp, 16;                             jmp   n228_deref_β
.Lx704_240:                                                                   jmp   n230_var_α
n229_call_β:            mov              r11, 137;                            jmp   n228_deref_β
.Lx704_0:               .quad            .Lx704_0_s
.Lx704_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n230_var_α:             sub              rsp, 16
                        mov              r11, 138
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n231_var_α
n230_var_β:             mov              r11, 138
                        add              rsp, 32;                             jmp   n228_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:             sub              rsp, 16
                        mov              r11, 139
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n232_lit_integer_α
n231_var_β:             mov              r11, 139
                        add              rsp, 16;                             jmp   n230_var_β
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_integer_α:     sub              rsp, 16
                        mov              r11, 140
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx707_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n233_binop_α
n232_lit_integer_β:     mov              r11, 140
                        add              rsp, 16;                             jmp   n231_var_β
.Lx707_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n233_binop_α:           sub              rsp, 16
                        mov              r11, 141
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx708_2
                        sub              rax, 0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx708_7
.Lx708_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx708_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 0
                        cmp              al, 5;                               je    .Lx708_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx708_4
.Lx708_3:               movq             xmm0, rsi
.Lx708_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx708_7:                                                                     jmp   n234_subscript_α
.Lx708_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx708_240
                        add              rsp, 16;                             jmp   n232_lit_integer_β
.Lx708_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n234_subscript_α
n233_binop_β:           mov              r11, 141
                        add              rsp, 16;                             jmp   n232_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n234_subscript_α:       sub              rsp, 16
                        mov              r11, 142
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx709_240
                        add              rsp, 16;                             jmp   n233_binop_β
.Lx709_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n235_deref_α
n234_subscript_β:       mov              r11, 142
                        add              rsp, 16;                             jmp   n233_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n235_deref_α:           sub              rsp, 16
                        mov              r11, 143
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx710_240
                        add              rsp, 16;                             jmp   n234_subscript_β
.Lx710_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n236_call_α
n235_deref_β:           mov              r11, 143
                        add              rsp, 16;                             jmp   n234_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n236_call_α:            sub              rsp, 16
                        mov              r11, 144
                        lea              rcx, [rip + .Lsig712z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig712z:              .quad            1
                        .quad            .Lx712_2
                        .quad            .Lx712_2
                        .quad            16
.Lx712_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx712_29
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
.Lx712_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx712_240
                        add              rsp, 16;                             jmp   n235_deref_β
.Lx712_240:                                                                   jmp   n237_binop_α
n236_call_β:            mov              r11, 144;                            jmp   n235_deref_β
.Lx712_0:               .quad            .Lx712_0_s
.Lx712_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n237_binop_α:           sub              rsp, 16
                        mov              r11, 145
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx713_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx713_7
.Lx713_2:               and              edx, 1;                              jz    .Lx713_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx713_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx713_4
.Lx713_3:               movq             xmm0, rsi
.Lx713_4:               cmp              cl, 5;                               je    .Lx713_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx713_6
.Lx713_5:               movq             xmm1, rdi
.Lx713_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx713_7:                                                                     jmp   n238_assign_var_α
.Lx713_0:               mov              rdi, qword ptr [rsp + 128]           # call
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx713_240
                        add              rsp, 32;                             jmp   n235_deref_β
.Lx713_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n238_assign_var_α
n237_binop_β:           mov              r11, 145
                        add              rsp, 32;                             jmp   n235_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n238_assign_var_α:      sub              rsp, 16
                        mov              r11, 146
                        mov              rdi, qword ptr [rsp + 256]           # subscript
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx714_240
                        add              rsp, 16;                             jmp   n237_binop_β
.Lx714_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n239_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_end_α:   mov              r11, 147
                        mov              r10, 16
                        add              rsp, 336;                            jmp   n240_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n240_statement_begin_α: mov              r11, 148
                        mov              r10, 17;                             jmp   n241_var_α
n240_statement_begin_β: mov              r11, 148;                            jmp   n246_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:             sub              rsp, 16
                        mov              r11, 149
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_integer_α:     sub              rsp, 16
                        mov              r11, 150
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx720_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n243_binop_α
n242_lit_integer_β:     mov              r11, 150
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n240_statement_begin_β
.Lx720_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n243_binop_α:           sub              rsp, 16
                        mov              r11, 151
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx721_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx721_7
.Lx721_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx721_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx721_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx721_4
.Lx721_3:               movq             xmm0, rsi
.Lx721_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx721_7:                                                                     jmp   n244_assign_α
.Lx721_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx721_240
                        add              rsp, 16;                             jmp   n242_lit_integer_β
.Lx721_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n244_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n244_assign_α:          mov              r11, 152
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n245_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n245_statement_end_α:   mov              r11, 153
                        mov              r10, 17
                        add              rsp, 48;                             jmp   n246_statement_begin_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n246_statement_begin_α: mov              r11, 154
                        mov              r10, 18;                             jmp   n247_lit_string_α
n246_statement_begin_β: mov              r11, 154;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:      sub              rsp, 16
                        mov              r11, 155
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx727_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n248_call_α
.Lx727_0:               .quad            .Lx727_0_s
.Lx727_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n248_call_α:            sub              rsp, 16
                        mov              r11, 156
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd729:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd729]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx728_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n246_statement_begin_β
.Lx728_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n249_assign_α
n248_call_β:            mov              r11, 156
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n246_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n249_assign_α:          mov              r11, 157
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ADD
                        mov              qword ptr [r9 + 72], rdx;            jmp   n250_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n250_statement_end_α:   mov              r11, 158
                        mov              r10, 18
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# ADD_end  <stmt 19, line 47: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n251_statement_begin_α: mov              r11, 159
                        mov              r10, 19;                             jmp   n252_statement_end_α
n251_statement_begin_β: mov              r11, 159;                            jmp   n253_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n252_statement_end_α:   mov              r11, 160
                        mov              r10, 19;                             jmp   n253_statement_begin_α
#=======================================================================================================================
#         DEFINE('SUB()p1')                       :(SUB_end)
#-----------------------------------------------------------------------------------------------------------------------
n253_statement_begin_α: mov              r11, 161
                        mov              r10, 20;                             jmp   n254_define_α
n253_statement_begin_β: mov              r11, 161;                            jmp   n288_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n254_define_α:          mov              r11, 162
                        mov              rdi, qword ptr [rip + .Lx740_0]
                        mov              rsi, qword ptr [rip + .Lx740_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n256_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx740_0]
                        lea              rsi, [rip + SUB_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n255_statement_end_α
n254_define_β:          mov              r11, 162;                            jmp   n253_statement_begin_β
.Lx740_0:               .quad            .Lx740_0_s
.Lx740_0_s:             .string          "SUB"
.Lx740_1:               .quad            .Lx740_1_s
.Lx740_1_s:             .string          "p1"
                                                                              jmp   .Lx741_245
#-----------------------------------------------------------------------------------------------------------------------
SUB_α:                  sub              rsp, 64
                        mov              rax, qword ptr [r9 + 96]             # SUB
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 96], 0
                        mov              qword ptr [r9 + 104], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx741_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx741_41
.Lx741_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx741_41:              lea              rcx, [rip + SUB_γ]
                        lea              rax, [rip + SUB_ω]
                        push             rax
                        push             rcx
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
                        cmp              rdx, 0;                              jbe   .Lx741_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx741_110
.Lx741_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx741_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx741_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx741_180
.Lx741_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx741_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx741_245:
#-----------------------------------------------------------------------------------------------------------------------
n255_statement_end_α:   mov              r11, 163
                        mov              r10, 20;                             jmp   n288_statement_begin_α
#=======================================================================================================================
# SUB     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_begin_α: mov              r11, 164
                        mov              r10, 21;                             jmp   n257_var_α
n256_statement_begin_β: mov              r11, 164;                            jmp   n264_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:             sub              rsp, 16
                        mov              r11, 165
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n258_var_α
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:             sub              rsp, 16
                        mov              r11, 166
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n259_subscript_α
n258_var_β:             mov              r11, 166
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n256_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n259_subscript_α:       sub              rsp, 16
                        mov              r11, 167
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx748_240
                        add              rsp, 16;                             jmp   n258_var_β
.Lx748_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n260_deref_α
n259_subscript_β:       mov              r11, 167
                        add              rsp, 16;                             jmp   n258_var_β
#-----------------------------------------------------------------------------------------------------------------------
n260_deref_α:           sub              rsp, 16
                        mov              r11, 168
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx749_240
                        add              rsp, 16;                             jmp   n259_subscript_β
.Lx749_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n261_call_α
n260_deref_β:           mov              r11, 168
                        add              rsp, 16;                             jmp   n259_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n261_call_α:            sub              rsp, 16
                        mov              r11, 169
                        lea              rcx, [rip + .Lsig751z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig751z:              .quad            1
                        .quad            .Lx751_2
                        .quad            .Lx751_2
                        .quad            16
.Lx751_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx751_29
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
.Lx751_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx751_240
                        add              rsp, 16;                             jmp   n260_deref_β
.Lx751_240:                                                                   jmp   n262_assign_α
n261_call_β:            mov              r11, 169;                            jmp   n260_deref_β
.Lx751_0:               .quad            .Lx751_0_s
.Lx751_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n262_assign_α:          mov              r11, 170
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n263_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n263_statement_end_α:   mov              r11, 171
                        mov              r10, 21
                        add              rsp, 80;                             jmp   n264_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n264_statement_begin_α: mov              r11, 172
                        mov              r10, 22;                             jmp   n265_var_α
n264_statement_begin_β: mov              r11, 172;                            jmp   n270_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:             sub              rsp, 16
                        mov              r11, 173
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n266_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_integer_α:     sub              rsp, 16
                        mov              r11, 174
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx758_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n267_binop_α
n266_lit_integer_β:     mov              r11, 174
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n264_statement_begin_β
.Lx758_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n267_binop_α:           sub              rsp, 16
                        mov              r11, 175
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx759_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx759_7
.Lx759_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx759_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx759_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx759_4
.Lx759_3:               movq             xmm0, rsi
.Lx759_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx759_7:                                                                     jmp   n268_assign_α
.Lx759_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx759_240
                        add              rsp, 16;                             jmp   n266_lit_integer_β
.Lx759_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n268_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n268_assign_α:          mov              r11, 176
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n269_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n269_statement_end_α:   mov              r11, 177
                        mov              r10, 22
                        add              rsp, 48;                             jmp   n270_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n270_statement_begin_α: mov              r11, 178
                        mov              r10, 23;                             jmp   n271_var_α
n270_statement_begin_β: mov              r11, 178;                            jmp   n283_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n271_var_α:             sub              rsp, 16
                        mov              r11, 179
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n272_var_α
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:             sub              rsp, 16
                        mov              r11, 180
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n273_subscript_α
n272_var_β:             mov              r11, 180
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n270_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n273_subscript_α:       sub              rsp, 16
                        mov              r11, 181
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx767_240
                        add              rsp, 16;                             jmp   n272_var_β
.Lx767_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n274_var_α
n273_subscript_β:       mov              r11, 181
                        add              rsp, 16;                             jmp   n272_var_β
#-----------------------------------------------------------------------------------------------------------------------
n274_var_α:             sub              rsp, 16
                        mov              r11, 182
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n275_var_α
n274_var_β:             mov              r11, 182
                        add              rsp, 16;                             jmp   n273_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n275_var_α:             sub              rsp, 16
                        mov              r11, 183
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n276_subscript_α
n275_var_β:             mov              r11, 183
                        add              rsp, 16;                             jmp   n274_var_β
#-----------------------------------------------------------------------------------------------------------------------
n276_subscript_α:       sub              rsp, 16
                        mov              r11, 184
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx770_240
                        add              rsp, 16;                             jmp   n275_var_β
.Lx770_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n277_deref_α
n276_subscript_β:       mov              r11, 184
                        add              rsp, 16;                             jmp   n275_var_β
#-----------------------------------------------------------------------------------------------------------------------
n277_deref_α:           sub              rsp, 16
                        mov              r11, 185
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx771_240
                        add              rsp, 16;                             jmp   n276_subscript_β
.Lx771_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n278_call_α
n277_deref_β:           mov              r11, 185
                        add              rsp, 16;                             jmp   n276_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n278_call_α:            sub              rsp, 16
                        mov              r11, 186
                        lea              rcx, [rip + .Lsig773z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig773z:              .quad            1
                        .quad            .Lx773_2
                        .quad            .Lx773_2
                        .quad            16
.Lx773_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx773_29
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
.Lx773_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx773_240
                        add              rsp, 16;                             jmp   n277_deref_β
.Lx773_240:                                                                   jmp   n279_var_α
n278_call_β:            mov              r11, 186;                            jmp   n277_deref_β
.Lx773_0:               .quad            .Lx773_0_s
.Lx773_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n279_var_α:             sub              rsp, 16
                        mov              r11, 187
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n280_binop_α
n279_var_β:             mov              r11, 187
                        add              rsp, 32;                             jmp   n277_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n280_binop_α:           sub              rsp, 16
                        mov              r11, 188
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx775_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx775_7
.Lx775_2:               and              edx, 1;                              jz    .Lx775_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx775_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx775_4
.Lx775_3:               movq             xmm0, rsi
.Lx775_4:               cmp              cl, 5;                               je    .Lx775_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx775_6
.Lx775_5:               movq             xmm1, rdi
.Lx775_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx775_7:                                                                     jmp   n281_assign_var_α
.Lx775_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx775_240
                        add              rsp, 16;                             jmp   n279_var_β
.Lx775_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n281_assign_var_α
n280_binop_β:           mov              r11, 188
                        add              rsp, 16;                             jmp   n279_var_β
#-----------------------------------------------------------------------------------------------------------------------
n281_assign_var_α:      sub              rsp, 16
                        mov              r11, 189
                        mov              rdi, qword ptr [rsp + 128]           # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx776_240
                        add              rsp, 16;                             jmp   n280_binop_β
.Lx776_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n282_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n282_statement_end_α:   mov              r11, 190
                        mov              r10, 23
                        add              rsp, 176;                            jmp   n283_statement_begin_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n283_statement_begin_α: mov              r11, 191
                        mov              r10, 24;                             jmp   n284_lit_string_α
n283_statement_begin_β: mov              r11, 191;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:      sub              rsp, 16
                        mov              r11, 192
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx781_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n285_call_α
.Lx781_0:               .quad            .Lx781_0_s
.Lx781_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n285_call_α:            sub              rsp, 16
                        mov              r11, 193
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd783:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd783]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx782_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n283_statement_begin_β
.Lx782_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n286_assign_α
n285_call_β:            mov              r11, 193
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n283_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n286_assign_α:          mov              r11, 194
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # SUB
                        mov              qword ptr [r9 + 104], rdx;           jmp   n287_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n287_statement_end_α:   mov              r11, 195
                        mov              r10, 24
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# SUB_end  <stmt 25, line 53: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n288_statement_begin_α: mov              r11, 196
                        mov              r10, 25;                             jmp   n289_statement_end_α
n288_statement_begin_β: mov              r11, 196;                            jmp   n290_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n289_statement_end_α:   mov              r11, 197
                        mov              r10, 25;                             jmp   n290_statement_begin_α
#=======================================================================================================================
#         DEFINE('MUL()p1')                       :(MUL_end)
#-----------------------------------------------------------------------------------------------------------------------
n290_statement_begin_α: mov              r11, 198
                        mov              r10, 26;                             jmp   n291_define_α
n290_statement_begin_β: mov              r11, 198;                            jmp   n325_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n291_define_α:          mov              r11, 199
                        mov              rdi, qword ptr [rip + .Lx794_0]
                        mov              rsi, qword ptr [rip + .Lx794_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n293_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx794_0]
                        lea              rsi, [rip + MUL_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n292_statement_end_α
n291_define_β:          mov              r11, 199;                            jmp   n290_statement_begin_β
.Lx794_0:               .quad            .Lx794_0_s
.Lx794_0_s:             .string          "MUL"
.Lx794_1:               .quad            .Lx794_1_s
.Lx794_1_s:             .string          "p1"
                                                                              jmp   .Lx795_245
#-----------------------------------------------------------------------------------------------------------------------
MUL_α:                  sub              rsp, 64
                        mov              rax, qword ptr [r9 + 112]            # MUL
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 112], 0
                        mov              qword ptr [r9 + 120], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx795_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx795_41
.Lx795_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx795_41:              lea              rcx, [rip + MUL_γ]
                        lea              rax, [rip + MUL_ω]
                        push             rax
                        push             rcx
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
                        cmp              rdx, 0;                              jbe   .Lx795_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx795_110
.Lx795_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx795_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx795_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx795_180
.Lx795_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx795_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx795_245:
#-----------------------------------------------------------------------------------------------------------------------
n292_statement_end_α:   mov              r11, 200
                        mov              r10, 26;                             jmp   n325_statement_begin_α
#=======================================================================================================================
# MUL     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n293_statement_begin_α: mov              r11, 201
                        mov              r10, 27;                             jmp   n294_var_α
n293_statement_begin_β: mov              r11, 201;                            jmp   n301_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:             sub              rsp, 16
                        mov              r11, 202
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_var_α
#-----------------------------------------------------------------------------------------------------------------------
n295_var_α:             sub              rsp, 16
                        mov              r11, 203
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n296_subscript_α
n295_var_β:             mov              r11, 203
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n293_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n296_subscript_α:       sub              rsp, 16
                        mov              r11, 204
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx802_240
                        add              rsp, 16;                             jmp   n295_var_β
.Lx802_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n297_deref_α
n296_subscript_β:       mov              r11, 204
                        add              rsp, 16;                             jmp   n295_var_β
#-----------------------------------------------------------------------------------------------------------------------
n297_deref_α:           sub              rsp, 16
                        mov              r11, 205
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx803_240
                        add              rsp, 16;                             jmp   n296_subscript_β
.Lx803_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n298_call_α
n297_deref_β:           mov              r11, 205
                        add              rsp, 16;                             jmp   n296_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n298_call_α:            sub              rsp, 16
                        mov              r11, 206
                        lea              rcx, [rip + .Lsig805z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig805z:              .quad            1
                        .quad            .Lx805_2
                        .quad            .Lx805_2
                        .quad            16
.Lx805_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx805_29
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
.Lx805_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx805_240
                        add              rsp, 16;                             jmp   n297_deref_β
.Lx805_240:                                                                   jmp   n299_assign_α
n298_call_β:            mov              r11, 206;                            jmp   n297_deref_β
.Lx805_0:               .quad            .Lx805_0_s
.Lx805_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n299_assign_α:          mov              r11, 207
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n300_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n300_statement_end_α:   mov              r11, 208
                        mov              r10, 27
                        add              rsp, 80;                             jmp   n301_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n301_statement_begin_α: mov              r11, 209
                        mov              r10, 28;                             jmp   n302_var_α
n301_statement_begin_β: mov              r11, 209;                            jmp   n307_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n302_var_α:             sub              rsp, 16
                        mov              r11, 210
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n303_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_integer_α:     sub              rsp, 16
                        mov              r11, 211
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx812_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n304_binop_α
n303_lit_integer_β:     mov              r11, 211
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n301_statement_begin_β
.Lx812_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n304_binop_α:           sub              rsp, 16
                        mov              r11, 212
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx813_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx813_7
.Lx813_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx813_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx813_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx813_4
.Lx813_3:               movq             xmm0, rsi
.Lx813_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx813_7:                                                                     jmp   n305_assign_α
.Lx813_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx813_240
                        add              rsp, 16;                             jmp   n303_lit_integer_β
.Lx813_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n305_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n305_assign_α:          mov              r11, 213
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n306_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n306_statement_end_α:   mov              r11, 214
                        mov              r10, 28
                        add              rsp, 48;                             jmp   n307_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n307_statement_begin_α: mov              r11, 215
                        mov              r10, 29;                             jmp   n308_var_α
n307_statement_begin_β: mov              r11, 215;                            jmp   n320_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:             sub              rsp, 16
                        mov              r11, 216
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n309_var_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:             sub              rsp, 16
                        mov              r11, 217
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n310_subscript_α
n309_var_β:             mov              r11, 217
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n307_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n310_subscript_α:       sub              rsp, 16
                        mov              r11, 218
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx821_240
                        add              rsp, 16;                             jmp   n309_var_β
.Lx821_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n311_var_α
n310_subscript_β:       mov              r11, 218
                        add              rsp, 16;                             jmp   n309_var_β
#-----------------------------------------------------------------------------------------------------------------------
n311_var_α:             sub              rsp, 16
                        mov              r11, 219
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n312_var_α
n311_var_β:             mov              r11, 219
                        add              rsp, 16;                             jmp   n310_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n312_var_α:             sub              rsp, 16
                        mov              r11, 220
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n313_subscript_α
n312_var_β:             mov              r11, 220
                        add              rsp, 16;                             jmp   n311_var_β
#-----------------------------------------------------------------------------------------------------------------------
n313_subscript_α:       sub              rsp, 16
                        mov              r11, 221
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx824_240
                        add              rsp, 16;                             jmp   n312_var_β
.Lx824_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n314_deref_α
n313_subscript_β:       mov              r11, 221
                        add              rsp, 16;                             jmp   n312_var_β
#-----------------------------------------------------------------------------------------------------------------------
n314_deref_α:           sub              rsp, 16
                        mov              r11, 222
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx825_240
                        add              rsp, 16;                             jmp   n313_subscript_β
.Lx825_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n315_call_α
n314_deref_β:           mov              r11, 222
                        add              rsp, 16;                             jmp   n313_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n315_call_α:            sub              rsp, 16
                        mov              r11, 223
                        lea              rcx, [rip + .Lsig827z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig827z:              .quad            1
                        .quad            .Lx827_2
                        .quad            .Lx827_2
                        .quad            16
.Lx827_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx827_29
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
.Lx827_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx827_240
                        add              rsp, 16;                             jmp   n314_deref_β
.Lx827_240:                                                                   jmp   n316_var_α
n315_call_β:            mov              r11, 223;                            jmp   n314_deref_β
.Lx827_0:               .quad            .Lx827_0_s
.Lx827_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n316_var_α:             sub              rsp, 16
                        mov              r11, 224
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n317_binop_α
n316_var_β:             mov              r11, 224
                        add              rsp, 32;                             jmp   n314_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n317_binop_α:           sub              rsp, 16
                        mov              r11, 225
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx829_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx829_7
.Lx829_2:               and              edx, 1;                              jz    .Lx829_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx829_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx829_4
.Lx829_3:               movq             xmm0, rsi
.Lx829_4:               cmp              cl, 5;                               je    .Lx829_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx829_6
.Lx829_5:               movq             xmm1, rdi
.Lx829_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx829_7:                                                                     jmp   n318_assign_var_α
.Lx829_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx829_240
                        add              rsp, 16;                             jmp   n316_var_β
.Lx829_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n318_assign_var_α
n317_binop_β:           mov              r11, 225
                        add              rsp, 16;                             jmp   n316_var_β
#-----------------------------------------------------------------------------------------------------------------------
n318_assign_var_α:      sub              rsp, 16
                        mov              r11, 226
                        mov              rdi, qword ptr [rsp + 128]           # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx830_240
                        add              rsp, 16;                             jmp   n317_binop_β
.Lx830_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n319_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n319_statement_end_α:   mov              r11, 227
                        mov              r10, 29
                        add              rsp, 176;                            jmp   n320_statement_begin_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n320_statement_begin_α: mov              r11, 228
                        mov              r10, 30;                             jmp   n321_lit_string_α
n320_statement_begin_β: mov              r11, 228;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:      sub              rsp, 16
                        mov              r11, 229
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx835_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n322_call_α
.Lx835_0:               .quad            .Lx835_0_s
.Lx835_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n322_call_α:            sub              rsp, 16
                        mov              r11, 230
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd837:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd837]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx836_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n320_statement_begin_β
.Lx836_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n323_assign_α
n322_call_β:            mov              r11, 230
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n320_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n323_assign_α:          mov              r11, 231
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # MUL
                        mov              qword ptr [r9 + 120], rdx;           jmp   n324_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n324_statement_end_α:   mov              r11, 232
                        mov              r10, 30
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# MUL_end  <stmt 31, line 59: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n325_statement_begin_α: mov              r11, 233
                        mov              r10, 31;                             jmp   n326_statement_end_α
n325_statement_begin_β: mov              r11, 233;                            jmp   n327_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n326_statement_end_α:   mov              r11, 234
                        mov              r10, 31;                             jmp   n327_statement_begin_α
#=======================================================================================================================
#         DEFINE('DIV()p1')                       :(DIV_end)
#-----------------------------------------------------------------------------------------------------------------------
n327_statement_begin_α: mov              r11, 235
                        mov              r10, 32;                             jmp   n328_define_α
n327_statement_begin_β: mov              r11, 235;                            jmp   n362_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n328_define_α:          mov              r11, 236
                        mov              rdi, qword ptr [rip + .Lx848_0]
                        mov              rsi, qword ptr [rip + .Lx848_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n330_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx848_0]
                        lea              rsi, [rip + DIV_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n329_statement_end_α
n328_define_β:          mov              r11, 236;                            jmp   n327_statement_begin_β
.Lx848_0:               .quad            .Lx848_0_s
.Lx848_0_s:             .string          "DIV"
.Lx848_1:               .quad            .Lx848_1_s
.Lx848_1_s:             .string          "p1"
                                                                              jmp   .Lx849_245
#-----------------------------------------------------------------------------------------------------------------------
DIV_α:                  sub              rsp, 64
                        mov              rax, qword ptr [r9 + 128]            # DIV
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 128], 0
                        mov              qword ptr [r9 + 136], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx849_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx849_41
.Lx849_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx849_41:              lea              rcx, [rip + DIV_γ]
                        lea              rax, [rip + DIV_ω]
                        push             rax
                        push             rcx
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
                        cmp              rdx, 0;                              jbe   .Lx849_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx849_110
.Lx849_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx849_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx849_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx849_180
.Lx849_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx849_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx849_245:
#-----------------------------------------------------------------------------------------------------------------------
n329_statement_end_α:   mov              r11, 237
                        mov              r10, 32;                             jmp   n362_statement_begin_α
#=======================================================================================================================
# DIV     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n330_statement_begin_α: mov              r11, 238
                        mov              r10, 33;                             jmp   n331_var_α
n330_statement_begin_β: mov              r11, 238;                            jmp   n338_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:             sub              rsp, 16
                        mov              r11, 239
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n332_var_α
#-----------------------------------------------------------------------------------------------------------------------
n332_var_α:             sub              rsp, 16
                        mov              r11, 240
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n333_subscript_α
n332_var_β:             mov              r11, 240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n330_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n333_subscript_α:       sub              rsp, 16
                        mov              r11, 241
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx856_240
                        add              rsp, 16;                             jmp   n332_var_β
.Lx856_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n334_deref_α
n333_subscript_β:       mov              r11, 241
                        add              rsp, 16;                             jmp   n332_var_β
#-----------------------------------------------------------------------------------------------------------------------
n334_deref_α:           sub              rsp, 16
                        mov              r11, 242
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx857_240
                        add              rsp, 16;                             jmp   n333_subscript_β
.Lx857_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n335_call_α
n334_deref_β:           mov              r11, 242
                        add              rsp, 16;                             jmp   n333_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n335_call_α:            sub              rsp, 16
                        mov              r11, 243
                        lea              rcx, [rip + .Lsig859z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig859z:              .quad            1
                        .quad            .Lx859_2
                        .quad            .Lx859_2
                        .quad            16
.Lx859_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx859_29
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
.Lx859_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx859_240
                        add              rsp, 16;                             jmp   n334_deref_β
.Lx859_240:                                                                   jmp   n336_assign_α
n335_call_β:            mov              r11, 243;                            jmp   n334_deref_β
.Lx859_0:               .quad            .Lx859_0_s
.Lx859_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n336_assign_α:          mov              r11, 244
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n337_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n337_statement_end_α:   mov              r11, 245
                        mov              r10, 33
                        add              rsp, 80;                             jmp   n338_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n338_statement_begin_α: mov              r11, 246
                        mov              r10, 34;                             jmp   n339_var_α
n338_statement_begin_β: mov              r11, 246;                            jmp   n344_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n339_var_α:             sub              rsp, 16
                        mov              r11, 247
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n340_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_integer_α:     sub              rsp, 16
                        mov              r11, 248
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx866_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n341_binop_α
n340_lit_integer_β:     mov              r11, 248
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n338_statement_begin_β
.Lx866_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n341_binop_α:           sub              rsp, 16
                        mov              r11, 249
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx867_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx867_7
.Lx867_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx867_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx867_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx867_4
.Lx867_3:               movq             xmm0, rsi
.Lx867_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx867_7:                                                                     jmp   n342_assign_α
.Lx867_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx867_240
                        add              rsp, 16;                             jmp   n340_lit_integer_β
.Lx867_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n342_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n342_assign_α:          mov              r11, 250
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n343_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n343_statement_end_α:   mov              r11, 251
                        mov              r10, 34
                        add              rsp, 48;                             jmp   n344_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n344_statement_begin_α: mov              r11, 252
                        mov              r10, 35;                             jmp   n345_var_α
n344_statement_begin_β: mov              r11, 252;                            jmp   n357_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n345_var_α:             sub              rsp, 16
                        mov              r11, 253
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n346_var_α
#-----------------------------------------------------------------------------------------------------------------------
n346_var_α:             sub              rsp, 16
                        mov              r11, 254
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n347_subscript_α
n346_var_β:             mov              r11, 254
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n344_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n347_subscript_α:       sub              rsp, 16
                        mov              r11, 255
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx875_240
                        add              rsp, 16;                             jmp   n346_var_β
.Lx875_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n348_var_α
n347_subscript_β:       mov              r11, 255
                        add              rsp, 16;                             jmp   n346_var_β
#-----------------------------------------------------------------------------------------------------------------------
n348_var_α:             sub              rsp, 16
                        mov              r11, 256
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n349_var_α
n348_var_β:             mov              r11, 256
                        add              rsp, 16;                             jmp   n347_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n349_var_α:             sub              rsp, 16
                        mov              r11, 257
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n350_subscript_α
n349_var_β:             mov              r11, 257
                        add              rsp, 16;                             jmp   n348_var_β
#-----------------------------------------------------------------------------------------------------------------------
n350_subscript_α:       sub              rsp, 16
                        mov              r11, 258
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx878_240
                        add              rsp, 16;                             jmp   n349_var_β
.Lx878_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n351_deref_α
n350_subscript_β:       mov              r11, 258
                        add              rsp, 16;                             jmp   n349_var_β
#-----------------------------------------------------------------------------------------------------------------------
n351_deref_α:           sub              rsp, 16
                        mov              r11, 259
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx879_240
                        add              rsp, 16;                             jmp   n350_subscript_β
.Lx879_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n352_call_α
n351_deref_β:           mov              r11, 259
                        add              rsp, 16;                             jmp   n350_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n352_call_α:            sub              rsp, 16
                        mov              r11, 260
                        lea              rcx, [rip + .Lsig881z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig881z:              .quad            1
                        .quad            .Lx881_2
                        .quad            .Lx881_2
                        .quad            16
.Lx881_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx881_29
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
.Lx881_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx881_240
                        add              rsp, 16;                             jmp   n351_deref_β
.Lx881_240:                                                                   jmp   n353_var_α
n352_call_β:            mov              r11, 260;                            jmp   n351_deref_β
.Lx881_0:               .quad            .Lx881_0_s
.Lx881_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n353_var_α:             sub              rsp, 16
                        mov              r11, 261
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n354_binop_α
n353_var_β:             mov              r11, 261
                        add              rsp, 32;                             jmp   n351_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n354_binop_α:           sub              rsp, 16
                        mov              r11, 262
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx883_240
                        add              rsp, 16;                             jmp   n353_var_β
.Lx883_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n355_assign_var_α
n354_binop_β:           mov              r11, 262
                        add              rsp, 16;                             jmp   n353_var_β
#-----------------------------------------------------------------------------------------------------------------------
n355_assign_var_α:      sub              rsp, 16
                        mov              r11, 263
                        mov              rdi, qword ptr [rsp + 128]           # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx884_240
                        add              rsp, 16;                             jmp   n354_binop_β
.Lx884_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n356_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n356_statement_end_α:   mov              r11, 264
                        mov              r10, 35
                        add              rsp, 176;                            jmp   n357_statement_begin_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n357_statement_begin_α: mov              r11, 265
                        mov              r10, 36;                             jmp   n358_lit_string_α
n357_statement_begin_β: mov              r11, 265;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_string_α:      sub              rsp, 16
                        mov              r11, 266
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx889_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n359_call_α
.Lx889_0:               .quad            .Lx889_0_s
.Lx889_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n359_call_α:            sub              rsp, 16
                        mov              r11, 267
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd891:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd891]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx890_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n357_statement_begin_β
.Lx890_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n360_assign_α
n359_call_β:            mov              r11, 267
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n357_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n360_assign_α:          mov              r11, 268
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # DIV
                        mov              qword ptr [r9 + 136], rdx;           jmp   n361_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n361_statement_end_α:   mov              r11, 269
                        mov              r10, 36
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# DIV_end  <stmt 37, line 65: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n362_statement_begin_α: mov              r11, 270
                        mov              r10, 37;                             jmp   n363_statement_end_α
n362_statement_begin_β: mov              r11, 270;                            jmp   n364_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n363_statement_end_α:   mov              r11, 271
                        mov              r10, 37;                             jmp   n364_statement_begin_α
#=======================================================================================================================
#         DEFINE('SGN()p1')                       :(SGN_end)
#-----------------------------------------------------------------------------------------------------------------------
n364_statement_begin_α: mov              r11, 272
                        mov              r10, 38;                             jmp   n365_define_α
n364_statement_begin_β: mov              r11, 272;                            jmp   n406_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n365_define_α:          mov              r11, 273
                        mov              rdi, qword ptr [rip + .Lx902_0]
                        mov              rsi, qword ptr [rip + .Lx902_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n367_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx902_0]
                        lea              rsi, [rip + SGN_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n366_statement_end_α
n365_define_β:          mov              r11, 273;                            jmp   n364_statement_begin_β
.Lx902_0:               .quad            .Lx902_0_s
.Lx902_0_s:             .string          "SGN"
.Lx902_1:               .quad            .Lx902_1_s
.Lx902_1_s:             .string          "p1"
                                                                              jmp   .Lx903_245
#-----------------------------------------------------------------------------------------------------------------------
SGN_α:                  sub              rsp, 64
                        mov              rax, qword ptr [r9 + 144]            # SGN
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 144], 0
                        mov              qword ptr [r9 + 152], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx903_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx903_41
.Lx903_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx903_41:              lea              rcx, [rip + SGN_γ]
                        lea              rax, [rip + SGN_ω]
                        push             rax
                        push             rcx
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
                        cmp              rdx, 0;                              jbe   .Lx903_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx903_110
.Lx903_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx903_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx903_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx903_180
.Lx903_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 88], rax
.Lx903_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx903_245:
#-----------------------------------------------------------------------------------------------------------------------
n366_statement_end_α:   mov              r11, 274
                        mov              r10, 38;                             jmp   n406_statement_begin_α
#=======================================================================================================================
# SGN     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n367_statement_begin_α: mov              r11, 275
                        mov              r10, 39;                             jmp   n368_var_α
n367_statement_begin_β: mov              r11, 275;                            jmp   n375_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n368_var_α:             sub              rsp, 16
                        mov              r11, 276
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n369_var_α
#-----------------------------------------------------------------------------------------------------------------------
n369_var_α:             sub              rsp, 16
                        mov              r11, 277
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n370_subscript_α
n369_var_β:             mov              r11, 277
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n367_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n370_subscript_α:       sub              rsp, 16
                        mov              r11, 278
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx910_240
                        add              rsp, 16;                             jmp   n369_var_β
.Lx910_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n371_deref_α
n370_subscript_β:       mov              r11, 278
                        add              rsp, 16;                             jmp   n369_var_β
#-----------------------------------------------------------------------------------------------------------------------
n371_deref_α:           sub              rsp, 16
                        mov              r11, 279
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx911_240
                        add              rsp, 16;                             jmp   n370_subscript_β
.Lx911_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n372_call_α
n371_deref_β:           mov              r11, 279
                        add              rsp, 16;                             jmp   n370_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n372_call_α:            sub              rsp, 16
                        mov              r11, 280
                        lea              rcx, [rip + .Lsig913z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig913z:              .quad            1
                        .quad            .Lx913_2
                        .quad            .Lx913_2
                        .quad            16
.Lx913_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx913_29
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
.Lx913_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx913_240
                        add              rsp, 16;                             jmp   n371_deref_β
.Lx913_240:                                                                   jmp   n373_assign_α
n372_call_β:            mov              r11, 280;                            jmp   n371_deref_β
.Lx913_0:               .quad            .Lx913_0_s
.Lx913_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n373_assign_α:          mov              r11, 281
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n374_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n374_statement_end_α:   mov              r11, 282
                        mov              r10, 39
                        add              rsp, 80;                             jmp   n375_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n375_statement_begin_α: mov              r11, 283
                        mov              r10, 40;                             jmp   n376_var_α
n375_statement_begin_β: mov              r11, 283;                            jmp   n381_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:             sub              rsp, 16
                        mov              r11, 284
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n377_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_integer_α:     sub              rsp, 16
                        mov              r11, 285
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx920_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n378_binop_α
n377_lit_integer_β:     mov              r11, 285
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n375_statement_begin_β
.Lx920_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n378_binop_α:           sub              rsp, 16
                        mov              r11, 286
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx921_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx921_7
.Lx921_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx921_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx921_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx921_4
.Lx921_3:               movq             xmm0, rsi
.Lx921_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx921_7:                                                                     jmp   n379_assign_α
.Lx921_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx921_240
                        add              rsp, 16;                             jmp   n377_lit_integer_β
.Lx921_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n379_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n379_assign_α:          mov              r11, 287
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n380_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n380_statement_end_α:   mov              r11, 288
                        mov              r10, 40
                        add              rsp, 48;                             jmp   n381_statement_begin_α
#=======================================================================================================================
#         IDENT(S[sp], '-')                       :F(SGN1)
#-----------------------------------------------------------------------------------------------------------------------
n381_statement_begin_α: mov              r11, 289
                        mov              r10, 41;                             jmp   n382_var_α
n381_statement_begin_β: mov              r11, 289;                            jmp   n394_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n382_var_α:             sub              rsp, 16
                        mov              r11, 290
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n383_var_α
#-----------------------------------------------------------------------------------------------------------------------
n383_var_α:             sub              rsp, 16
                        mov              r11, 291
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n384_subscript_α
n383_var_β:             mov              r11, 291
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n381_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n384_subscript_α:       sub              rsp, 16
                        mov              r11, 292
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx929_240
                        add              rsp, 16;                             jmp   n383_var_β
.Lx929_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n385_deref_α
n384_subscript_β:       mov              r11, 292
                        add              rsp, 16;                             jmp   n383_var_β
#-----------------------------------------------------------------------------------------------------------------------
n385_deref_α:           sub              rsp, 16
                        mov              r11, 293
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx930_240
                        add              rsp, 16;                             jmp   n384_subscript_β
.Lx930_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n386_lit_string_α
n385_deref_β:           mov              r11, 293
                        add              rsp, 16;                             jmp   n384_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_string_α:      sub              rsp, 16
                        mov              r11, 294
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx931_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n387_ident_α
n386_lit_string_β:      mov              r11, 294
                        add              rsp, 16;                             jmp   n385_deref_β
.Lx931_0:               .quad            .Lx931_0_s
.Lx931_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n387_ident_α:           sub              rsp, 16
                        mov              r11, 295
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jne   .Lx933_240
                        add              rsp, 16;                             jmp   n386_lit_string_β
.Lx933_240:                                                                   jmp   n388_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n388_statement_end_α:   mov              r11, 296
                        mov              r10, 41
                        add              rsp, 96;                             jmp   n389_statement_begin_α
#=======================================================================================================================
#         p1 = -p1
#-----------------------------------------------------------------------------------------------------------------------
n389_statement_begin_α: mov              r11, 297
                        mov              r10, 42;                             jmp   n390_var_α
n389_statement_begin_β: mov              r11, 297;                            jmp   n394_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n390_var_α:             sub              rsp, 16
                        mov              r11, 298
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n391_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n391_unop_α:            sub              rsp, 16
                        mov              r11, 299
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n392_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n392_assign_α:          mov              r11, 300
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # p1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n393_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n393_statement_end_α:   mov              r11, 301
                        mov              r10, 42
                        add              rsp, 32;                             jmp   n394_statement_begin_α
#=======================================================================================================================
# SGN1    S[sp] = p1
#-----------------------------------------------------------------------------------------------------------------------
n394_statement_begin_α: mov              r11, 302
                        mov              r10, 43;                             jmp   n395_var_α
n394_statement_begin_β: mov              r11, 302;                            jmp   n401_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n395_var_α:             sub              rsp, 16
                        mov              r11, 303
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n396_var_α
#-----------------------------------------------------------------------------------------------------------------------
n396_var_α:             sub              rsp, 16
                        mov              r11, 304
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n397_subscript_α
n396_var_β:             mov              r11, 304
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n394_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n397_subscript_α:       sub              rsp, 16
                        mov              r11, 305
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx947_240
                        add              rsp, 16;                             jmp   n396_var_β
.Lx947_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n398_var_α
n397_subscript_β:       mov              r11, 305
                        add              rsp, 16;                             jmp   n396_var_β
#-----------------------------------------------------------------------------------------------------------------------
n398_var_α:             sub              rsp, 16
                        mov              r11, 306
                        mov              rax, qword ptr [r9 + 80]             # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n399_assign_var_α
n398_var_β:             mov              r11, 306
                        add              rsp, 16;                             jmp   n397_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n399_assign_var_α:      sub              rsp, 16
                        mov              r11, 307
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx949_240
                        add              rsp, 16;                             jmp   n398_var_β
.Lx949_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n400_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n400_statement_end_α:   mov              r11, 308
                        mov              r10, 43
                        add              rsp, 80;                             jmp   n401_statement_begin_α
#=======================================================================================================================
#         SGN = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n401_statement_begin_α: mov              r11, 309
                        mov              r10, 44;                             jmp   n402_lit_string_α
n401_statement_begin_β: mov              r11, 309;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_string_α:      sub              rsp, 16
                        mov              r11, 310
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx954_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n403_call_α
.Lx954_0:               .quad            .Lx954_0_s
.Lx954_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n403_call_α:            sub              rsp, 16
                        mov              r11, 311
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd956:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd956]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx955_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n401_statement_begin_β
.Lx955_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n404_assign_α
n403_call_β:            mov              r11, 311
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n401_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n404_assign_α:          mov              r11, 312
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # SGN
                        mov              qword ptr [r9 + 152], rdx;           jmp   n405_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n405_statement_end_α:   mov              r11, 313
                        mov              r10, 44
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# SGN_end  <stmt 45, line 73: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n406_statement_begin_α: mov              r11, 314
                        mov              r10, 45;                             jmp   n407_statement_end_α
n406_statement_begin_β: mov              r11, 314;                            jmp   n408_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n407_statement_end_α:   mov              r11, 315
                        mov              r10, 45;                             jmp   n408_statement_begin_α
#=======================================================================================================================
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
n408_statement_begin_α: mov              r11, 316
                        mov              r10, 46;                             jmp   n409_lit_integer_α
n408_statement_begin_β: mov              r11, 316;                            jmp   n413_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_integer_α:     sub              rsp, 16
                        mov              r11, 317
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx966_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n410_call_α
.Lx966_0:               .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n410_call_α:            sub              rsp, 16
                        mov              r11, 318
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd968:            .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd968]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx967_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n408_statement_begin_β
.Lx967_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n411_assign_α
n410_call_β:            mov              r11, 318
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n408_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n411_assign_α:          mov              r11, 319
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # S
                        mov              qword ptr [r9 + 168], rdx;           jmp   n412_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n412_statement_end_α:   mov              r11, 320
                        mov              r10, 46
                        add              rsp, 32;                             jmp   n413_statement_begin_α
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
n413_statement_begin_α: mov              r11, 321
                        mov              r10, 47;                             jmp   n414_keyword_snobol4_α
n413_statement_begin_β: mov              r11, 321;                            jmp   n417_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n414_keyword_snobol4_α: sub              rsp, 16
                        mov              r11, 322
                        mov              rdi, qword ptr [rip + .Lx974_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n415_assign_α
.Lx974_0:               .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n415_assign_α:          mov              r11, 323
                        mov              rax, qword ptr [rsp + 0]             # keyword_snobol4
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # LCASE
                        mov              qword ptr [r9 + 232], rdx;           jmp   n416_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n416_statement_end_α:   mov              r11, 324
                        mov              r10, 47
                        add              rsp, 16;                             jmp   n417_statement_begin_α
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n417_statement_begin_α: mov              r11, 325
                        mov              r10, 48;                             jmp   n418_lit_string_α
n417_statement_begin_β: mov              r11, 325;                            jmp   n421_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n418_lit_string_α:      sub              rsp, 16
                        mov              r11, 326
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx980_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n419_assign_α
.Lx980_0:               .quad            .Lx980_0_s
.Lx980_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n419_assign_α:          mov              r11, 327
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # DIGITS
                        mov              qword ptr [r9 + 248], rdx;           jmp   n420_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n420_statement_end_α:   mov              r11, 328
                        mov              r10, 48
                        add              rsp, 16;                             jmp   n421_statement_begin_α
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n421_statement_begin_α: mov              r11, 329
                        mov              r10, 49;                             jmp   n422_lit_string_α
n421_statement_begin_β: mov              r11, 329;                            jmp   n426_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:      sub              rsp, 16
                        mov              r11, 330
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx986_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n423_call_α
.Lx986_0:               .quad            .Lx986_0_s
.Lx986_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n423_call_α:            sub              rsp, 16
                        mov              r11, 331
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd988:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd988]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx987_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n421_statement_begin_β
.Lx987_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n424_assign_α
n423_call_β:            mov              r11, 331
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n421_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n424_assign_α:          mov              r11, 332
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # V
                        mov              qword ptr [r9 + 264], rdx;           jmp   n425_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n425_statement_end_α:   mov              r11, 333
                        mov              r10, 49
                        add              rsp, 32;                             jmp   n426_statement_begin_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n426_statement_begin_α: mov              r11, 334
                        mov              r10, 50;                             jmp   n427_lit_string_α
n426_statement_begin_β: mov              r11, 334;                            jmp   n431_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_string_α:      sub              rsp, 16
                        mov              r11, 335
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx994_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n428_call_α
.Lx994_0:               .quad            .Lx994_0_s
.Lx994_0_s:             .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n428_call_α:            sub              rsp, 16
                        mov              r11, 336
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd996:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd996]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx995_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n426_statement_begin_β
.Lx995_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n429_assign_α
n428_call_β:            mov              r11, 336
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n426_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n429_assign_α:          mov              r11, 337
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # I
                        mov              qword ptr [r9 + 280], rdx;           jmp   n430_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n430_statement_end_α:   mov              r11, 338
                        mov              r10, 50
                        add              rsp, 32;                             jmp   n431_statement_begin_α
#=======================================================================================================================
#         A = FENCE(V | I | '(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n431_statement_begin_α: mov              r11, 339
                        mov              r10, 51;                             jmp   n432_var_α
n431_statement_begin_β: mov              r11, 339;                            jmp   n441_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n432_var_α:             sub              rsp, 16
                        mov              r11, 340
                        mov              rax, qword ptr [r9 + 256]            # V
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n433_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n433_assign_α:          mov              r11, 341
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax            # PAT$2$V0
                        mov              qword ptr [r9 + 456], rdx;           jmp   n434_var_α
#-----------------------------------------------------------------------------------------------------------------------
n434_var_α:             sub              rsp, 16
                        mov              r11, 342
                        mov              rax, qword ptr [r9 + 272]            # I
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n435_assign_α
n434_var_β:             mov              r11, 342
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n431_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n435_assign_α:          mov              r11, 343
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax            # PAT$2$V1
                        mov              qword ptr [r9 + 472], rdx;           jmp   n436_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_string_α:      sub              rsp, 16
                        mov              r11, 344
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1006_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n437_lit_string_α
n436_lit_string_β:      mov              r11, 344
                        add              rsp, 16;                             jmp   n434_var_β
.Lx1006_0:              .quad            .Lx1006_0_s
.Lx1006_0_s:            .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:      sub              rsp, 16
                        mov              r11, 345
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1007_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n438_call_α
n437_lit_string_β:      mov              r11, 345
                        add              rsp, 16;                             jmp   n436_lit_string_β
.Lx1007_0:              .quad            .Lx1007_0_s
.Lx1007_0_s:            .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n438_call_α:            sub              rsp, 16
                        mov              r11, 346
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
.Lrkfnzd1009:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1009]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx1008_240
                        add              rsp, 16;                             jmp   n437_lit_string_β
.Lx1008_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n439_assign_α
n438_call_β:            mov              r11, 346
                        add              rsp, 16;                             jmp   n437_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n439_assign_α:          mov              r11, 347
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # A
                        mov              qword ptr [r9 + 296], rdx;           jmp   n440_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n440_statement_end_α:   mov              r11, 348
                        mov              r10, 51
                        add              rsp, 80;                             jmp   n441_statement_begin_α
#=======================================================================================================================
#         F = FENCE(A | ANY('+-') . *PSH() *F . *SGN())
#-----------------------------------------------------------------------------------------------------------------------
n441_statement_begin_α: mov              r11, 349
                        mov              r10, 52;                             jmp   n442_var_α
n441_statement_begin_β: mov              r11, 349;                            jmp   n449_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n442_var_α:             sub              rsp, 16
                        mov              r11, 350
                        mov              rax, qword ptr [r9 + 288]            # A
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n443_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n443_assign_α:          mov              r11, 351
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 488], rdx;           jmp   n444_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_string_α:      sub              rsp, 16
                        mov              r11, 352
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1017_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n445_lit_string_α
n444_lit_string_β:      mov              r11, 352
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n441_statement_begin_β
.Lx1017_0:              .quad            .Lx1017_0_s
.Lx1017_0_s:            .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_string_α:      sub              rsp, 16
                        mov              r11, 353
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1018_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n446_call_α
n445_lit_string_β:      mov              r11, 353
                        add              rsp, 16;                             jmp   n444_lit_string_β
.Lx1018_0:              .quad            .Lx1018_0_s
.Lx1018_0_s:            .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n446_call_α:            sub              rsp, 16
                        mov              r11, 354
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
.Lrkfnzd1020:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1020]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx1019_240
                        add              rsp, 16;                             jmp   n445_lit_string_β
.Lx1019_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n447_assign_α
n446_call_β:            mov              r11, 354
                        add              rsp, 16;                             jmp   n445_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n447_assign_α:          mov              r11, 355
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # F
                        mov              qword ptr [r9 + 312], rdx;           jmp   n448_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n448_statement_end_α:   mov              r11, 356
                        mov              r10, 52
                        add              rsp, 64;                             jmp   n449_statement_begin_α
#=======================================================================================================================
#         T = F ARBNO('*' F . *MUL() | '/' F . *DIV())
#-----------------------------------------------------------------------------------------------------------------------
n449_statement_begin_α: mov              r11, 357
                        mov              r10, 53;                             jmp   n450_var_α
n449_statement_begin_β: mov              r11, 357;                            jmp   n461_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n450_var_α:             sub              rsp, 16
                        mov              r11, 358
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n451_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n451_assign_α:          mov              r11, 359
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 504], rdx;           jmp   n452_var_α
#-----------------------------------------------------------------------------------------------------------------------
n452_var_α:             sub              rsp, 16
                        mov              r11, 360
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n453_assign_α
n452_var_β:             mov              r11, 360
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n449_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n453_assign_α:          mov              r11, 361
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 512], rax            # PAT$4$V1
                        mov              qword ptr [r9 + 520], rdx;           jmp   n454_var_α
#-----------------------------------------------------------------------------------------------------------------------
n454_var_α:             sub              rsp, 16
                        mov              r11, 362
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n455_assign_α
n454_var_β:             mov              r11, 362
                        add              rsp, 16;                             jmp   n452_var_β
#-----------------------------------------------------------------------------------------------------------------------
n455_assign_α:          mov              r11, 363
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 528], rax            # PAT$4$V2
                        mov              qword ptr [r9 + 536], rdx;           jmp   n456_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_string_α:      sub              rsp, 16
                        mov              r11, 364
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1032_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n457_lit_string_α
n456_lit_string_β:      mov              r11, 364
                        add              rsp, 16;                             jmp   n454_var_β
.Lx1032_0:              .quad            .Lx1032_0_s
.Lx1032_0_s:            .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n457_lit_string_α:      sub              rsp, 16
                        mov              r11, 365
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1033_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n458_call_α
n457_lit_string_β:      mov              r11, 365
                        add              rsp, 16;                             jmp   n456_lit_string_β
.Lx1033_0:              .quad            .Lx1033_0_s
.Lx1033_0_s:            .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n458_call_α:            sub              rsp, 16
                        mov              r11, 366
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
.Lrkfnzd1035:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1035]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx1034_240
                        add              rsp, 16;                             jmp   n457_lit_string_β
.Lx1034_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n459_assign_α
n458_call_β:            mov              r11, 366
                        add              rsp, 16;                             jmp   n457_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n459_assign_α:          mov              r11, 367
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # T
                        mov              qword ptr [r9 + 328], rdx;           jmp   n460_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n460_statement_end_α:   mov              r11, 368
                        mov              r10, 53
                        add              rsp, 96;                             jmp   n461_statement_begin_α
#=======================================================================================================================
#         X = T ARBNO('+' T . *ADD() | '-' T . *SUB())
#-----------------------------------------------------------------------------------------------------------------------
n461_statement_begin_α: mov              r11, 369
                        mov              r10, 54;                             jmp   n462_var_α
n461_statement_begin_β: mov              r11, 369;                            jmp   n473_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n462_var_α:             sub              rsp, 16
                        mov              r11, 370
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n463_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n463_assign_α:          mov              r11, 371
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax            # PAT$5$V0
                        mov              qword ptr [r9 + 552], rdx;           jmp   n464_var_α
#-----------------------------------------------------------------------------------------------------------------------
n464_var_α:             sub              rsp, 16
                        mov              r11, 372
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n465_assign_α
n464_var_β:             mov              r11, 372
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n461_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n465_assign_α:          mov              r11, 373
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # PAT$5$V1
                        mov              qword ptr [r9 + 568], rdx;           jmp   n466_var_α
#-----------------------------------------------------------------------------------------------------------------------
n466_var_α:             sub              rsp, 16
                        mov              r11, 374
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n467_assign_α
n466_var_β:             mov              r11, 374
                        add              rsp, 16;                             jmp   n464_var_β
#-----------------------------------------------------------------------------------------------------------------------
n467_assign_α:          mov              r11, 375
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 576], rax            # PAT$5$V2
                        mov              qword ptr [r9 + 584], rdx;           jmp   n468_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_string_α:      sub              rsp, 16
                        mov              r11, 376
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1047_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n469_lit_string_α
n468_lit_string_β:      mov              r11, 376
                        add              rsp, 16;                             jmp   n466_var_β
.Lx1047_0:              .quad            .Lx1047_0_s
.Lx1047_0_s:            .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n469_lit_string_α:      sub              rsp, 16
                        mov              r11, 377
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1048_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n470_call_α
n469_lit_string_β:      mov              r11, 377
                        add              rsp, 16;                             jmp   n468_lit_string_β
.Lx1048_0:              .quad            .Lx1048_0_s
.Lx1048_0_s:            .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n470_call_α:            sub              rsp, 16
                        mov              r11, 378
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
.Lrkfnzd1050:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1050]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx1049_240
                        add              rsp, 16;                             jmp   n469_lit_string_β
.Lx1049_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n471_assign_α
n470_call_β:            mov              r11, 378
                        add              rsp, 16;                             jmp   n469_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n471_assign_α:          mov              r11, 379
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # X
                        mov              qword ptr [r9 + 344], rdx;           jmp   n472_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n472_statement_end_α:   mov              r11, 380
                        mov              r10, 54
                        add              rsp, 96;                             jmp   n473_statement_begin_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n473_statement_begin_α: mov              r11, 381
                        mov              r10, 55;                             jmp   n474_lit_integer_α
n473_statement_begin_β: mov              r11, 381;                            jmp   n482_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_integer_α:     sub              rsp, 16
                        mov              r11, 382
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1056_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n475_call_α
.Lx1056_0:              .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n475_call_α:            sub              rsp, 16
                        mov              r11, 383
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
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1057_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n473_statement_begin_β
.Lx1057_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n476_assign_α
n475_call_β:            mov              r11, 383
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n473_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n476_assign_α:          mov              r11, 384
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax            # PAT$6$V0
                        mov              qword ptr [r9 + 600], rdx;           jmp   n477_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n477_lit_string_α:      sub              rsp, 16
                        mov              r11, 385
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1059_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n478_lit_string_α
n477_lit_string_β:      mov              r11, 385
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n473_statement_begin_β
.Lx1059_0:              .quad            .Lx1059_0_s
.Lx1059_0_s:            .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_string_α:      sub              rsp, 16
                        mov              r11, 386
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1060_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n479_call_α
n478_lit_string_β:      mov              r11, 386
                        add              rsp, 16;                             jmp   n477_lit_string_β
.Lx1060_0:              .quad            .Lx1060_0_s
.Lx1060_0_s:            .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n479_call_α:            sub              rsp, 16
                        mov              r11, 387
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
.Lrkfnzd1062:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1062]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx1061_240
                        add              rsp, 16;                             jmp   n478_lit_string_β
.Lx1061_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n480_assign_α
n479_call_β:            mov              r11, 387
                        add              rsp, 16;                             jmp   n478_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n480_assign_α:          mov              r11, 388
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # eol
                        mov              qword ptr [r9 + 360], rdx;           jmp   n481_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n481_statement_end_α:   mov              r11, 389
                        mov              r10, 55
                        add              rsp, 80;                             jmp   n482_statement_begin_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n482_statement_begin_α: mov              r11, 390
                        mov              r10, 56;                             jmp   n483_var_α
n482_statement_begin_β: mov              r11, 390;                            jmp   n494_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n483_var_α:             sub              rsp, 16
                        mov              r11, 391
                        mov              rax, qword ptr [r9 + 336]            # X
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n484_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n484_assign_α:          mov              r11, 392
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax            # PAT$7$V0
                        mov              qword ptr [r9 + 616], rdx;           jmp   n485_var_α
#-----------------------------------------------------------------------------------------------------------------------
n485_var_α:             sub              rsp, 16
                        mov              r11, 393
                        mov              rax, qword ptr [r9 + 352]            # eol
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n486_assign_α
n485_var_β:             mov              r11, 393
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n482_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n486_assign_α:          mov              r11, 394
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # PAT$7$V1
                        mov              qword ptr [r9 + 632], rdx;           jmp   n487_var_α
#-----------------------------------------------------------------------------------------------------------------------
n487_var_α:             sub              rsp, 16
                        mov              r11, 395
                        mov              rax, qword ptr [r9 + 384]            # epsilon
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n488_assign_α
n487_var_β:             mov              r11, 395
                        add              rsp, 16;                             jmp   n485_var_β
#-----------------------------------------------------------------------------------------------------------------------
n488_assign_α:          mov              r11, 396
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 640], rax            # PAT$7$V2
                        mov              qword ptr [r9 + 648], rdx;           jmp   n489_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_string_α:      sub              rsp, 16
                        mov              r11, 397
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1074_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n490_lit_string_α
n489_lit_string_β:      mov              r11, 397
                        add              rsp, 16;                             jmp   n487_var_β
.Lx1074_0:              .quad            .Lx1074_0_s
.Lx1074_0_s:            .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_string_α:      sub              rsp, 16
                        mov              r11, 398
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1075_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n491_call_α
n490_lit_string_β:      mov              r11, 398
                        add              rsp, 16;                             jmp   n489_lit_string_β
.Lx1075_0:              .quad            .Lx1075_0_s
.Lx1075_0_s:            .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n491_call_α:            sub              rsp, 16
                        mov              r11, 399
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
.Lrkfnzd1077:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1077]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx1076_240
                        add              rsp, 16;                             jmp   n490_lit_string_β
.Lx1076_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n492_assign_α
n491_call_β:            mov              r11, 399
                        add              rsp, 16;                             jmp   n490_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n492_assign_α:          mov              r11, 400
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # C
                        mov              qword ptr [r9 + 376], rdx;           jmp   n493_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n493_statement_end_α:   mov              r11, 401
                        mov              r10, 56
                        add              rsp, 96;                             jmp   n494_statement_begin_α
#=======================================================================================================================
#         &TRIM = 0
#-----------------------------------------------------------------------------------------------------------------------
n494_statement_begin_α: mov              r11, 402
                        mov              r10, 57;                             jmp   n495_lit_integer_α
n494_statement_begin_β: mov              r11, 402;                            jmp   n498_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_integer_α:     sub              rsp, 16
                        mov              r11, 403
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1083_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n496_keyword_assign_snobol4_α
.Lx1083_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n496_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 404
                        mov              rdi, qword ptr [rip + .Lx1084_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1084_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n494_statement_begin_β
.Lx1084_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n497_statement_end_α
.Lx1084_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n497_statement_end_α:   mov              r11, 405
                        mov              r10, 57
                        add              rsp, 32;                             jmp   n498_statement_begin_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n498_statement_begin_α: mov              r11, 406
                        mov              r10, 58;                             jmp   n499_call_α
n498_statement_begin_β: mov              r11, 406;                            jmp   n502_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n499_call_α:            sub              rsp, 16
                        mov              r11, 407
                        .section         .rodata
.Lrkfnzd1090:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1090]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1089_240
                        add              rsp, 16;                             jmp   n498_statement_begin_β
.Lx1089_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n500_assign_α
n499_call_β:            mov              r11, 407
                        add              rsp, 16;                             jmp   n498_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n500_assign_α:          mov              r11, 408
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # vars
                        mov              qword ptr [r9 + 216], rdx;           jmp   n501_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n501_statement_end_α:   mov              r11, 409
                        mov              r10, 58
                        add              rsp, 16;                             jmp   n502_statement_begin_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n502_statement_begin_α: mov              r11, 410
                        mov              r10, 59;                             jmp   n503_var_α
n502_statement_begin_β: mov              r11, 410;                            jmp   n509_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n503_var_α:             sub              rsp, 16
                        mov              r11, 411
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n504_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n504_lit_string_α:      sub              rsp, 16
                        mov              r11, 412
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1097_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n505_subscript_α
n504_lit_string_β:      mov              r11, 412
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n502_statement_begin_β
.Lx1097_0:              .quad            .Lx1097_0_s
.Lx1097_0_s:            .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n505_subscript_α:       sub              rsp, 16
                        mov              r11, 413
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1098_240
                        add              rsp, 16;                             jmp   n504_lit_string_β
.Lx1098_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n506_lit_integer_α
n505_subscript_β:       mov              r11, 413
                        add              rsp, 16;                             jmp   n504_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_integer_α:     sub              rsp, 16
                        mov              r11, 414
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1099_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n507_assign_var_α
n506_lit_integer_β:     mov              r11, 414
                        add              rsp, 16;                             jmp   n505_subscript_β
.Lx1099_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n507_assign_var_α:      sub              rsp, 16
                        mov              r11, 415
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1100_240
                        add              rsp, 16;                             jmp   n506_lit_integer_β
.Lx1100_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n508_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n508_statement_end_α:   mov              r11, 416
                        mov              r10, 59
                        add              rsp, 80;                             jmp   n509_statement_begin_α
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n509_statement_begin_α: mov              r11, 417
                        mov              r10, 60;                             jmp   n510_var_α
n509_statement_begin_β: mov              r11, 417;                            jmp   n516_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n510_var_α:             sub              rsp, 16
                        mov              r11, 418
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n511_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n511_lit_string_α:      sub              rsp, 16
                        mov              r11, 419
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1106_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n512_subscript_α
n511_lit_string_β:      mov              r11, 419
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n509_statement_begin_β
.Lx1106_0:              .quad            .Lx1106_0_s
.Lx1106_0_s:            .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n512_subscript_α:       sub              rsp, 16
                        mov              r11, 420
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1107_240
                        add              rsp, 16;                             jmp   n511_lit_string_β
.Lx1107_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n513_lit_integer_α
n512_subscript_β:       mov              r11, 420
                        add              rsp, 16;                             jmp   n511_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n513_lit_integer_α:     sub              rsp, 16
                        mov              r11, 421
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1108_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n514_assign_var_α
n513_lit_integer_β:     mov              r11, 421
                        add              rsp, 16;                             jmp   n512_subscript_β
.Lx1108_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n514_assign_var_α:      sub              rsp, 16
                        mov              r11, 422
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1109_240
                        add              rsp, 16;                             jmp   n513_lit_integer_β
.Lx1109_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n515_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n515_statement_end_α:   mov              r11, 423
                        mov              r10, 60
                        add              rsp, 80;                             jmp   n516_statement_begin_α
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n516_statement_begin_α: mov              r11, 424
                        mov              r10, 61;                             jmp   n517_var_α
n516_statement_begin_β: mov              r11, 424;                            jmp   n523_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n517_var_α:             sub              rsp, 16
                        mov              r11, 425
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n518_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n518_lit_string_α:      sub              rsp, 16
                        mov              r11, 426
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1115_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n519_subscript_α
n518_lit_string_β:      mov              r11, 426
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n516_statement_begin_β
.Lx1115_0:              .quad            .Lx1115_0_s
.Lx1115_0_s:            .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n519_subscript_α:       sub              rsp, 16
                        mov              r11, 427
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1116_240
                        add              rsp, 16;                             jmp   n518_lit_string_β
.Lx1116_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n520_lit_integer_α
n519_subscript_β:       mov              r11, 427
                        add              rsp, 16;                             jmp   n518_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n520_lit_integer_α:     sub              rsp, 16
                        mov              r11, 428
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1117_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n521_assign_var_α
n520_lit_integer_β:     mov              r11, 428
                        add              rsp, 16;                             jmp   n519_subscript_β
.Lx1117_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n521_assign_var_α:      sub              rsp, 16
                        mov              r11, 429
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1118_240
                        add              rsp, 16;                             jmp   n520_lit_integer_β
.Lx1118_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n522_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n522_statement_end_α:   mov              r11, 430
                        mov              r10, 61
                        add              rsp, 80;                             jmp   n523_statement_begin_α
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
n523_statement_begin_α: mov              r11, 431
                        mov              r10, 62;                             jmp   n524_lit_string_α
n523_statement_begin_β: mov              r11, 431;                            jmp   n530_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n524_lit_string_α:      sub              rsp, 16
                        mov              r11, 432
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1123_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n525_call_α
.Lx1123_0:              .quad            .Lx1123_0_s
.Lx1123_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n525_call_α:            sub              rsp, 16
                        mov              r11, 433
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1125:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1125]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1124_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n523_statement_begin_β
.Lx1124_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n526_lit_integer_α
n525_call_β:            mov              r11, 433
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n523_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n526_lit_integer_α:     sub              rsp, 16
                        mov              r11, 434
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1126_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n527_lit_string_α
n526_lit_integer_β:     mov              r11, 434
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n523_statement_begin_β
.Lx1126_0:              .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n527_lit_string_α:      sub              rsp, 16
                        mov              r11, 435
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx1127_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n528_call_α
n527_lit_string_β:      mov              r11, 435
                        add              rsp, 16;                             jmp   n526_lit_integer_β
.Lx1127_0:              .quad            .Lx1127_0_s
.Lx1127_0_s:            .string          "[-f0 -r4194304]"
#-----------------------------------------------------------------------------------------------------------------------
n528_call_α:            sub              rsp, 16
                        mov              r11, 436
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
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lx1128_240
                        add              rsp, 16;                             jmp   n527_lit_string_β
.Lx1128_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n529_statement_end_α
n528_call_β:            mov              r11, 436
                        add              rsp, 16;                             jmp   n527_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n529_statement_end_α:   mov              r11, 437
                        mov              r10, 62
                        add              rsp, 80;                             jmp   n530_statement_begin_α
#=======================================================================================================================
#         src = INPUT
#-----------------------------------------------------------------------------------------------------------------------
n530_statement_begin_α: mov              r11, 438
                        mov              r10, 63;                             jmp   n531_var_α
n530_statement_begin_β: mov              r11, 438;                            jmp   n534_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n531_var_α:             sub              rsp, 16
                        mov              r11, 439
                        mov              rdi, qword ptr [rip + .Lx1133_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1133_240
                        add              rsp, 16;                             jmp   n530_statement_begin_β
.Lx1133_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n532_assign_α
.Lx1133_0:              .quad            .Lx1133_0_s
.Lx1133_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n532_assign_α:          mov              r11, 440
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # src
                        mov              qword ptr [r9 + 408], rdx;           jmp   n533_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n533_statement_end_α:   mov              r11, 441
                        mov              r10, 63
                        add              rsp, 16;                             jmp   n534_statement_begin_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n534_statement_begin_α: mov              r11, 442
                        mov              r10, 64;                             jmp   n535_call_α
n534_statement_begin_β: mov              r11, 442;                            jmp   n538_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n535_call_α:            sub              rsp, 16
                        mov              r11, 443
                        .section         .rodata
.Lrkfnzd1140:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1140]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1139_240
                        add              rsp, 16;                             jmp   n534_statement_begin_β
.Lx1139_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n536_assign_α
n535_call_β:            mov              r11, 443
                        add              rsp, 16;                             jmp   n534_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n536_assign_α:          mov              r11, 444
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax            # t0
                        mov              qword ptr [r9 + 424], rdx;           jmp   n537_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n537_statement_end_α:   mov              r11, 445
                        mov              r10, 64
                        add              rsp, 16;                             jmp   n538_statement_begin_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n538_statement_begin_α: mov              r11, 446
                        mov              r10, 65;                             jmp   n539_var_α
n538_statement_begin_β: mov              r11, 446;                            jmp   n560_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n539_var_α:             sub              rsp, 16
                        mov              r11, 447
                        mov              rax, qword ptr [r9 + 400]            # src
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n540_var_α
#-----------------------------------------------------------------------------------------------------------------------
n540_var_α:             sub              rsp, 16
                        mov              r11, 448
                        mov              rax, qword ptr [r9 + 368]            # C
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n541_assign_α
n540_var_β:             mov              r11, 448
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n560_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n541_assign_α:          mov              r11, 449
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1148_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n542_match_begin_α
n541_assign_β:          mov              r11, 449;                            jmp   n540_var_β
.Lx1148_0:              .quad            .Lx1148_0_s
.Lx1148_0_s:            .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n542_match_begin_α:     mov              r11, 450
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
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx1150_0:              mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx1150_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n543_match_defer_α
n542_match_begin_β:     mov              r11, 450
.Lx1150_13:             lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx1150_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1150_1
                                                                              jmp   .Lx1150_0
.Lx1150_1:
n542_match_begin_af:    mov              r11, 450
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        pop              rbp;                                 jmp   n541_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n543_match_defer_α:     mov              r11, 451
                        lea              rdi, [rip + .S22]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx1151_14
                        mov              rax, qword ptr [rdx + 0]
.Lx1151_14:             test             rax, rax;                            jz    .Lx1151_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1151_5]
                        push             rcx
                        lea              rcx, [rip + .Lx1151_4]
                        push             rcx;                                 jmp   rax
.Lx1151_4:                                                                    jmp   n544_match_end_α
.Lx1151_5:                                                                    jmp   n542_match_begin_β
.Lx1151_0:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S22]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n542_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1151_6]
                        push             rcx
                        push             rax;                                 jmp   n544_match_end_α
.Lx1151_6:              add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n542_match_begin_β
n543_match_defer_β:     mov              r11, 451
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx1151_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx1151_12
                                                                              jmp   rax
.Lx1151_12:                                                                   jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n544_match_end_α:       mov              r11, 452
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
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx1153_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n542_match_begin_af
.Lx1153_13:             add              rsp, 16
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
n545_statement_end_α:   mov              r11, 453
                        mov              r10, 65
                        add              rsp, 32;                             jmp   n546_statement_begin_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n546_statement_begin_α: mov              r11, 454
                        mov              r10, 66;                             jmp   n547_call_α
n546_statement_begin_β: mov              r11, 454;                            jmp   n550_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n547_call_α:            sub              rsp, 16
                        mov              r11, 455
                        .section         .rodata
.Lrkfnzd1159:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1159]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1158_240
                        add              rsp, 16;                             jmp   n546_statement_begin_β
.Lx1158_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n548_assign_α
n547_call_β:            mov              r11, 455
                        add              rsp, 16;                             jmp   n546_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n548_assign_α:          mov              r11, 456
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # t1
                        mov              qword ptr [r9 + 440], rdx;           jmp   n549_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n549_statement_end_α:   mov              r11, 457
                        mov              r10, 66
                        add              rsp, 16;                             jmp   n550_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0) / 1000000        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n550_statement_begin_α: mov              r11, 458
                        mov              r10, 67;                             jmp   n551_lit_string_α
n550_statement_begin_β: mov              r11, 458;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n551_lit_string_α:      sub              rsp, 16
                        mov              r11, 459
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1165_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n552_var_α
.Lx1165_0:              .quad            .Lx1165_0_s
.Lx1165_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n552_var_α:             sub              rsp, 16
                        mov              r11, 460
                        mov              rax, qword ptr [r9 + 432]            # t1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n553_var_α
n552_var_β:             mov              r11, 460
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n550_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n553_var_α:             sub              rsp, 16
                        mov              r11, 461
                        mov              rax, qword ptr [r9 + 416]            # t0
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n554_binop_α
n553_var_β:             mov              r11, 461
                        add              rsp, 16;                             jmp   n552_var_β
#-----------------------------------------------------------------------------------------------------------------------
n554_binop_α:           sub              rsp, 16
                        mov              r11, 462
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1168_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1168_7
.Lx1168_2:              and              edx, 1;                              jz    .Lx1168_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx1168_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1168_4
.Lx1168_3:              movq             xmm0, rsi
.Lx1168_4:              cmp              cl, 5;                               je    .Lx1168_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1168_6
.Lx1168_5:              movq             xmm1, rdi
.Lx1168_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1168_7:                                                                    jmp   n555_lit_integer_α
.Lx1168_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1168_240
                        add              rsp, 16;                             jmp   n553_var_β
.Lx1168_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n555_lit_integer_α
n554_binop_β:           mov              r11, 462
                        add              rsp, 16;                             jmp   n553_var_β
#-----------------------------------------------------------------------------------------------------------------------
n555_lit_integer_α:     sub              rsp, 16
                        mov              r11, 463
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1169_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n556_binop_α
n555_lit_integer_β:     mov              r11, 463
                        add              rsp, 16;                             jmp   n554_binop_β
.Lx1169_0:              .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n556_binop_α:           sub              rsp, 16
                        mov              r11, 464
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx1170_240
                        add              rsp, 16;                             jmp   n555_lit_integer_β
.Lx1170_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n557_binop_α
n556_binop_β:           mov              r11, 464
                        add              rsp, 16;                             jmp   n555_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n557_binop_α:           sub              rsp, 16
                        mov              r11, 465
                        mov              rdi, qword ptr [rsp + 96]            # lit_string
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n558_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n558_assign_α:          mov              r11, 466
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1172_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n559_statement_end_α
.Lx1172_0:              .quad            .Lx1172_0_s
.Lx1172_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n559_statement_end_α:   mov              r11, 467
                        mov              r10, 67
                        add              rsp, 112;                            jmp   main_γ
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n560_statement_begin_α: mov              r11, 468
                        mov              r10, 68;                             jmp   n561_call_α
n560_statement_begin_β: mov              r11, 468;                            jmp   n564_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n561_call_α:            sub              rsp, 16
                        mov              r11, 469
                        .section         .rodata
.Lrkfnzd1178:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1178]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1177_240
                        add              rsp, 16;                             jmp   n560_statement_begin_β
.Lx1177_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n562_assign_α
n561_call_β:            mov              r11, 469
                        add              rsp, 16;                             jmp   n560_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n562_assign_α:          mov              r11, 470
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # t1
                        mov              qword ptr [r9 + 440], rdx;           jmp   n563_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n563_statement_end_α:   mov              r11, 471
                        mov              r10, 68
                        add              rsp, 16;                             jmp   n564_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n564_statement_begin_α: mov              r11, 472
                        mov              r10, 69;                             jmp   n565_lit_string_α
n564_statement_begin_β: mov              r11, 472;                            jmp   n568_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n565_lit_string_α:      sub              rsp, 16
                        mov              r11, 473
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1184_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n566_assign_α
.Lx1184_0:              .quad            .Lx1184_0_s
.Lx1184_0_s:            .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n566_assign_α:          mov              r11, 474
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1185_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n567_statement_end_α
.Lx1185_0:              .quad            .Lx1185_0_s
.Lx1185_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n567_statement_end_α:   mov              r11, 475
                        mov              r10, 69
                        add              rsp, 16;                             jmp   n568_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0) / 1000000
#-----------------------------------------------------------------------------------------------------------------------
n568_statement_begin_α: mov              r11, 476
                        mov              r10, 70;                             jmp   n569_lit_string_α
n568_statement_begin_β: mov              r11, 476;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n569_lit_string_α:      sub              rsp, 16
                        mov              r11, 477
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1190_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n570_var_α
.Lx1190_0:              .quad            .Lx1190_0_s
.Lx1190_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n570_var_α:             sub              rsp, 16
                        mov              r11, 478
                        mov              rax, qword ptr [r9 + 432]            # t1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n571_var_α
n570_var_β:             mov              r11, 478
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n568_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n571_var_α:             sub              rsp, 16
                        mov              r11, 479
                        mov              rax, qword ptr [r9 + 416]            # t0
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n572_binop_α
n571_var_β:             mov              r11, 479
                        add              rsp, 16;                             jmp   n570_var_β
#-----------------------------------------------------------------------------------------------------------------------
n572_binop_α:           sub              rsp, 16
                        mov              r11, 480
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1193_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1193_7
.Lx1193_2:              and              edx, 1;                              jz    .Lx1193_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx1193_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1193_4
.Lx1193_3:              movq             xmm0, rsi
.Lx1193_4:              cmp              cl, 5;                               je    .Lx1193_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1193_6
.Lx1193_5:              movq             xmm1, rdi
.Lx1193_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1193_7:                                                                    jmp   n573_lit_integer_α
.Lx1193_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1193_240
                        add              rsp, 16;                             jmp   n571_var_β
.Lx1193_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n573_lit_integer_α
n572_binop_β:           mov              r11, 480
                        add              rsp, 16;                             jmp   n571_var_β
#-----------------------------------------------------------------------------------------------------------------------
n573_lit_integer_α:     sub              rsp, 16
                        mov              r11, 481
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1194_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n574_binop_α
n573_lit_integer_β:     mov              r11, 481
                        add              rsp, 16;                             jmp   n572_binop_β
.Lx1194_0:              .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n574_binop_α:           sub              rsp, 16
                        mov              r11, 482
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx1195_240
                        add              rsp, 16;                             jmp   n573_lit_integer_β
.Lx1195_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n575_binop_α
n574_binop_β:           mov              r11, 482
                        add              rsp, 16;                             jmp   n573_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n575_binop_α:           sub              rsp, 16
                        mov              r11, 483
                        mov              rdi, qword ptr [rsp + 96]            # lit_string
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n576_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n576_assign_α:          mov              r11, 484
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1197_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n577_statement_end_α
.Lx1197_0:              .quad            .Lx1197_0_s
.Lx1197_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n577_statement_end_α:   mov              r11, 485
                        mov              r10, 70
                        add              rsp, 112;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 486
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              r11, 487
                        add              rsp, 8
                        pop              rcx;                                 jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              r11, 488
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
