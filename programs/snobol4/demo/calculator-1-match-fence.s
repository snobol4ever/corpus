                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
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
n0_match_span_α:        sub              rsp, 16
                        mov              r11, 1
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx2_0:                 cmp              ecx, r15d;                           jge   .Lx2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx2_1
                        add              ecx, 1;                              jmp   .Lx2_0
.Lx2_1:                 cmp              ecx, r14d;                           jg    .Lx2_240
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lx2_240:               mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   PAT$0_γ
n0_match_span_β:        mov              r11, 1
                        mov              r14d, dword ptr [rbp + -60]
                        add              rsp, 16;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n0_match_span_β
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
                        sub              rsp, 40
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n3_match_any_α:         mov              r11, 2
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   PAT$1_ω
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C1]
                        cmp              byte ptr [rdi+rsi], 0;               je    PAT$1_ω
                        add              r14d, 1;                             jmp   PAT$1_γ
n3_match_any_β:         mov              r11, 2
                        sub              r14d, 1;                             jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   n3_match_any_β
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
n6_match_alternate_α:   mov              r11, 3
                        mov              dword ptr [rbp + -104], r14d
                        lea              rax, [rip + .Lx14_21]
                        mov              qword ptr [rbp + -88], rax;          jmp   n12_match_defer_α
.Lx14_21:               lea              rax, [rip + .Lx14_22]
                        mov              qword ptr [rbp + -88], rax;          jmp   n11_match_defer_α
.Lx14_22:               lea              rax, [rip + .Lx14_19]
                        mov              qword ptr [rbp + -88], rax;          jmp   n8_match_lit_α
n6_match_alternate_s0:  mov              r11, 3
                        lea              rax, [rip + .Lx14_40]
                        mov              qword ptr [rbp + -96], rax;          jmp   n6_match_alternate_as
n6_match_alternate_s1:  mov              r11, 3
                        lea              rax, [rip + .Lx14_41]
                        mov              qword ptr [rbp + -96], rax;          jmp   n6_match_alternate_as
n6_match_alternate_s2:  mov              r11, 3
                        lea              rax, [rip + .Lx14_42]
                        mov              qword ptr [rbp + -96], rax;          jmp   n6_match_alternate_as
.Lx14_40:                                                                     jmp   n12_match_defer_β
.Lx14_41:                                                                     jmp   n11_match_defer_β
.Lx14_42:                                                                     jmp   n7_goto_β
n6_match_alternate_as:  mov              r11, 3;                              jmp   PAT$2_γ
n6_match_alternate_β:   mov              r11, 3
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
n6_match_alternate_af:  mov              r11, 3
                        mov              r14d, dword ptr [rbp + -104]
                        mov              rax, qword ptr [rbp + -88];          jmp   rax
.Lx14_19:                                                                     jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_goto_α:              mov              r11, 4;                              jmp   n6_match_alternate_af
n7_goto_β:              mov              r11, 4;                              jmp   n6_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n8_match_lit_α:         mov              r11, 5
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n6_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n6_match_alternate_af
                        add              r14d, 1;                             jmp   n9_match_defer_α
n8_match_lit_β:         mov              r11, 5
                        sub              r14d, 1;                             jmp   n6_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n9_match_defer_α:       mov              r11, 6
                        push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 80]             # X
                        mov              rdx, qword ptr [r9 + 88]
                        cmp              al, 8;                               jne   .Lx18_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx18_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 88];            jmp   .Lx18_10
.Lx18_9:                cmp              al, 88;                              jne   .Lx18_21
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
                        test             rax, rax;                            je    .Lx18_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx18_10
.Lx18_21:               xor              eax, eax
.Lx18_10:               test             rax, rax;                            jz    .Lx18_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx18_5]
                        push             rcx
                        lea              rcx, [rip + .Lx18_4]
                        push             rcx;                                 jmp   rax
.Lx18_4:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n10_match_lit_α
.Lx18_5:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n8_match_lit_β
.Lx18_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
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
                        test             eax, eax;                            js    n8_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx18_6]
                        push             rcx
                        push             rax;                                 jmp   n10_match_lit_α
.Lx18_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n8_match_lit_β
n9_match_defer_β:       mov              r11, 6
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n8_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_lit_α:        mov              r11, 7
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n6_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n6_match_alternate_af
                        add              r14d, 1;                             jmp   n6_match_alternate_s2
n10_match_lit_β:        mov              r11, 7
                        sub              r14d, 1;                             jmp   n6_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n11_match_defer_α:      mov              r11, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S1]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx21_16
                        mov              rax, qword ptr [rdx + 0]
.Lx21_16:               test             rax, rax;                            jz    .Lx21_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx21_5]
                        push             rcx
                        lea              rcx, [rip + .Lx21_4]
                        push             rcx;                                 jmp   rax
.Lx21_4:                                                                      jmp   n6_match_alternate_s1
.Lx21_5:                                                                      jmp   n6_match_alternate_af
.Lx21_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S1]
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
                        test             eax, eax;                            js    n6_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx21_6]
                        push             rcx
                        push             rax;                                 jmp   n6_match_alternate_s1
.Lx21_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n6_match_alternate_af
n11_match_defer_β:      mov              r11, 8
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx21_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx21_12
                                                                              jmp   rax
.Lx21_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n12_match_defer_α:      mov              r11, 9
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
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
                        test             rax, rax;                            je    .Lx22_16
                        mov              rax, qword ptr [rdx + 0]
.Lx22_16:               test             rax, rax;                            jz    .Lx22_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx22_5]
                        push             rcx
                        lea              rcx, [rip + .Lx22_4]
                        push             rcx;                                 jmp   rax
.Lx22_4:                                                                      jmp   n6_match_alternate_s0
.Lx22_5:                                                                      jmp   n6_match_alternate_af
.Lx22_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
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
                        test             eax, eax;                            js    n6_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx22_6]
                        push             rcx
                        push             rax;                                 jmp   n6_match_alternate_s0
.Lx22_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n6_match_alternate_af
n12_match_defer_β:      mov              r11, 9
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx22_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx22_12
                                                                              jmp   rax
.Lx22_12:                                                                     jmp   qword ptr [rsp]
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
                        sub              rsp, 88
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n23_match_alternate_α:  mov              r11, 10
                        mov              dword ptr [rbp + -88], r14d
                        lea              rax, [rip + .Lx32_21]
                        mov              qword ptr [rbp + -72], rax;          jmp   n29_match_lit_α
.Lx32_21:               lea              rax, [rip + .Lx32_22]
                        mov              qword ptr [rbp + -72], rax;          jmp   n26_match_lit_α
.Lx32_22:               lea              rax, [rip + .Lx32_19]
                        mov              qword ptr [rbp + -72], rax;          jmp   n24_match_defer_α
n23_match_alternate_s0: mov              r11, 10
                        lea              rax, [rip + .Lx32_40]
                        mov              qword ptr [rbp + -80], rax;          jmp   n23_match_alternate_as
n23_match_alternate_s1: mov              r11, 10
                        lea              rax, [rip + .Lx32_41]
                        mov              qword ptr [rbp + -80], rax;          jmp   n23_match_alternate_as
n23_match_alternate_s2: mov              r11, 10
                        lea              rax, [rip + .Lx32_42]
                        mov              qword ptr [rbp + -80], rax;          jmp   n23_match_alternate_as
.Lx32_40:                                                                     jmp   n28_goto_β
.Lx32_41:                                                                     jmp   n25_goto_β
.Lx32_42:                                                                     jmp   n24_match_defer_β
n23_match_alternate_as: mov              r11, 10;                             jmp   PAT$3_γ
n23_match_alternate_β:  mov              r11, 10
                        mov              rax, qword ptr [rbp + -80];          jmp   rax
n23_match_alternate_af: mov              r11, 10
                        mov              r14d, dword ptr [rbp + -88]
                        mov              rax, qword ptr [rbp + -72];          jmp   rax
.Lx32_19:                                                                     jmp   PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n24_match_defer_α:      mov              r11, 11
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
                        test             rax, rax;                            je    .Lx33_16
                        mov              rax, qword ptr [rdx + 0]
.Lx33_16:               test             rax, rax;                            jz    .Lx33_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx33_5]
                        push             rcx
                        lea              rcx, [rip + .Lx33_4]
                        push             rcx;                                 jmp   rax
.Lx33_4:                                                                      jmp   n23_match_alternate_s2
.Lx33_5:                                                                      jmp   n23_match_alternate_af
.Lx33_0:                push             r14
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
                        test             eax, eax;                            js    n23_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx33_6]
                        push             rcx
                        push             rax;                                 jmp   n23_match_alternate_s2
.Lx33_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n23_match_alternate_af
n24_match_defer_β:      mov              r11, 11
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx33_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx33_12
                                                                              jmp   rax
.Lx33_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n25_goto_α:             mov              r11, 12;                             jmp   n23_match_alternate_af
n25_goto_β:             mov              r11, 12;                             jmp   n23_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n26_match_lit_α:        mov              r11, 13
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n23_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n23_match_alternate_af
                        add              r14d, 1;                             jmp   n27_match_defer_α
n26_match_lit_β:        mov              r11, 13
                        sub              r14d, 1;                             jmp   n23_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n27_match_defer_α:      mov              r11, 14
                        push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 48]             # F
                        mov              rdx, qword ptr [r9 + 56]
                        cmp              al, 8;                               jne   .Lx37_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx37_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 56];            jmp   .Lx37_10
.Lx37_9:                cmp              al, 88;                              jne   .Lx37_21
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
                        test             rax, rax;                            je    .Lx37_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx37_10
.Lx37_21:               xor              eax, eax
.Lx37_10:               test             rax, rax;                            jz    .Lx37_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx37_5]
                        push             rcx
                        lea              rcx, [rip + .Lx37_4]
                        push             rcx;                                 jmp   rax
.Lx37_4:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n23_match_alternate_s1
.Lx37_5:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n26_match_lit_β
.Lx37_0:                push             r14
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
                        test             eax, eax;                            js    n26_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx37_6]
                        push             rcx
                        push             rax;                                 jmp   n23_match_alternate_s1
.Lx37_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n26_match_lit_β
n27_match_defer_β:      mov              r11, 14
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n26_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n28_goto_α:             mov              r11, 15;                             jmp   n23_match_alternate_af
n28_goto_β:             mov              r11, 15;                             jmp   n23_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n29_match_lit_α:        mov              r11, 16
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n23_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   n23_match_alternate_af
                        add              r14d, 1;                             jmp   n30_match_defer_α
n29_match_lit_β:        mov              r11, 16
                        sub              r14d, 1;                             jmp   n23_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n30_match_defer_α:      mov              r11, 17
                        push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 48]             # F
                        mov              rdx, qword ptr [r9 + 56]
                        cmp              al, 8;                               jne   .Lx41_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx41_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 56];            jmp   .Lx41_10
.Lx41_9:                cmp              al, 88;                              jne   .Lx41_21
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
                        test             rax, rax;                            je    .Lx41_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx41_10
.Lx41_21:               xor              eax, eax
.Lx41_10:               test             rax, rax;                            jz    .Lx41_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx41_5]
                        push             rcx
                        lea              rcx, [rip + .Lx41_4]
                        push             rcx;                                 jmp   rax
.Lx41_4:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n23_match_alternate_s0
.Lx41_5:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n29_match_lit_β
.Lx41_0:                push             r14
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
                        test             eax, eax;                            js    n29_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx41_6]
                        push             rcx
                        push             rax;                                 jmp   n23_match_alternate_s0
.Lx41_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n29_match_lit_β
n30_match_defer_β:      mov              r11, 17
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n29_match_lit_β
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
                        sub              rsp, 120
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n42_match_alternate_α:  mov              r11, 18
                        mov              dword ptr [rbp + -120], r14d
                        lea              rax, [rip + .Lx53_21]
                        mov              qword ptr [rbp + -104], rax;         jmp   n49_match_defer_α
.Lx53_21:               lea              rax, [rip + .Lx53_22]
                        mov              qword ptr [rbp + -104], rax;         jmp   n45_match_defer_α
.Lx53_22:               lea              rax, [rip + .Lx53_19]
                        mov              qword ptr [rbp + -104], rax;         jmp   n43_match_defer_α
n42_match_alternate_s0: mov              r11, 18
                        lea              rax, [rip + .Lx53_40]
                        mov              qword ptr [rbp + -112], rax;         jmp   n42_match_alternate_as
n42_match_alternate_s1: mov              r11, 18
                        lea              rax, [rip + .Lx53_41]
                        mov              qword ptr [rbp + -112], rax;         jmp   n42_match_alternate_as
n42_match_alternate_s2: mov              r11, 18
                        lea              rax, [rip + .Lx53_42]
                        mov              qword ptr [rbp + -112], rax;         jmp   n42_match_alternate_as
.Lx53_40:                                                                     jmp   n48_goto_β
.Lx53_41:                                                                     jmp   n44_goto_β
.Lx53_42:                                                                     jmp   n43_match_defer_β
n42_match_alternate_as: mov              r11, 18;                             jmp   PAT$4_γ
n42_match_alternate_β:  mov              r11, 18
                        mov              rax, qword ptr [rbp + -112];         jmp   rax
n42_match_alternate_af: mov              r11, 18
                        mov              r14d, dword ptr [rbp + -120]
                        mov              rax, qword ptr [rbp + -104];         jmp   rax
.Lx53_19:                                                                     jmp   PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n43_match_defer_α:      mov              r11, 19
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S5]
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
.Lx54_4:                                                                      jmp   n42_match_alternate_s2
.Lx54_5:                                                                      jmp   n42_match_alternate_af
.Lx54_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S5]
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
                        test             eax, eax;                            js    n42_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx54_6]
                        push             rcx
                        push             rax;                                 jmp   n42_match_alternate_s2
.Lx54_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n42_match_alternate_af
n43_match_defer_β:      mov              r11, 19
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx54_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx54_12
                                                                              jmp   rax
.Lx54_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n44_goto_α:             mov              r11, 20;                             jmp   n42_match_alternate_af
n44_goto_β:             mov              r11, 20;                             jmp   n42_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n45_match_defer_α:      mov              r11, 21
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
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
                        test             rax, rax;                            je    .Lx56_16
                        mov              rax, qword ptr [rdx + 0]
.Lx56_16:               test             rax, rax;                            jz    .Lx56_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx56_5]
                        push             rcx
                        lea              rcx, [rip + .Lx56_4]
                        push             rcx;                                 jmp   rax
.Lx56_4:                                                                      jmp   n46_match_lit_α
.Lx56_5:                                                                      jmp   n42_match_alternate_af
.Lx56_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
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
                        test             eax, eax;                            js    n42_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx56_6]
                        push             rcx
                        push             rax;                                 jmp   n46_match_lit_α
.Lx56_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n42_match_alternate_af
n45_match_defer_β:      mov              r11, 21
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx56_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx56_12
                                                                              jmp   rax
.Lx56_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n46_match_lit_α:        mov              r11, 22
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n45_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47;                             jne   n45_match_defer_β
                        add              r14d, 1;                             jmp   n47_match_defer_α
n46_match_lit_β:        mov              r11, 22
                        sub              r14d, 1;                             jmp   n45_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n47_match_defer_α:      mov              r11, 23
                        push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 64]             # T
                        mov              rdx, qword ptr [r9 + 72]
                        cmp              al, 8;                               jne   .Lx59_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx59_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 72];            jmp   .Lx59_10
.Lx59_9:                cmp              al, 88;                              jne   .Lx59_21
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
                        test             rax, rax;                            je    .Lx59_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx59_10
.Lx59_21:               xor              eax, eax
.Lx59_10:               test             rax, rax;                            jz    .Lx59_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx59_5]
                        push             rcx
                        lea              rcx, [rip + .Lx59_4]
                        push             rcx;                                 jmp   rax
.Lx59_4:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n42_match_alternate_s1
.Lx59_5:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n46_match_lit_β
.Lx59_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]
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
                        test             eax, eax;                            js    n46_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx59_6]
                        push             rcx
                        push             rax;                                 jmp   n42_match_alternate_s1
.Lx59_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n46_match_lit_β
n47_match_defer_β:      mov              r11, 23
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n46_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n48_goto_α:             mov              r11, 24;                             jmp   n42_match_alternate_af
n48_goto_β:             mov              r11, 24;                             jmp   n42_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n49_match_defer_α:      mov              r11, 25
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
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
                        test             rax, rax;                            je    .Lx61_16
                        mov              rax, qword ptr [rdx + 0]
.Lx61_16:               test             rax, rax;                            jz    .Lx61_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx61_5]
                        push             rcx
                        lea              rcx, [rip + .Lx61_4]
                        push             rcx;                                 jmp   rax
.Lx61_4:                                                                      jmp   n50_match_lit_α
.Lx61_5:                                                                      jmp   n42_match_alternate_af
.Lx61_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
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
                        test             eax, eax;                            js    n42_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx61_6]
                        push             rcx
                        push             rax;                                 jmp   n50_match_lit_α
.Lx61_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n42_match_alternate_af
n49_match_defer_β:      mov              r11, 25
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx61_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx61_12
                                                                              jmp   rax
.Lx61_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n50_match_lit_α:        mov              r11, 26
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n49_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42;                             jne   n49_match_defer_β
                        add              r14d, 1;                             jmp   n51_match_defer_α
n50_match_lit_β:        mov              r11, 26
                        sub              r14d, 1;                             jmp   n49_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n51_match_defer_α:      mov              r11, 27
                        push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 64]             # T
                        mov              rdx, qword ptr [r9 + 72]
                        cmp              al, 8;                               jne   .Lx64_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx64_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 72];            jmp   .Lx64_10
.Lx64_9:                cmp              al, 88;                              jne   .Lx64_21
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
                        test             rax, rax;                            je    .Lx64_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx64_10
.Lx64_21:               xor              eax, eax
.Lx64_10:               test             rax, rax;                            jz    .Lx64_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx64_5]
                        push             rcx
                        lea              rcx, [rip + .Lx64_4]
                        push             rcx;                                 jmp   rax
.Lx64_4:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n42_match_alternate_s0
.Lx64_5:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n50_match_lit_β
.Lx64_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]
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
                        test             eax, eax;                            js    n50_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx64_6]
                        push             rcx
                        push             rax;                                 jmp   n42_match_alternate_s0
.Lx64_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n50_match_lit_β
n51_match_defer_β:      mov              r11, 27
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n50_match_lit_β
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
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$5:
PAT$5_α_body:
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
n65_match_alternate_α:  mov              r11, 28
                        mov              dword ptr [rbp + -120], r14d
                        lea              rax, [rip + .Lx76_21]
                        mov              qword ptr [rbp + -104], rax;         jmp   n72_match_defer_α
.Lx76_21:               lea              rax, [rip + .Lx76_22]
                        mov              qword ptr [rbp + -104], rax;         jmp   n68_match_defer_α
.Lx76_22:               lea              rax, [rip + .Lx76_19]
                        mov              qword ptr [rbp + -104], rax;         jmp   n66_match_defer_α
n65_match_alternate_s0: mov              r11, 28
                        lea              rax, [rip + .Lx76_40]
                        mov              qword ptr [rbp + -112], rax;         jmp   n65_match_alternate_as
n65_match_alternate_s1: mov              r11, 28
                        lea              rax, [rip + .Lx76_41]
                        mov              qword ptr [rbp + -112], rax;         jmp   n65_match_alternate_as
n65_match_alternate_s2: mov              r11, 28
                        lea              rax, [rip + .Lx76_42]
                        mov              qword ptr [rbp + -112], rax;         jmp   n65_match_alternate_as
.Lx76_40:                                                                     jmp   n71_goto_β
.Lx76_41:                                                                     jmp   n67_goto_β
.Lx76_42:                                                                     jmp   n66_match_defer_β
n65_match_alternate_as: mov              r11, 28;                             jmp   PAT$5_γ
n65_match_alternate_β:  mov              r11, 28
                        mov              rax, qword ptr [rbp + -112];         jmp   rax
n65_match_alternate_af: mov              r11, 28
                        mov              r14d, dword ptr [rbp + -120]
                        mov              rax, qword ptr [rbp + -104];         jmp   rax
.Lx76_19:                                                                     jmp   PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n66_match_defer_α:      mov              r11, 29
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S9]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx77_16
                        mov              rax, qword ptr [rdx + 0]
.Lx77_16:               test             rax, rax;                            jz    .Lx77_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx77_5]
                        push             rcx
                        lea              rcx, [rip + .Lx77_4]
                        push             rcx;                                 jmp   rax
.Lx77_4:                                                                      jmp   n65_match_alternate_s2
.Lx77_5:                                                                      jmp   n65_match_alternate_af
.Lx77_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S9]
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
                        test             eax, eax;                            js    n65_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx77_6]
                        push             rcx
                        push             rax;                                 jmp   n65_match_alternate_s2
.Lx77_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n65_match_alternate_af
n66_match_defer_β:      mov              r11, 29
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx77_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx77_12
                                                                              jmp   rax
.Lx77_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n67_goto_α:             mov              r11, 30;                             jmp   n65_match_alternate_af
n67_goto_β:             mov              r11, 30;                             jmp   n65_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n68_match_defer_α:      mov              r11, 31
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
                        test             rax, rax;                            je    .Lx79_16
                        mov              rax, qword ptr [rdx + 0]
.Lx79_16:               test             rax, rax;                            jz    .Lx79_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx79_5]
                        push             rcx
                        lea              rcx, [rip + .Lx79_4]
                        push             rcx;                                 jmp   rax
.Lx79_4:                                                                      jmp   n69_match_lit_α
.Lx79_5:                                                                      jmp   n65_match_alternate_af
.Lx79_0:                push             r14
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
                        test             eax, eax;                            js    n65_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx79_6]
                        push             rcx
                        push             rax;                                 jmp   n69_match_lit_α
.Lx79_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n65_match_alternate_af
n68_match_defer_β:      mov              r11, 31
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx79_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx79_12
                                                                              jmp   rax
.Lx79_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n69_match_lit_α:        mov              r11, 32
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n68_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n68_match_defer_β
                        add              r14d, 1;                             jmp   n70_match_defer_α
n69_match_lit_β:        mov              r11, 32
                        sub              r14d, 1;                             jmp   n68_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n70_match_defer_α:      mov              r11, 33
                        push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 80]             # X
                        mov              rdx, qword ptr [r9 + 88]
                        cmp              al, 8;                               jne   .Lx82_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx82_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 88];            jmp   .Lx82_10
.Lx82_9:                cmp              al, 88;                              jne   .Lx82_21
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
                        test             rax, rax;                            je    .Lx82_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx82_10
.Lx82_21:               xor              eax, eax
.Lx82_10:               test             rax, rax;                            jz    .Lx82_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx82_5]
                        push             rcx
                        lea              rcx, [rip + .Lx82_4]
                        push             rcx;                                 jmp   rax
.Lx82_4:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n65_match_alternate_s1
.Lx82_5:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n69_match_lit_β
.Lx82_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
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
                        test             eax, eax;                            js    n69_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx82_6]
                        push             rcx
                        push             rax;                                 jmp   n65_match_alternate_s1
.Lx82_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n69_match_lit_β
n70_match_defer_β:      mov              r11, 33
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n69_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n71_goto_α:             mov              r11, 34;                             jmp   n65_match_alternate_af
n71_goto_β:             mov              r11, 34;                             jmp   n65_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n72_match_defer_α:      mov              r11, 35
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
                        test             rax, rax;                            je    .Lx84_16
                        mov              rax, qword ptr [rdx + 0]
.Lx84_16:               test             rax, rax;                            jz    .Lx84_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx84_5]
                        push             rcx
                        lea              rcx, [rip + .Lx84_4]
                        push             rcx;                                 jmp   rax
.Lx84_4:                                                                      jmp   n73_match_lit_α
.Lx84_5:                                                                      jmp   n65_match_alternate_af
.Lx84_0:                push             r14
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
                        test             eax, eax;                            js    n65_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx84_6]
                        push             rcx
                        push             rax;                                 jmp   n73_match_lit_α
.Lx84_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n65_match_alternate_af
n72_match_defer_β:      mov              r11, 35
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx84_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx84_12
                                                                              jmp   rax
.Lx84_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n73_match_lit_α:        mov              r11, 36
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n72_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   n72_match_defer_β
                        add              r14d, 1;                             jmp   n74_match_defer_α
n73_match_lit_β:        mov              r11, 36
                        sub              r14d, 1;                             jmp   n72_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n74_match_defer_α:      mov              r11, 37
                        push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 80]             # X
                        mov              rdx, qword ptr [r9 + 88]
                        cmp              al, 8;                               jne   .Lx87_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx87_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 88];            jmp   .Lx87_10
.Lx87_9:                cmp              al, 88;                              jne   .Lx87_21
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
                        test             rax, rax;                            je    .Lx87_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx87_10
.Lx87_21:               xor              eax, eax
.Lx87_10:               test             rax, rax;                            jz    .Lx87_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx87_5]
                        push             rcx
                        lea              rcx, [rip + .Lx87_4]
                        push             rcx;                                 jmp   rax
.Lx87_4:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n65_match_alternate_s0
.Lx87_5:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n73_match_lit_β
.Lx87_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
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
                        test             eax, eax;                            js    n73_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx87_6]
                        push             rcx
                        push             rax;                                 jmp   n65_match_alternate_s0
.Lx87_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n73_match_lit_β
n74_match_defer_β:      mov              r11, 37
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n73_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_β:
                                                                              jmp   PAT$5_ω
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
                        sub              rsp, 72
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n88_match_pos_α:        mov              r11, 38
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$6_ω
                                                                              jmp   n89_match_arbno_α
n88_match_pos_β:        mov              r11, 38;                             jmp   PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
n89_match_arbno_α:      mov              r11, 39
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d;         jmp   n90_match_rpos_α
n89_match_arbno_β:      mov              r11, 39;                             jmp   n91_match_defer_α
n89_match_arbno_as:     mov              r11, 39
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n91_match_defer_β
                        mov              dword ptr [rbp + -44], r14d;         jmp   n90_match_rpos_α
n89_match_arbno_af:     mov              r11, 39
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n88_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n90_match_rpos_α:       mov              r11, 40
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n89_match_arbno_β
                                                                              jmp   PAT$6_γ
n90_match_rpos_β:       mov              r11, 40;                             jmp   n89_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n91_match_defer_α:      mov              r11, 41
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
                        test             rax, rax;                            je    .Lx97_16
                        mov              rax, qword ptr [rdx + 0]
.Lx97_16:               test             rax, rax;                            jz    .Lx97_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx97_5]
                        push             rcx
                        lea              rcx, [rip + .Lx97_4]
                        push             rcx;                                 jmp   rax
.Lx97_4:                                                                      jmp   n92_match_defer_α
.Lx97_5:                                                                      jmp   n89_match_arbno_af
.Lx97_0:                push             r14
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
                        test             eax, eax;                            js    n89_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx97_6]
                        push             rcx
                        push             rax;                                 jmp   n92_match_defer_α
.Lx97_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n89_match_arbno_af
n91_match_defer_β:      mov              r11, 41
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx97_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx97_12
                                                                              jmp   rax
.Lx97_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n92_match_defer_α:      mov              r11, 42
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
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
                        test             rax, rax;                            je    .Lx98_16
                        mov              rax, qword ptr [rdx + 0]
.Lx98_16:               test             rax, rax;                            jz    .Lx98_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx98_5]
                        push             rcx
                        lea              rcx, [rip + .Lx98_4]
                        push             rcx;                                 jmp   rax
.Lx98_4:                                                                      jmp   n89_match_arbno_as
.Lx98_5:                                                                      jmp   n91_match_defer_β
.Lx98_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
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
                        test             eax, eax;                            js    n91_match_defer_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx98_6]
                        push             rcx
                        push             rax;                                 jmp   n89_match_arbno_as
.Lx98_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n91_match_defer_β
n92_match_defer_β:      mov              r11, 42
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx98_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx98_12
                                                                              jmp   rax
.Lx98_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_β:
                                                                              jmp   n90_match_rpos_β
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
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 19
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 19
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "I"
.Lgvan1:                .string          "V"
.Lgvan2:                .string          "A"
.Lgvan3:                .string          "F"
.Lgvan4:                .string          "T"
.Lgvan5:                .string          "X"
.Lgvan6:                .string          "C"
.Lgvan7:                .string          "src"
.Lgvan8:                .string          "PAT$2$V0"
.Lgvan9:                .string          "PAT$2$V1"
.Lgvan10:               .string          "PAT$3$V0"
.Lgvan11:               .string          "PAT$4$V0"
.Lgvan12:               .string          "PAT$4$V1"
.Lgvan13:               .string          "PAT$4$V2"
.Lgvan14:               .string          "PAT$5$V0"
.Lgvan15:               .string          "PAT$5$V1"
.Lgvan16:               .string          "PAT$5$V2"
.Lgvan17:               .string          "PAT$6$V0"
.Lgvan18:               .string          "PAT$6$V1"
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
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         &TRIM   =  0
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_begin_α:  mov              r11, 43
                        mov              r10, 1;                              jmp   n100_lit_integer_α
n99_statement_begin_β:  mov              r11, 43;                             jmp   n103_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:     sub              rsp, 16
                        mov              r11, 44
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n101_keyword_assign_snobol4_α
.Lx198_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n101_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 45
                        mov              rdi, qword ptr [rip + .Lx199_0]
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
                        cmp              al, 104;                             jne   .Lx199_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n99_statement_begin_β
.Lx199_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_statement_end_α
.Lx199_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_end_α:   mov              r11, 46
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n103_statement_begin_α
#=======================================================================================================================
#         I       =  SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_begin_α: mov              r11, 47
                        mov              r10, 2;                              jmp   n104_lit_string_α
n103_statement_begin_β: mov              r11, 47;                             jmp   n108_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      sub              rsp, 16
                        mov              r11, 48
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n105_call_α
.Lx204_0:               .quad            .Lx204_0_s
.Lx204_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n105_call_α:            sub              rsp, 16
                        mov              r11, 49
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd206:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd206]
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
                        cmp              al, 104;                             jne   .Lx205_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n103_statement_begin_β
.Lx205_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n106_assign_α
n105_call_β:            mov              r11, 49
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n103_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n106_assign_α:          mov              r11, 50
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # I
                        mov              qword ptr [r9 + 8], rdx;             jmp   n107_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_end_α:   mov              r11, 51
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n108_statement_begin_α
#=======================================================================================================================
#         V       =  ANY(&LCASE)
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_begin_α: mov              r11, 52
                        mov              r10, 3;                              jmp   n109_lit_string_α
n108_statement_begin_β: mov              r11, 52;                             jmp   n113_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:      sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n110_call_α
.Lx212_0:               .quad            .Lx212_0_s
.Lx212_0_s:             .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n110_call_α:            sub              rsp, 16
                        mov              r11, 54
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd214:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd214]
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
                        cmp              al, 104;                             jne   .Lx213_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n108_statement_begin_β
.Lx213_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n111_assign_α
n110_call_β:            mov              r11, 54
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n108_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_α:          mov              r11, 55
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # V
                        mov              qword ptr [r9 + 24], rdx;            jmp   n112_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_end_α:   mov              r11, 56
                        mov              r10, 3
                        add              rsp, 32;                             jmp   n113_statement_begin_α
#=======================================================================================================================
#         A       =  FENCE(I | V | '(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_begin_α: mov              r11, 57
                        mov              r10, 4;                              jmp   n114_var_α
n113_statement_begin_β: mov              r11, 57;                             jmp   n123_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             sub              rsp, 16
                        mov              r11, 58
                        mov              rax, qword ptr [r9 + 0]              # I
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n115_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:          mov              r11, 59
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # PAT$2$V0
                        mov              qword ptr [r9 + 136], rdx;           jmp   n116_var_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:             sub              rsp, 16
                        mov              r11, 60
                        mov              rax, qword ptr [r9 + 16]             # V
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n117_assign_α
n116_var_β:             mov              r11, 60
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n113_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n117_assign_α:          mov              r11, 61
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # PAT$2$V1
                        mov              qword ptr [r9 + 152], rdx;           jmp   n118_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:      sub              rsp, 16
                        mov              r11, 62
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n119_lit_string_α
n118_lit_string_β:      mov              r11, 62
                        add              rsp, 16;                             jmp   n116_var_β
.Lx224_0:               .quad            .Lx224_0_s
.Lx224_0_s:             .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:      sub              rsp, 16
                        mov              r11, 63
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_call_α
n119_lit_string_β:      mov              r11, 63
                        add              rsp, 16;                             jmp   n118_lit_string_β
.Lx225_0:               .quad            .Lx225_0_s
.Lx225_0_s:             .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n120_call_α:            sub              rsp, 16
                        mov              r11, 64
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
.Lrkfnzd227:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd227]
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
                        cmp              al, 104;                             jne   .Lx226_240
                        add              rsp, 16;                             jmp   n119_lit_string_β
.Lx226_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n121_assign_α
n120_call_β:            mov              r11, 64
                        add              rsp, 16;                             jmp   n119_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n121_assign_α:          mov              r11, 65
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # A
                        mov              qword ptr [r9 + 40], rdx;            jmp   n122_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_end_α:   mov              r11, 66
                        mov              r10, 4
                        add              rsp, 80;                             jmp   n123_statement_begin_α
#=======================================================================================================================
#         F       =  FENCE('+' *F | '-' *F | A)
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_begin_α: mov              r11, 67
                        mov              r10, 5;                              jmp   n124_var_α
n123_statement_begin_β: mov              r11, 67;                             jmp   n131_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             sub              rsp, 16
                        mov              r11, 68
                        mov              rax, qword ptr [r9 + 32]             # A
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n125_assign_α:          mov              r11, 69
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 168], rdx;           jmp   n126_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:      sub              rsp, 16
                        mov              r11, 70
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_lit_string_α
n126_lit_string_β:      mov              r11, 70
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n123_statement_begin_β
.Lx235_0:               .quad            .Lx235_0_s
.Lx235_0_s:             .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      sub              rsp, 16
                        mov              r11, 71
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n128_call_α
n127_lit_string_β:      mov              r11, 71
                        add              rsp, 16;                             jmp   n126_lit_string_β
.Lx236_0:               .quad            .Lx236_0_s
.Lx236_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n128_call_α:            sub              rsp, 16
                        mov              r11, 72
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
.Lrkfnzd238:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd238]
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
                        cmp              al, 104;                             jne   .Lx237_240
                        add              rsp, 16;                             jmp   n127_lit_string_β
.Lx237_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n129_assign_α
n128_call_β:            mov              r11, 72
                        add              rsp, 16;                             jmp   n127_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n129_assign_α:          mov              r11, 73
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # F
                        mov              qword ptr [r9 + 56], rdx;            jmp   n130_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_end_α:   mov              r11, 74
                        mov              r10, 5
                        add              rsp, 64;                             jmp   n131_statement_begin_α
#=======================================================================================================================
#         T       =  FENCE(F '*' *T | F '/' *T | F)
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_begin_α: mov              r11, 75
                        mov              r10, 6;                              jmp   n132_var_α
n131_statement_begin_β: mov              r11, 75;                             jmp   n143_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             sub              rsp, 16
                        mov              r11, 76
                        mov              rax, qword ptr [r9 + 48]             # F
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_α:          mov              r11, 77
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 184], rdx;           jmp   n134_var_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:             sub              rsp, 16
                        mov              r11, 78
                        mov              rax, qword ptr [r9 + 48]             # F
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_assign_α
n134_var_β:             mov              r11, 78
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n131_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:          mov              r11, 79
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # PAT$4$V1
                        mov              qword ptr [r9 + 200], rdx;           jmp   n136_var_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:             sub              rsp, 16
                        mov              r11, 80
                        mov              rax, qword ptr [r9 + 48]             # F
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n137_assign_α
n136_var_β:             mov              r11, 80
                        add              rsp, 16;                             jmp   n134_var_β
#-----------------------------------------------------------------------------------------------------------------------
n137_assign_α:          mov              r11, 81
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # PAT$4$V2
                        mov              qword ptr [r9 + 216], rdx;           jmp   n138_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      sub              rsp, 16
                        mov              r11, 82
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n139_lit_string_α
n138_lit_string_β:      mov              r11, 82
                        add              rsp, 16;                             jmp   n136_var_β
.Lx250_0:               .quad            .Lx250_0_s
.Lx250_0_s:             .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:      sub              rsp, 16
                        mov              r11, 83
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n140_call_α
n139_lit_string_β:      mov              r11, 83
                        add              rsp, 16;                             jmp   n138_lit_string_β
.Lx251_0:               .quad            .Lx251_0_s
.Lx251_0_s:             .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n140_call_α:            sub              rsp, 16
                        mov              r11, 84
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
.Lrkfnzd253:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd253]
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
                        cmp              al, 104;                             jne   .Lx252_240
                        add              rsp, 16;                             jmp   n139_lit_string_β
.Lx252_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_assign_α
n140_call_β:            mov              r11, 84
                        add              rsp, 16;                             jmp   n139_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n141_assign_α:          mov              r11, 85
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # T
                        mov              qword ptr [r9 + 72], rdx;            jmp   n142_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_end_α:   mov              r11, 86
                        mov              r10, 6
                        add              rsp, 96;                             jmp   n143_statement_begin_α
#=======================================================================================================================
#         X       =  FENCE(T '+' *X | T '-' *X | T)
#-----------------------------------------------------------------------------------------------------------------------
n143_statement_begin_α: mov              r11, 87
                        mov              r10, 7;                              jmp   n144_var_α
n143_statement_begin_β: mov              r11, 87;                             jmp   n155_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:             sub              rsp, 16
                        mov              r11, 88
                        mov              rax, qword ptr [r9 + 64]             # T
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n145_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n145_assign_α:          mov              r11, 89
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # PAT$5$V0
                        mov              qword ptr [r9 + 232], rdx;           jmp   n146_var_α
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:             sub              rsp, 16
                        mov              r11, 90
                        mov              rax, qword ptr [r9 + 64]             # T
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n147_assign_α
n146_var_β:             mov              r11, 90
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n143_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n147_assign_α:          mov              r11, 91
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # PAT$5$V1
                        mov              qword ptr [r9 + 248], rdx;           jmp   n148_var_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:             sub              rsp, 16
                        mov              r11, 92
                        mov              rax, qword ptr [r9 + 64]             # T
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_assign_α
n148_var_β:             mov              r11, 92
                        add              rsp, 16;                             jmp   n146_var_β
#-----------------------------------------------------------------------------------------------------------------------
n149_assign_α:          mov              r11, 93
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # PAT$5$V2
                        mov              qword ptr [r9 + 264], rdx;           jmp   n150_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:      sub              rsp, 16
                        mov              r11, 94
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n151_lit_string_α
n150_lit_string_β:      mov              r11, 94
                        add              rsp, 16;                             jmp   n148_var_β
.Lx265_0:               .quad            .Lx265_0_s
.Lx265_0_s:             .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:      sub              rsp, 16
                        mov              r11, 95
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n152_call_α
n151_lit_string_β:      mov              r11, 95
                        add              rsp, 16;                             jmp   n150_lit_string_β
.Lx266_0:               .quad            .Lx266_0_s
.Lx266_0_s:             .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n152_call_α:            sub              rsp, 16
                        mov              r11, 96
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
.Lrkfnzd268:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd268]
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
                        cmp              al, 104;                             jne   .Lx267_240
                        add              rsp, 16;                             jmp   n151_lit_string_β
.Lx267_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_assign_α
n152_call_β:            mov              r11, 96
                        add              rsp, 16;                             jmp   n151_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n153_assign_α:          mov              r11, 97
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # X
                        mov              qword ptr [r9 + 88], rdx;            jmp   n154_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_end_α:   mov              r11, 98
                        mov              r10, 7
                        add              rsp, 96;                             jmp   n155_statement_begin_α
#=======================================================================================================================
#         C       =  POS(0) ARBNO(X CHAR(10)) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_begin_α: mov              r11, 99
                        mov              r10, 8;                              jmp   n156_var_α
n155_statement_begin_β: mov              r11, 99;                             jmp   n166_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:             sub              rsp, 16
                        mov              r11, 100
                        mov              rax, qword ptr [r9 + 80]             # X
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n157_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n157_assign_α:          mov              r11, 101
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # PAT$6$V0
                        mov              qword ptr [r9 + 280], rdx;           jmp   n158_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_integer_α:     sub              rsp, 16
                        mov              r11, 102
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n159_call_α
n158_lit_integer_β:     mov              r11, 102
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n155_statement_begin_β
.Lx276_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n159_call_α:            sub              rsp, 16
                        mov              r11, 103
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd103:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd103]
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
                        cmp              al, 104;                             jne   .Lx277_240
                        add              rsp, 16;                             jmp   n158_lit_integer_β
.Lx277_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_assign_α
n159_call_β:            mov              r11, 103
                        add              rsp, 16;                             jmp   n158_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_α:          mov              r11, 104
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # PAT$6$V1
                        mov              qword ptr [r9 + 296], rdx;           jmp   n161_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:      sub              rsp, 16
                        mov              r11, 105
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n162_lit_string_α
n161_lit_string_β:      mov              r11, 105
                        add              rsp, 32;                             jmp   n158_lit_integer_β
.Lx279_0:               .quad            .Lx279_0_s
.Lx279_0_s:             .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:      sub              rsp, 16
                        mov              r11, 106
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n163_call_α
n162_lit_string_β:      mov              r11, 106
                        add              rsp, 16;                             jmp   n161_lit_string_β
.Lx280_0:               .quad            .Lx280_0_s
.Lx280_0_s:             .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n163_call_α:            sub              rsp, 16
                        mov              r11, 107
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
.Lrkfnzd282:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd282]
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
                        cmp              al, 104;                             jne   .Lx281_240
                        add              rsp, 16;                             jmp   n162_lit_string_β
.Lx281_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n164_assign_α
n163_call_β:            mov              r11, 107
                        add              rsp, 16;                             jmp   n162_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n164_assign_α:          mov              r11, 108
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # C
                        mov              qword ptr [r9 + 104], rdx;           jmp   n165_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_end_α:   mov              r11, 109
                        mov              r10, 8
                        add              rsp, 96;                             jmp   n166_statement_begin_α
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_begin_α: mov              r11, 110
                        mov              r10, 9;                              jmp   n167_lit_string_α
n166_statement_begin_β: mov              r11, 110;                            jmp   n173_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:      sub              rsp, 16
                        mov              r11, 111
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n168_call_α
.Lx288_0:               .quad            .Lx288_0_s
.Lx288_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n168_call_α:            sub              rsp, 16
                        mov              r11, 112
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd290:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd290]
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
                        cmp              al, 104;                             jne   .Lx289_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n166_statement_begin_β
.Lx289_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n169_lit_integer_α
n168_call_β:            mov              r11, 112
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n166_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:     sub              rsp, 16
                        mov              r11, 113
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n170_lit_string_α
n169_lit_integer_β:     mov              r11, 113
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n166_statement_begin_β
.Lx291_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:      sub              rsp, 16
                        mov              r11, 114
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n171_call_α
n170_lit_string_β:      mov              r11, 114
                        add              rsp, 16;                             jmp   n169_lit_integer_β
.Lx292_0:               .quad            .Lx292_0_s
.Lx292_0_s:             .string          "[-f0 -r4194304]"
#-----------------------------------------------------------------------------------------------------------------------
n171_call_α:            sub              rsp, 16
                        mov              r11, 115
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
.Lbynamefnzd115:        .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd115]
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
                        cmp              al, 104;                             jne   .Lx293_240
                        add              rsp, 16;                             jmp   n170_lit_string_β
.Lx293_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n172_statement_end_α
n171_call_β:            mov              r11, 115
                        add              rsp, 16;                             jmp   n170_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_end_α:   mov              r11, 116
                        mov              r10, 9
                        add              rsp, 80;                             jmp   n173_statement_begin_α
#=======================================================================================================================
#         src     =  INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_begin_α: mov              r11, 117
                        mov              r10, 10;                             jmp   n174_var_α
n173_statement_begin_β: mov              r11, 117;                            jmp   n192_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n174_var_α:             sub              rsp, 16
                        mov              r11, 118
                        mov              rdi, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx298_240
                        add              rsp, 16;                             jmp   n173_statement_begin_β
.Lx298_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n175_assign_α
.Lx298_0:               .quad            .Lx298_0_s
.Lx298_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n175_assign_α:          mov              r11, 119
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # src
                        mov              qword ptr [r9 + 120], rdx;           jmp   n176_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:   mov              r11, 120
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n177_statement_begin_α
#=======================================================================================================================
#         src     ?  C  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_begin_α: mov              r11, 121
                        mov              r10, 11;                             jmp   n178_var_α
n177_statement_begin_β: mov              r11, 121;                            jmp   n192_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:             sub              rsp, 16
                        mov              r11, 122
                        mov              rax, qword ptr [r9 + 112]            # src
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_var_α
#-----------------------------------------------------------------------------------------------------------------------
n179_var_α:             sub              rsp, 16
                        mov              r11, 123
                        mov              rax, qword ptr [r9 + 96]             # C
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n180_assign_α
n179_var_β:             mov              r11, 123
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n192_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n180_assign_α:          mov              r11, 124
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n181_match_begin_α
n180_assign_β:          mov              r11, 124;                            jmp   n179_var_β
.Lx306_0:               .quad            .Lx306_0_s
.Lx306_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n181_match_begin_α:     mov              r11, 125
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
.Lx308_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx308_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n182_match_defer_α
n181_match_begin_β:     mov              r11, 125
.Lx308_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx308_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx308_1
                                                                              jmp   .Lx308_0
.Lx308_1:
n181_match_begin_af:    mov              r11, 125
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
                        pop              rbp;                                 jmp   n180_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n182_match_defer_α:     mov              r11, 126
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S14]
                        cmp              rax, rdx;                            jne   .Lx309_30
                        mov              rax, qword ptr [rcx + 8]
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              jne   .Lx309_30
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lx309_30
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lx309_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lx309_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lx309_0
.Lx309_31:              mov              edx, -1;                             jmp   .Lx309_0
.Lx309_30:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S14]
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
                        test             rax, rax;                            jz    .Lx309_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx309_5]
                        push             rcx
                        lea              rcx, [rip + .Lx309_4]
                        push             rcx;                                 jmp   rax
.Lx309_4:                                                                     jmp   n183_match_end_α
.Lx309_5:                                                                     jmp   n181_match_begin_β
.Lx309_0:               mov              eax, edx
                        test             eax, eax;                            js    n181_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx309_6]
                        push             rcx
                        push             rax;                                 jmp   n183_match_end_α
.Lx309_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n181_match_begin_β
n182_match_defer_β:     mov              r11, 126
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx309_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx309_12
                                                                              jmp   rax
.Lx309_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n183_match_end_α:       mov              r11, 127
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
                        test             rax, rax;                            je    .Lx311_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n181_match_begin_af
.Lx311_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n184_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_end_α:   mov              r11, 128
                        mov              r10, 11
                        add              rsp, 32;                             jmp   n185_statement_begin_α
#=======================================================================================================================
#         OUTPUT  =  'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n185_statement_begin_α: mov              r11, 129
                        mov              r10, 12;                             jmp   n186_lit_string_α
n185_statement_begin_β: mov              r11, 129;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:      sub              rsp, 16
                        mov              r11, 130
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n187_var_α
.Lx316_0:               .quad            .Lx316_0_s
.Lx316_0_s:             .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n187_var_α:             sub              rsp, 16
                        mov              r11, 131
                        mov              rax, qword ptr [r9 + 112]            # src
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n188_call_α
n187_var_β:             mov              r11, 131
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n185_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n188_call_α:            sub              rsp, 16
                        mov              r11, 132
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd319:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd319]
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
                        cmp              al, 104;                             jne   .Lx318_240
                        add              rsp, 16;                             jmp   n187_var_β
.Lx318_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n189_binop_α
n188_call_β:            mov              r11, 132
                        add              rsp, 16;                             jmp   n187_var_β
#-----------------------------------------------------------------------------------------------------------------------
n189_binop_α:           sub              rsp, 16
                        mov              r11, 133
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n190_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n190_assign_α:          mov              r11, 134
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n191_statement_end_α
.Lx321_0:               .quad            .Lx321_0_s
.Lx321_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_end_α:   mov              r11, 135
                        mov              r10, 12
                        add              rsp, 64;                             jmp   main_γ
#=======================================================================================================================
# error   OUTPUT  =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_begin_α: mov              r11, 136
                        mov              r10, 13;                             jmp   n193_lit_string_α
n192_statement_begin_β: mov              r11, 136;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:      sub              rsp, 16
                        mov              r11, 137
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n194_assign_α
.Lx326_0:               .quad            .Lx326_0_s
.Lx326_0_s:             .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n194_assign_α:          mov              r11, 138
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n195_statement_end_α
.Lx327_0:               .quad            .Lx327_0_s
.Lx327_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_end_α:   mov              r11, 139
                        mov              r10, 13
                        add              rsp, 16;                             jmp   main_γ
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
.Lstartup_pname0:       .string          "PAT$0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__PAT$0
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
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "PAT$1"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__PAT$1
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
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "PAT$2"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
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
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "PAT$3"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__PAT$3
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
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "PAT$4"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__PAT$4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            160
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "PAT$5"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__PAT$5
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            160
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "PAT$6"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__PAT$6
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
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "X"
.S1:                    .string          "PAT$2$V1"
.S2:                    .string          "PAT$2$V0"
.S3:                    .string          "PAT$3$V0"
.S4:                    .string          "F"
.S5:                    .string          "PAT$4$V2"
.S6:                    .string          "PAT$4$V1"
.S7:                    .string          "T"
.S8:                    .string          "PAT$4$V0"
.S9:                    .string          "PAT$5$V2"
.S10:                   .string          "PAT$5$V1"
.S11:                   .string          "PAT$5$V0"
.S12:                   .string          "PAT$6$V0"
.S13:                   .string          "PAT$6$V1"
.S14:                   .string          "PATV$0"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
.C1:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
                        .text
                        .section         .note.GNU-stack,"",@progbits
