                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/claws5/claws5.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
.LTp0:
.LTp0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 296
                        lea              rax, [rip + .Lgcmap_.LTp0]
                        mov              qword ptr [rbp + -288], rax
                        mov              dword ptr [rbp + -296], 160
                        mov              dword ptr [rbp + -292], 296
                        xorps            xmm0, xmm0
                        movups           xmmword ptr [rbp + -280], xmm0
                        movups           xmmword ptr [rbp + -264], xmm0
                        movups           xmmword ptr [rbp + -248], xmm0
                        movups           xmmword ptr [rbp + -232], xmm0
                        movups           xmmword ptr [rbp + -216], xmm0
                        movups           xmmword ptr [rbp + -200], xmm0
                        movups           xmmword ptr [rbp + -184], xmm0
                        movups           xmmword ptr [rbp + -168], xmm0
                        movups           xmmword ptr [rbp + -152], xmm0
                        movups           xmmword ptr [rbp + -136], xmm0
                        movups           xmmword ptr [rbp + -120], xmm0
                        movups           xmmword ptr [rbp + -104], xmm0
                        movups           xmmword ptr [rbp + -88], xmm0
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n0_match_pos_bx, @function
n0_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_pos_α:         mov              rax, 0
                        cmp              r14d, eax;                           jne   .LTp0_ω
                                                                              jmp   n1_match_arbno_α
n0_match_pos_β:                                                               jmp   .LTp0_ω
                        .size            n0_match_pos_bx, .-n0_match_pos_bx
                        .type            n1_match_arbno_bx, @function
n1_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_match_arbno_α:       sub              rsp, 192
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   n2_match_rpos_α
n1_match_arbno_β:       mov              rax, qword ptr [rbp + -48]
                        mov              r12, qword ptr [rax + 8];            jmp   n3_match_fence1_α
.Lmatch_arbno_γ_1_as:   mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n4_match_span_β
                        sub              rsp, 192
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              rax, qword ptr [rbp + -208]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rbp + -200]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rbp + -192]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rbp + -184]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rbp + -176]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rbp + -168]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rbp + -160]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rbp + -152]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rbp + -144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rbp + -136]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rbp + -128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rbp + -120]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rbp + -112]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rbp + -104]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rbp + -96]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rbp + -88]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rbp + -80]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rbp + -72]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rbp + -56]
                        mov              qword ptr [rsp + 184], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   n2_match_rpos_α
.Lmatch_arbno_γ_1_af:
.Lmatch_arbno_ω_1_af:   mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -48], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_23_3
                        mov              rax, qword ptr [rcx + 32]
                        mov              qword ptr [rbp + -208], rax
                        mov              rax, qword ptr [rcx + 40]
                        mov              qword ptr [rbp + -200], rax
                        mov              rax, qword ptr [rcx + 48]
                        mov              qword ptr [rbp + -192], rax
                        mov              rax, qword ptr [rcx + 56]
                        mov              qword ptr [rbp + -184], rax
                        mov              rax, qword ptr [rcx + 64]
                        mov              qword ptr [rbp + -176], rax
                        mov              rax, qword ptr [rcx + 72]
                        mov              qword ptr [rbp + -168], rax
                        mov              rax, qword ptr [rcx + 80]
                        mov              qword ptr [rbp + -160], rax
                        mov              rax, qword ptr [rcx + 88]
                        mov              qword ptr [rbp + -152], rax
                        mov              rax, qword ptr [rcx + 96]
                        mov              qword ptr [rbp + -144], rax
                        mov              rax, qword ptr [rcx + 104]
                        mov              qword ptr [rbp + -136], rax
                        mov              rax, qword ptr [rcx + 112]
                        mov              qword ptr [rbp + -128], rax
                        mov              rax, qword ptr [rcx + 120]
                        mov              qword ptr [rbp + -120], rax
                        mov              rax, qword ptr [rcx + 128]
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [rcx + 136]
                        mov              qword ptr [rbp + -104], rax
                        mov              rax, qword ptr [rcx + 144]
                        mov              qword ptr [rbp + -96], rax
                        mov              rax, qword ptr [rcx + 152]
                        mov              qword ptr [rbp + -88], rax
                        mov              rax, qword ptr [rcx + 160]
                        mov              qword ptr [rbp + -80], rax
                        mov              rax, qword ptr [rcx + 168]
                        mov              qword ptr [rbp + -72], rax
                        mov              rax, qword ptr [rcx + 176]
                        mov              qword ptr [rbp + -64], rax
                        mov              rax, qword ptr [rcx + 184]
                        mov              qword ptr [rbp + -56], rax
                        lea              rsp, [rcx + 192];                    jmp   n4_match_span_β
.Lmatch_arbno_β_23_3:   lea              rsp, [rcx + 192];                    jmp   n0_match_pos_β
                        .size            n1_match_arbno_bx, .-n1_match_arbno_bx
                        .type            n2_match_rpos_bx, @function
n2_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_match_rpos_α:        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n1_match_arbno_β
                                                                              jmp   .LTp0_γ
n2_match_rpos_β:                                                              jmp   n1_match_arbno_β
                        .size            n2_match_rpos_bx, .-n2_match_rpos_bx
                        .type            n3_match_fence1_bx, @function
n3_match_fence1_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_match_fence1_α:      mov              qword ptr [rbp + -80], rsp
                        mov              qword ptr [rbp + -72], r12
                        mov              qword ptr [rbp + -64], 0
                        mov              dword ptr [rbp + -60], r14d;         jmp   n5_match_alternate_α
.Lmatch_fence1_γ_3_as:  mov              rsp, qword ptr [rbp + -80];          jmp   n4_match_span_α
.Lmatch_fence1_γ_3_af:
.Lmatch_fence1_ω_3_af:
n3_match_fence1_β:      mov              r12, qword ptr [rbp + -72]
                        mov              r14d, dword ptr [rbp + -60]
                        mov              rsp, qword ptr [rbp + -80];          jmp   .Lmatch_arbno_ω_1_af
                        .size            n3_match_fence1_bx, .-n3_match_fence1_bx
                        .type            n4_match_span_bx, @function
n4_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_match_span_α:        sub              rsp, 16
                        movsxd           rcx, r14d
.Lmatch_span_α_28_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_28_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lmatch_span_α_28_10
                        cmp              esi, 10;                             je    .Lmatch_span_α_28_10
                                                                              jmp   .Lmatch_span_α_28_1
.Lmatch_span_α_28_10:   add              ecx, 1;                              jmp   .Lmatch_span_α_28_0
.Lmatch_span_α_28_1:    cmp              ecx, r14d;                           jg    .Lmatch_span_α_28_240
                        add              rsp, 16;                             jmp   n3_match_fence1_β
.Lmatch_span_α_28_240:  mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_arbno_γ_1_as
n4_match_span_β:        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                             jmp   n3_match_fence1_β
                        .size            n4_match_span_bx, .-n4_match_span_bx
                        .type            n5_match_alternate_bx, @function
n5_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_match_alternate_α:   mov              dword ptr [rbp + -112], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_30_21]
                        mov              qword ptr [rbp + -96], rax;          jmp   n17_match_assign_save_α
.Lmatch_alternate_α_30_21:
                        lea              rax, [rip + .Lmatch_alternate_α_30_19]
                        mov              qword ptr [rbp + -96], rax;          jmp   n6_match_assign_save_α
.Lmatch_alternate_γ_5_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_30_40]
                        mov              qword ptr [rbp + -104], rax;         jmp   .Lmatch_alternate_γ_5_as
.Lmatch_alternate_γ_5_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_30_41]
                        mov              qword ptr [rbp + -104], rax;         jmp   .Lmatch_alternate_γ_5_as
.Lmatch_alternate_α_30_40:
                                                                              jmp   n20_match_lit_β
.Lmatch_alternate_α_30_41:
                                                                              jmp   n16_match_assign_cond_β
.Lmatch_alternate_γ_5_as:
                                                                              jmp   .Lmatch_fence1_γ_3_as
n5_match_alternate_β:   mov              rax, qword ptr [rbp + -104];         jmp   rax
.Lmatch_alternate_γ_5_af:
.Lmatch_alternate_ω_5_af:
                        mov              r14d, dword ptr [rbp + -112]
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
.Lmatch_alternate_α_30_19:
                                                                              jmp   .Lmatch_fence1_ω_3_af
                        .size            n5_match_alternate_bx, .-n5_match_alternate_bx
                        .type            n6_match_assign_save_bx, @function
n6_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_match_assign_save_α: mov              dword ptr [rbp + -176], r14d;        jmp   n7_match_notany_α
n6_match_assign_save_β:                                                       jmp   .Lmatch_alternate_ω_5_af
                        .size            n6_match_assign_save_bx, .-n6_match_assign_save_bx
                        .type            n7_match_notany_bx, @function
n7_match_notany_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_match_notany_α:      mov              eax, r14d
                        cmp              eax, r15d;                           jge   n6_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    n6_match_assign_save_β
                        add              r14d, 1;                             jmp   n8_match_break_α
n7_match_notany_β:      sub              r14d, 1;                             jmp   n6_match_assign_save_β
                        .size            n7_match_notany_bx, .-n7_match_notany_bx
                        .type            n8_match_break_bx, @function
n8_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_match_break_α:       movsxd           rcx, r14d
.Lmatch_break_α_35_0:   cmp              ecx, r15d;                           jge   n7_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lmatch_break_α_35_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_35_0
.Lmatch_break_α_35_1:   mov              dword ptr [rbp + -208], r14d
                        mov              r14d, ecx;                           jmp   n9_match_assign_cond_α
n8_match_break_β:       mov              r14d, dword ptr [rbp + -208];        jmp   n7_match_notany_β
                        .size            n8_match_break_bx, .-n8_match_break_bx
                        .type            n9_match_assign_cond_bx, @function
n9_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_match_assign_cond_α: mov              eax, dword ptr [rbp + -176]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n10_match_lit_α
n9_match_assign_cond_β: sub              r12, 24;                             jmp   n8_match_break_β
                        .size            n9_match_assign_cond_bx, .-n9_match_assign_cond_bx
                        .type            n10_match_lit_bx, @function
n10_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n9_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95;                             jne   n9_match_assign_cond_β
                        add              r14d, 1;                             jmp   n11_match_assign_save_α
n10_match_lit_β:        sub              r14d, 1;                             jmp   n9_match_assign_cond_β
                        .size            n10_match_lit_bx, .-n10_match_lit_bx
                        .type            n11_match_assign_save_bx, @function
n11_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_match_assign_save_α:
                        mov              dword ptr [rbp + -224], r14d;        jmp   n12_match_assign_save_α
n11_match_assign_save_β:
                                                                              jmp   n10_match_lit_β
                        .size            n11_match_assign_save_bx, .-n11_match_assign_save_bx
                        .type            n12_match_assign_save_bx, @function
n12_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_match_assign_save_α:
                        mov              dword ptr [rbp + -240], r14d;        jmp   n13_match_any_α
n12_match_assign_save_β:
                                                                              jmp   n11_match_assign_save_β
                        .size            n12_match_assign_save_bx, .-n12_match_assign_save_bx
                        .type            n13_match_any_bx, @function
n13_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n12_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n12_match_assign_save_β
                        add              r14d, 1;                             jmp   n14_match_span_α
n13_match_any_β:        sub              r14d, 1;                             jmp   n12_match_assign_save_β
                        .size            n13_match_any_bx, .-n13_match_any_bx
                        .type            n14_match_span_bx, @function
n14_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_match_span_α:       lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lmatch_span_α_47_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_47_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_47_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_47_0
.Lmatch_span_α_47_1:    cmp              ecx, r14d;                           jle   n13_match_any_β
                        mov              dword ptr [rbp + -268], r14d
                        mov              r14d, ecx;                           jmp   n15_match_assign_cond_α
n14_match_span_β:       mov              r14d, dword ptr [rbp + -268];        jmp   n13_match_any_β
                        .size            n14_match_span_bx, .-n14_match_span_bx
                        .type            n15_match_assign_cond_bx, @function
n15_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -240]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n16_match_assign_cond_α
n15_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n14_match_span_β
                        .size            n15_match_assign_cond_bx, .-n15_match_assign_cond_bx
                        .type            n16_match_assign_cond_bx, @function
n16_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -224]
                        lea              rcx, [rip + .Ldstar_$2Atoken]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   .Lmatch_alternate_γ_5_s1
n16_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n15_match_assign_cond_β
                        .size            n16_match_assign_cond_bx, .-n16_match_assign_cond_bx
                        .type            n17_match_assign_save_bx, @function
n17_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_match_assign_save_α:
                        mov              dword ptr [rbp + -128], r14d;        jmp   n18_match_span_α
n17_match_assign_save_β:
                                                                              jmp   .Lmatch_alternate_ω_5_af
                        .size            n17_match_assign_save_bx, .-n17_match_assign_save_bx
                        .type            n18_match_span_bx, @function
n18_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_match_span_α:       lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lmatch_span_α_55_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_55_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_55_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_55_0
.Lmatch_span_α_55_1:    cmp              ecx, r14d;                           jle   n17_match_assign_save_β
                        mov              dword ptr [rbp + -156], r14d
                        mov              r14d, ecx;                           jmp   n19_match_assign_cond_α
n18_match_span_β:       mov              r14d, dword ptr [rbp + -156];        jmp   n17_match_assign_save_β
                        .size            n18_match_span_bx, .-n18_match_span_bx
                        .type            n19_match_assign_cond_bx, @function
n19_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -128]
                        lea              rcx, [rip + .S2]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n20_match_lit_α
n19_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n18_match_span_β
                        .size            n19_match_assign_cond_bx, .-n19_match_assign_cond_bx
                        .type            n20_match_lit_bx, @function
n20_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_match_lit_α:        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d;                           jg    n19_match_assign_cond_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax;                            jne   n19_match_assign_cond_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85;                             jne   n19_match_assign_cond_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78;                             jne   n19_match_assign_cond_β
                        add              r14d, 10;                            jmp   .Lmatch_alternate_γ_5_s0
n20_match_lit_β:        sub              r14d, 10;                            jmp   n19_match_assign_cond_β
                        .size            n20_match_lit_bx, .-n20_match_lit_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_β:
                                                                              jmp   n2_match_rpos_β
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + .LTp0_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_.LTp0:
                        .quad            1272656776538
                        .quad            17179869208
                        .quad            0
                        .quad            296
                        .quad            28
                        .quad            8804682956520
                        .quad            17600775978736
                        .quad            8808977923840
                        .quad            8804682956552
                        .quad            17600775978768
                        .quad            17600775978784
                        .quad            17600775978800
                        .quad            8808977923904
                        .quad            8804682956616
                        .quad            17600775978832
                        .quad            17600775978848
                        .quad            8808977923952
                        .quad            8804682956664
                        .quad            17600775978880
                        .quad            8804682956688
                        .quad            8813272891288
                        .quad            8813272891296
                        .quad            8804682956712
                        .quad            17600775978928
                        .quad            17600775978944
                        .quad            17600775978960
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcsites_.LTp0_0:      .quad            0
                        .quad            .Lgcmap_.LTp0
                        .quad            0
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp0:            .quad            .LTp0
                        .long            464, 1
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        push             rdi
                        push             rsi
                        sub              rsp, 8
                        call             rt_main_stack_adopt@PLT
                        mov              rsi, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rsp + 16]
                        add              rsp, 24
                        test             rax, rax;                            jz    .Lmain_stack_kept
                        mov              rsp, rax
.Lmain_stack_kept:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 9
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 9
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 4
                        call             rt_label_table_install@PLT
                        lea              rdi, [rip + __gc_frame_maps]
                        call             rt_gc_frame_maps_install_counted@PLT
                        lea              rdi, [rip + __gc_frame_sites]
                        call             rt_gc_frame_sites_install_counted@PLT
                        mov              rdi, qword ptr [rsp]
                        mov              rdi, qword ptr [rdi]
                        call             rt_main_progname_stage@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage_argv@PLT
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
.Lgvan0:                .string          "token"
.Lgvan1:                .string          "num"
.Lgvan2:                .string          "mem"
.Lgvan3:                .string          "wrd"
.Lgvan4:                .string          "tag"
.Lgvan5:                .string          "dummy"
.Lgvan6:                .string          "claws"
.Lgvan7:                .string          "src"
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
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "token"
.Llbln1:                .string          "token_end"
.Llbln2:                .string          "error"
.Llbln3:                .string          "END"
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .quad            .Llbln2
                        .quad            .Llbln3
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 1928], rax
                        mov              dword ptr [rsp + 1920], 160
                        mov              dword ptr [rsp + 1924], 1936
                        mov              eax, 0
main_α_body:
                        sub              rsp, 0
                        .type            n60_call_bx, @function
n60_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_call_α:             sub              rsp, 16
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_fp_model_spitbol@PLT
.Lgcsite_main_0:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_1:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_α_210_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n61_call_α
.Lcall_α_210_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n61_call_α
n60_call_β:             add              rsp, 16
                        add              rsp, -16;                            jmp   n61_call_α
                        .size            n60_call_bx, .-n60_call_bx
                        .type            n61_call_bx, @function
n61_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_call_α:             sub              rsp, 16
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_quit_trap_320@PLT
.Lgcsite_main_2:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_3:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_α_211_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n62_statement_begin_α
.Lcall_α_211_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n62_statement_begin_α
n61_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n62_statement_begin_α
                        .size            n61_call_bx, .-n61_call_bx
                        .type            n62_statement_begin_bx, @function
n62_statement_begin_bx:
                        .pushsection     .rodata
.Lstnof1:               .string          "snobol4/claws5/claws5.sno"
                        .popsection
.Lstatement_begin_α_212_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_212_stno
                        .long            1
                        .long            2
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         DEFINE('token()')  :(token_end)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n62_statement_begin_α:                                                        jmp   n63_define_α
n62_statement_begin_β:                                                        jmp   n65_setexit_test_α
                        .size            n62_statement_begin_bx, .-n62_statement_begin_bx
                        .type            n63_define_bx, @function
n63_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_define_α:           mov              rdi, qword ptr [rip + .Ldefine_α_215_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_215_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + LBL__token]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
.Lgcsite_main_5:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_define.cpp:172
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_4:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rip + .Ldefine_α_215_0]
                        lea              rsi, [rip + token_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
.Lgcsite_main_6:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .data
                        .align           8
entry_cell$token:       .quad            LBL__token
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rax, [rip + LBL__token]
                        mov              rcx, qword ptr [rip + entry_cell$token@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n64_statement_end_α
n63_define_β:                                                                 jmp   n62_statement_begin_β
.Ldefine_α_215_0:       .quad            .Ldefine_α_215_0_s
.Ldefine_α_215_0_s:     .string          "token"
.Ldefine_α_215_1:       .quad            .Ldefine_α_215_1_s
.Ldefine_α_215_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_216_245
#-----------------------------------------------------------------------------------------------------------------------
token_α:                sub              rsp, 48
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 0]              # token
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
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rsp + 32], rax
                        pop              rcx;                                 jmp   .Ldefine_α_216_231
.Ldefine_α_216_232:     .quad            .Ldefine_α_216_232_s
.Ldefine_α_216_232_s:   .string          "token"
.Ldefine_α_216_231:     lea              rcx, [rip + token_γ]
                        lea              rax, [rip + token_ω]
                        push             rax
                        push             rcx
                        mov              rax, qword ptr [rip + entry_cell$token@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
token_γ:
.Lgcsite_main_7:        mov              rdi, qword ptr [r9 + 0]
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rdx
                        push             rax;                                 jmp   .Ldefine_α_216_236
.Ldefine_α_216_237:     .quad            .Ldefine_α_216_237_s
.Ldefine_α_216_237_s:   .string          "token"
.Ldefine_α_216_236:     pop              rax
                        pop              rdx
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        push             rcx
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
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
token_ω:                mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        push             rcx
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
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
.Ldefine_α_216_245:
                        .size            n63_define_bx, .-n63_define_bx
                        .type            n64_statement_end_bx, @function
n64_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:                                                          jmp   n156_statement_begin_α
                        .size            n64_statement_end_bx, .-n64_statement_end_bx
                        .type            n65_setexit_test_bx, @function
n65_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_219_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_219_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_219_61:
.Lsetexit_test_α_219_1:                                                       jmp   n156_statement_begin_α
                        .size            n65_setexit_test_bx, .-n65_setexit_test_bx
                        .type            n66_statement_begin_bx, @function
n66_statement_begin_bx:
.Lstatement_begin_α_220_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_220_stno
                        .long            2
                        .long            3
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# token   num = +num
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
LBL__token:                                                                   jmp   n67_var_α
n66_statement_begin_β:                                                        jmp   n71_setexit_test_α
                        .size            n66_statement_begin_bx, .-n66_statement_begin_bx
                        .type            n67_var_bx, @function
n67_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_unop_α
                        .size            n67_var_bx, .-n67_var_bx
                        .type            n68_unop_bx, @function
n68_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_unop_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_pos@PLT
.Lgcsite_main_9:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:36
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_8:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rax, qword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lunop_α_223_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n66_statement_begin_β
.Lunop_α_223_240:                                                             jmp   n69_assign_α
n68_unop_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n66_statement_begin_β
                        .size            n68_unop_bx, .-n68_unop_bx
                        .type            n69_assign_bx, @function
n69_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:           mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # num
                        mov              qword ptr [r9 + 24], rdx;            jmp   n70_statement_end_α
                        .size            n69_assign_bx, .-n69_assign_bx
                        .type            n70_statement_end_bx, @function
n70_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_end_α:    add              rsp, 32;                             jmp   n72_statement_begin_α
                        .size            n70_statement_end_bx, .-n70_statement_end_bx
                        .type            n71_setexit_test_bx, @function
n71_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_227_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_227_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_227_61:
.Lsetexit_test_α_227_1:                                                       jmp   n72_statement_begin_α
                        .size            n71_setexit_test_bx, .-n71_setexit_test_bx
                        .type            n72_statement_begin_bx, @function
n72_statement_begin_bx:
.Lstatement_begin_α_228_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_228_stno
                        .long            3
                        .long            4
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         mem = IDENT(mem) TABLE()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n72_statement_begin_α:                                                        jmp   n73_var_α
n72_statement_begin_β:                                                        jmp   n79_setexit_test_α
                        .size            n72_statement_begin_bx, .-n72_statement_begin_bx
                        .type            n73_var_bx, @function
n73_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n74_lit_string_α
                        .size            n73_var_bx, .-n73_var_bx
                        .type            n74_lit_string_bx, @function
n74_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_231_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n75_ident_α
n74_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n72_statement_begin_β
.Llit_string_α_231_0:   .quad            .Llit_string_α_231_0_s
.Llit_string_α_231_0_s: .string          ""
                        .size            n74_lit_string_bx, .-n74_lit_string_bx
                        .type            n75_ident_bx, @function
n75_ident_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_ident_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + descr_identical@GOTPCREL]
.Lgcsite_main_10:       test             eax, eax;                            jne   .Lident_α_233_240
                        add              rsp, 16;                             jmp   n74_lit_string_β
.Lident_α_233_240:                                                            jmp   n76_call_α
n75_ident_β:            add              rsp, 16;                             jmp   n74_lit_string_β
                        .size            n75_ident_bx, .-n75_ident_bx
                        .type            n76_call_bx, @function
n76_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_call_α:             sub              rsp, 16
                        .section         .rodata
.Lcall_α_rkfnzd235:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd235]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 376900
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
.Lgcsite_main_11:       push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_12:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_α_234_240
                        add              rsp, 16;                             jmp   n75_ident_β
.Lcall_α_234_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n77_assign_α
n76_call_β:             add              rsp, 16;                             jmp   n75_ident_β
                        .size            n76_call_bx, .-n76_call_bx
                        .type            n77_assign_bx, @function
n77_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # mem
                        mov              qword ptr [r9 + 40], rdx;            jmp   n78_statement_end_α
                        .size            n77_assign_bx, .-n77_assign_bx
                        .type            n78_statement_end_bx, @function
n78_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_end_α:    add              rsp, 64;                             jmp   n80_statement_begin_α
                        .size            n78_statement_end_bx, .-n78_statement_end_bx
                        .type            n79_setexit_test_bx, @function
n79_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_239_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_239_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_239_61:
.Lsetexit_test_α_239_1:                                                       jmp   n80_statement_begin_α
                        .size            n79_setexit_test_bx, .-n79_setexit_test_bx
                        .type            n80_statement_begin_bx, @function
n80_statement_begin_bx:
.Lstatement_begin_α_240_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_240_stno
                        .long            4
                        .long            5
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         mem[num] = IDENT(mem[num]) TABLE()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n80_statement_begin_α:                                                        jmp   n81_var_α
n80_statement_begin_β:                                                        jmp   n92_setexit_test_α
                        .size            n80_statement_begin_bx, .-n80_statement_begin_bx
                        .type            n81_var_bx, @function
n81_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n82_var_α
                        .size            n81_var_bx, .-n81_var_bx
                        .type            n82_var_bx, @function
n82_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n83_subscript_α
n82_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n80_statement_begin_β
                        .size            n82_var_bx, .-n82_var_bx
                        .type            n83_subscript_bx, @function
n83_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lsubscript_α_244_0
                        test             rsi, rsi;                            jne   .Lsubscript_α_244_2
                                                                              jmp   .Lsubscript_α_244_1
.Lsubscript_α_244_0:    cmp              dil, 16;                             jne   .Lsubscript_α_244_1
                        test             rsi, rsi;                            je    .Lsubscript_α_244_1
                        mov              rdx, qword ptr [rsp + 16]
                        cmp              dl, 3;                               jne   .Lsubscript_α_244_1
                        mov              eax, dword ptr [rsi + 8]
                        cmp              eax, 1;                              jne   .Lsubscript_α_244_1
                        mov              rax, qword ptr [rsi + 32]
                        test             rax, rax;                            je    .Lsubscript_α_244_1
                        mov              rcx, qword ptr [rsp + 24]
                        mov              eax, dword ptr [rsi + 0]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jl    .Lsubscript_α_244_1
                        mov              eax, dword ptr [rsi + 4]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jg    .Lsubscript_α_244_1
                                                                              jmp   .Lsubscript_α_244_2
.Lsubscript_α_244_1:    mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
.Lgcsite_main_14:       cmp              al, 104;                             jne   .Lsubscript_α_244_240
                        add              rsp, 16;                             jmp   n82_var_β
.Lsubscript_α_244_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript_lvck.cpp:94
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_13:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:
.Lsubscript_α_244_2:    mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n84_var_α
n83_subscript_β:        add              rsp, 16;                             jmp   n82_var_β
                        .size            n83_subscript_bx, .-n83_subscript_bx
                        .type            n84_var_bx, @function
n84_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n85_var_α
n84_var_β:              add              rsp, 16;                             jmp   n83_subscript_β
                        .size            n84_var_bx, .-n84_var_bx
                        .type            n85_var_bx, @function
n85_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n86_subscript_α
n85_var_β:              add              rsp, 16;                             jmp   n84_var_β
                        .size            n85_var_bx, .-n85_var_bx
                        .type            n86_subscript_bx, @function
n86_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
.Lgcsite_main_16:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_247_240
                        add              rsp, 16;                             jmp   n85_var_β
.Lsubscript_α_247_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_15:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n87_lit_string_α
n86_subscript_β:        add              rsp, 16;                             jmp   n85_var_β
                        .size            n86_subscript_bx, .-n86_subscript_bx
                        .type            n87_lit_string_bx, @function
n87_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_248_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n88_ident_α
n87_lit_string_β:       add              rsp, 16;                             jmp   n86_subscript_β
.Llit_string_α_248_0:   .quad            .Llit_string_α_248_0_s
.Llit_string_α_248_0_s: .string          ""
                        .size            n87_lit_string_bx, .-n87_lit_string_bx
                        .type            n88_ident_bx, @function
n88_ident_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_ident_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + descr_identical@GOTPCREL]
.Lgcsite_main_17:       test             eax, eax;                            jne   .Lident_α_250_240
                        add              rsp, 16;                             jmp   n87_lit_string_β
.Lident_α_250_240:                                                            jmp   n89_call_α
n88_ident_β:            add              rsp, 16;                             jmp   n87_lit_string_β
                        .size            n88_ident_bx, .-n88_ident_bx
                        .type            n89_call_bx, @function
n89_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_call_α:             sub              rsp, 16
                        .section         .rodata
.Lcall_α_rkfnzd252:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd252]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 376900
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
.Lgcsite_main_18:       push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_19:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_α_251_240
                        add              rsp, 16;                             jmp   n88_ident_β
.Lcall_α_251_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n90_assign_var_α
n89_call_β:             add              rsp, 16;                             jmp   n88_ident_β
                        .size            n89_call_bx, .-n89_call_bx
                        .type            n90_assign_var_bx, @function
n90_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 112]           # subscript
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 128]           # var
                        mov              rcx, qword ptr [rsp + 136]
                        cmp              dil, 24;                             je    .Lassign_var_α_254_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_254_0
.Lassign_var_α_254_1:   test             rsi, rsi;                            je    .Lassign_var_α_254_0
                        mov              r8, qword ptr [rsp + 16]             # call
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_main_25:       cmp              al, 104;                             jne   .Lassign_var_α_254_238
                        add              rsp, 32;                             jmp   n88_ident_β
.Lassign_var_α_254_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:55
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_24:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n91_statement_end_α
.Lassign_var_α_254_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
.Lgcsite_main_23:       push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_22:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lassign_var_α_254_239
                        add              rsp, 32;                             jmp   n88_ident_β
.Lassign_var_α_254_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
.Lgcsite_main_21:       cmp              al, 104;                             jne   .Lassign_var_α_254_240
                        add              rsp, 32;                             jmp   n88_ident_β
.Lassign_var_α_254_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:75
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_20:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n91_statement_end_α
                        .size            n90_assign_var_bx, .-n90_assign_var_bx
                        .type            n91_statement_end_bx, @function
n91_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_end_α:    add              rsp, 160;                            jmp   n93_statement_begin_α
                        .size            n91_statement_end_bx, .-n91_statement_end_bx
                        .type            n92_setexit_test_bx, @function
n92_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_257_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_257_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_257_61:
.Lsetexit_test_α_257_1:                                                       jmp   n93_statement_begin_α
                        .size            n92_setexit_test_bx, .-n92_setexit_test_bx
                        .type            n93_statement_begin_bx, @function
n93_statement_begin_bx:
.Lstatement_begin_α_258_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_258_stno
                        .long            5
                        .long            6
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         mem[num][wrd] = IDENT(mem[num][wrd]) TABLE()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n93_statement_begin_α:                                                        jmp   n94_var_α
n93_statement_begin_β:                                                        jmp   n109_setexit_test_α
                        .size            n93_statement_begin_bx, .-n93_statement_begin_bx
                        .type            n94_var_bx, @function
n94_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n95_var_α
                        .size            n94_var_bx, .-n94_var_bx
                        .type            n95_var_bx, @function
n95_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_subscript_α
n95_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n93_statement_begin_β
                        .size            n95_var_bx, .-n95_var_bx
                        .type            n96_subscript_bx, @function
n96_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
.Lgcsite_main_27:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_262_240
                        add              rsp, 16;                             jmp   n95_var_β
.Lsubscript_α_262_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_26:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n97_var_α
n96_subscript_β:        add              rsp, 16;                             jmp   n95_var_β
                        .size            n96_subscript_bx, .-n96_subscript_bx
                        .type            n97_var_bx, @function
n97_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_subscript_α
n97_var_β:              add              rsp, 16;                             jmp   n96_subscript_β
                        .size            n97_var_bx, .-n97_var_bx
                        .type            n98_subscript_bx, @function
n98_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lsubscript_α_264_0
                        test             rsi, rsi;                            jne   .Lsubscript_α_264_2
                                                                              jmp   .Lsubscript_α_264_1
.Lsubscript_α_264_0:    cmp              dil, 16;                             jne   .Lsubscript_α_264_1
                        test             rsi, rsi;                            je    .Lsubscript_α_264_1
                        mov              rdx, qword ptr [rsp + 16]            # var
                        cmp              dl, 3;                               jne   .Lsubscript_α_264_1
                        mov              eax, dword ptr [rsi + 8]
                        cmp              eax, 1;                              jne   .Lsubscript_α_264_1
                        mov              rax, qword ptr [rsi + 32]
                        test             rax, rax;                            je    .Lsubscript_α_264_1
                        mov              rcx, qword ptr [rsp + 24]
                        mov              eax, dword ptr [rsi + 0]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jl    .Lsubscript_α_264_1
                        mov              eax, dword ptr [rsi + 4]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jg    .Lsubscript_α_264_1
                                                                              jmp   .Lsubscript_α_264_2
.Lsubscript_α_264_1:    mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
.Lgcsite_main_29:       cmp              al, 104;                             jne   .Lsubscript_α_264_240
                        add              rsp, 16;                             jmp   n97_var_β
.Lsubscript_α_264_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript_lvck.cpp:94
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_28:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:
.Lsubscript_α_264_2:    mov              rax, qword ptr [rsp + 32]            # subscript
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # subscript
                        mov              qword ptr [rsp + 8], rax;            jmp   n99_var_α
n98_subscript_β:        add              rsp, 16;                             jmp   n97_var_β
                        .size            n98_subscript_bx, .-n98_subscript_bx
                        .type            n99_var_bx, @function
n99_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_var_α
n99_var_β:              add              rsp, 16;                             jmp   n98_subscript_β
                        .size            n99_var_bx, .-n99_var_bx
                        .type            n100_var_bx, @function
n100_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_subscript_α
n100_var_β:             add              rsp, 16;                             jmp   n99_var_β
                        .size            n100_var_bx, .-n100_var_bx
                        .type            n101_subscript_bx, @function
n101_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
.Lgcsite_main_31:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_267_240
                        add              rsp, 16;                             jmp   n100_var_β
.Lsubscript_α_267_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_30:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n102_var_α
n101_subscript_β:       add              rsp, 16;                             jmp   n100_var_β
                        .size            n101_subscript_bx, .-n101_subscript_bx
                        .type            n102_var_bx, @function
n102_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_subscript_α
n102_var_β:             add              rsp, 16;                             jmp   n101_subscript_β
                        .size            n102_var_bx, .-n102_var_bx
                        .type            n103_subscript_bx, @function
n103_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
.Lgcsite_main_33:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_269_240
                        add              rsp, 16;                             jmp   n102_var_β
.Lsubscript_α_269_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_32:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n104_lit_string_α
n103_subscript_β:       add              rsp, 16;                             jmp   n102_var_β
                        .size            n103_subscript_bx, .-n103_subscript_bx
                        .type            n104_lit_string_bx, @function
n104_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_270_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n105_ident_α
n104_lit_string_β:      add              rsp, 16;                             jmp   n103_subscript_β
.Llit_string_α_270_0:   .quad            .Llit_string_α_270_0_s
.Llit_string_α_270_0_s: .string          ""
                        .size            n104_lit_string_bx, .-n104_lit_string_bx
                        .type            n105_ident_bx, @function
n105_ident_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_ident_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + descr_identical@GOTPCREL]
.Lgcsite_main_34:       test             eax, eax;                            jne   .Lident_α_272_240
                        add              rsp, 16;                             jmp   n104_lit_string_β
.Lident_α_272_240:                                                            jmp   n106_call_α
n105_ident_β:           add              rsp, 16;                             jmp   n104_lit_string_β
                        .size            n105_ident_bx, .-n105_ident_bx
                        .type            n106_call_bx, @function
n106_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_call_α:            sub              rsp, 16
                        .section         .rodata
.Lcall_α_rkfnzd274:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd274]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 376900
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
.Lgcsite_main_35:       push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_36:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_α_273_240
                        add              rsp, 16;                             jmp   n105_ident_β
.Lcall_α_273_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_assign_var_α
n106_call_β:            add              rsp, 16;                             jmp   n105_ident_β
                        .size            n106_call_bx, .-n106_call_bx
                        .type            n107_assign_var_bx, @function
n107_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 144]           # subscript
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 160]           # var
                        mov              rcx, qword ptr [rsp + 168]
                        cmp              dil, 24;                             je    .Lassign_var_α_276_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_276_0
.Lassign_var_α_276_1:   test             rsi, rsi;                            je    .Lassign_var_α_276_0
                        mov              r8, qword ptr [rsp + 16]             # call
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_main_42:       cmp              al, 104;                             jne   .Lassign_var_α_276_238
                        add              rsp, 32;                             jmp   n105_ident_β
.Lassign_var_α_276_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:55
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_41:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n108_statement_end_α
.Lassign_var_α_276_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
.Lgcsite_main_40:       push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_39:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lassign_var_α_276_239
                        add              rsp, 32;                             jmp   n105_ident_β
.Lassign_var_α_276_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
.Lgcsite_main_38:       cmp              al, 104;                             jne   .Lassign_var_α_276_240
                        add              rsp, 32;                             jmp   n105_ident_β
.Lassign_var_α_276_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:75
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_37:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n108_statement_end_α
                        .size            n107_assign_var_bx, .-n107_assign_var_bx
                        .type            n108_statement_end_bx, @function
n108_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_end_α:   add              rsp, 224;                            jmp   n110_statement_begin_α
                        .size            n108_statement_end_bx, .-n108_statement_end_bx
                        .type            n109_setexit_test_bx, @function
n109_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_279_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_279_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_279_61:
.Lsetexit_test_α_279_1:                                                       jmp   n110_statement_begin_α
                        .size            n109_setexit_test_bx, .-n109_setexit_test_bx
                        .type            n110_statement_begin_bx, @function
n110_statement_begin_bx:
.Lstatement_begin_α_280_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_280_stno
                        .long            6
                        .long            7
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         mem[num][wrd][tag] = IDENT(mem[num][wrd][tag]) 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n110_statement_begin_α:                                                       jmp   n111_var_α
n110_statement_begin_β:                                                       jmp   n130_setexit_test_α
                        .size            n110_statement_begin_bx, .-n110_statement_begin_bx
                        .type            n111_var_bx, @function
n111_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_var_α
                        .size            n111_var_bx, .-n111_var_bx
                        .type            n112_var_bx, @function
n112_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_subscript_α
n112_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n110_statement_begin_β
                        .size            n112_var_bx, .-n112_var_bx
                        .type            n113_subscript_bx, @function
n113_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
.Lgcsite_main_44:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_284_240
                        add              rsp, 16;                             jmp   n112_var_β
.Lsubscript_α_284_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_43:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n114_var_α
n113_subscript_β:       add              rsp, 16;                             jmp   n112_var_β
                        .size            n113_subscript_bx, .-n113_subscript_bx
                        .type            n114_var_bx, @function
n114_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n115_subscript_α
n114_var_β:             add              rsp, 16;                             jmp   n113_subscript_β
                        .size            n114_var_bx, .-n114_var_bx
                        .type            n115_subscript_bx, @function
n115_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
.Lgcsite_main_46:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_286_240
                        add              rsp, 16;                             jmp   n114_var_β
.Lsubscript_α_286_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_45:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n116_var_α
n115_subscript_β:       add              rsp, 16;                             jmp   n114_var_β
                        .size            n115_subscript_bx, .-n115_subscript_bx
                        .type            n116_var_bx, @function
n116_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # tag
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n117_subscript_α
n116_var_β:             add              rsp, 16;                             jmp   n115_subscript_β
                        .size            n116_var_bx, .-n116_var_bx
                        .type            n117_subscript_bx, @function
n117_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lsubscript_α_288_0
                        test             rsi, rsi;                            jne   .Lsubscript_α_288_2
                                                                              jmp   .Lsubscript_α_288_1
.Lsubscript_α_288_0:    cmp              dil, 16;                             jne   .Lsubscript_α_288_1
                        test             rsi, rsi;                            je    .Lsubscript_α_288_1
                        mov              rdx, qword ptr [rsp + 16]            # var
                        cmp              dl, 3;                               jne   .Lsubscript_α_288_1
                        mov              eax, dword ptr [rsi + 8]
                        cmp              eax, 1;                              jne   .Lsubscript_α_288_1
                        mov              rax, qword ptr [rsi + 32]
                        test             rax, rax;                            je    .Lsubscript_α_288_1
                        mov              rcx, qword ptr [rsp + 24]
                        mov              eax, dword ptr [rsi + 0]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jl    .Lsubscript_α_288_1
                        mov              eax, dword ptr [rsi + 4]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jg    .Lsubscript_α_288_1
                                                                              jmp   .Lsubscript_α_288_2
.Lsubscript_α_288_1:    mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
.Lgcsite_main_48:       cmp              al, 104;                             jne   .Lsubscript_α_288_240
                        add              rsp, 16;                             jmp   n116_var_β
.Lsubscript_α_288_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript_lvck.cpp:94
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_47:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:
.Lsubscript_α_288_2:    mov              rax, qword ptr [rsp + 32]            # subscript
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # subscript
                        mov              qword ptr [rsp + 8], rax;            jmp   n118_var_α
n117_subscript_β:       add              rsp, 16;                             jmp   n116_var_β
                        .size            n117_subscript_bx, .-n117_subscript_bx
                        .type            n118_var_bx, @function
n118_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_var_α
n118_var_β:             add              rsp, 16;                             jmp   n117_subscript_β
                        .size            n118_var_bx, .-n118_var_bx
                        .type            n119_var_bx, @function
n119_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n120_subscript_α
n119_var_β:             add              rsp, 16;                             jmp   n118_var_β
                        .size            n119_var_bx, .-n119_var_bx
                        .type            n120_subscript_bx, @function
n120_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
.Lgcsite_main_50:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_291_240
                        add              rsp, 16;                             jmp   n119_var_β
.Lsubscript_α_291_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_49:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n121_var_α
n120_subscript_β:       add              rsp, 16;                             jmp   n119_var_β
                        .size            n120_subscript_bx, .-n120_subscript_bx
                        .type            n121_var_bx, @function
n121_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n122_subscript_α
n121_var_β:             add              rsp, 16;                             jmp   n120_subscript_β
                        .size            n121_var_bx, .-n121_var_bx
                        .type            n122_subscript_bx, @function
n122_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
.Lgcsite_main_52:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_293_240
                        add              rsp, 16;                             jmp   n121_var_β
.Lsubscript_α_293_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_51:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n123_var_α
n122_subscript_β:       add              rsp, 16;                             jmp   n121_var_β
                        .size            n122_subscript_bx, .-n122_subscript_bx
                        .type            n123_var_bx, @function
n123_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # tag
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_subscript_α
n123_var_β:             add              rsp, 16;                             jmp   n122_subscript_β
                        .size            n123_var_bx, .-n123_var_bx
                        .type            n124_subscript_bx, @function
n124_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
.Lgcsite_main_54:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_295_240
                        add              rsp, 16;                             jmp   n123_var_β
.Lsubscript_α_295_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_53:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n125_lit_string_α
n124_subscript_β:       add              rsp, 16;                             jmp   n123_var_β
                        .size            n124_subscript_bx, .-n124_subscript_bx
                        .type            n125_lit_string_bx, @function
n125_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_296_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n126_ident_α
n125_lit_string_β:      add              rsp, 16;                             jmp   n124_subscript_β
.Llit_string_α_296_0:   .quad            .Llit_string_α_296_0_s
.Llit_string_α_296_0_s: .string          ""
                        .size            n125_lit_string_bx, .-n125_lit_string_bx
                        .type            n126_ident_bx, @function
n126_ident_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_ident_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + descr_identical@GOTPCREL]
.Lgcsite_main_55:       test             eax, eax;                            jne   .Lident_α_298_240
                        add              rsp, 16;                             jmp   n125_lit_string_β
.Lident_α_298_240:                                                            jmp   n127_lit_integer_α
n126_ident_β:           add              rsp, 16;                             jmp   n125_lit_string_β
                        .size            n126_ident_bx, .-n126_ident_bx
                        .type            n127_lit_integer_bx, @function
n127_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_299_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n128_assign_var_α
n127_lit_integer_β:     add              rsp, 16;                             jmp   n126_ident_β
.Llit_integer_α_299_0:  .quad            0
                        .size            n127_lit_integer_bx, .-n127_lit_integer_bx
                        .type            n128_assign_var_bx, @function
n128_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 176]           # subscript
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 192]           # var
                        mov              rcx, qword ptr [rsp + 200]
                        cmp              dil, 24;                             je    .Lassign_var_α_301_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_301_0
.Lassign_var_α_301_1:   test             rsi, rsi;                            je    .Lassign_var_α_301_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_main_61:       cmp              al, 104;                             jne   .Lassign_var_α_301_238
                        add              rsp, 16;                             jmp   n127_lit_integer_β
.Lassign_var_α_301_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:55
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_60:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n129_statement_end_α
.Lassign_var_α_301_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
.Lgcsite_main_59:       push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_58:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lassign_var_α_301_239
                        add              rsp, 16;                             jmp   n127_lit_integer_β
.Lassign_var_α_301_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
.Lgcsite_main_57:       cmp              al, 104;                             jne   .Lassign_var_α_301_240
                        add              rsp, 16;                             jmp   n127_lit_integer_β
.Lassign_var_α_301_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:75
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_56:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n129_statement_end_α
                        .size            n128_assign_var_bx, .-n128_assign_var_bx
                        .type            n129_statement_end_bx, @function
n129_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_end_α:   add              rsp, 288;                            jmp   n131_statement_begin_α
                        .size            n129_statement_end_bx, .-n129_statement_end_bx
                        .type            n130_setexit_test_bx, @function
n130_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_304_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_304_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_304_61:
.Lsetexit_test_α_304_1:                                                       jmp   n131_statement_begin_α
                        .size            n130_setexit_test_bx, .-n130_setexit_test_bx
                        .type            n131_statement_begin_bx, @function
n131_statement_begin_bx:
.Lstatement_begin_α_305_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_305_stno
                        .long            7
                        .long            8
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         mem[num][wrd][tag] = mem[num][wrd][tag] + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n131_statement_begin_α:                                                       jmp   n132_var_α
n131_statement_begin_β:                                                       jmp   n150_setexit_test_α
                        .size            n131_statement_begin_bx, .-n131_statement_begin_bx
                        .type            n132_var_bx, @function
n132_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_var_α
                        .size            n132_var_bx, .-n132_var_bx
                        .type            n133_var_bx, @function
n133_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n134_subscript_α
n133_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n131_statement_begin_β
                        .size            n133_var_bx, .-n133_var_bx
                        .type            n134_subscript_bx, @function
n134_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
.Lgcsite_main_63:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_309_240
                        add              rsp, 16;                             jmp   n133_var_β
.Lsubscript_α_309_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_62:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n135_var_α
n134_subscript_β:       add              rsp, 16;                             jmp   n133_var_β
                        .size            n134_subscript_bx, .-n134_subscript_bx
                        .type            n135_var_bx, @function
n135_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n136_subscript_α
n135_var_β:             add              rsp, 16;                             jmp   n134_subscript_β
                        .size            n135_var_bx, .-n135_var_bx
                        .type            n136_subscript_bx, @function
n136_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
.Lgcsite_main_65:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_311_240
                        add              rsp, 16;                             jmp   n135_var_β
.Lsubscript_α_311_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_64:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n137_var_α
n136_subscript_β:       add              rsp, 16;                             jmp   n135_var_β
                        .size            n136_subscript_bx, .-n136_subscript_bx
                        .type            n137_var_bx, @function
n137_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # tag
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n138_subscript_α
n137_var_β:             add              rsp, 16;                             jmp   n136_subscript_β
                        .size            n137_var_bx, .-n137_var_bx
                        .type            n138_subscript_bx, @function
n138_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lsubscript_α_313_0
                        test             rsi, rsi;                            jne   .Lsubscript_α_313_2
                                                                              jmp   .Lsubscript_α_313_1
.Lsubscript_α_313_0:    cmp              dil, 16;                             jne   .Lsubscript_α_313_1
                        test             rsi, rsi;                            je    .Lsubscript_α_313_1
                        mov              rdx, qword ptr [rsp + 16]            # var
                        cmp              dl, 3;                               jne   .Lsubscript_α_313_1
                        mov              eax, dword ptr [rsi + 8]
                        cmp              eax, 1;                              jne   .Lsubscript_α_313_1
                        mov              rax, qword ptr [rsi + 32]
                        test             rax, rax;                            je    .Lsubscript_α_313_1
                        mov              rcx, qword ptr [rsp + 24]
                        mov              eax, dword ptr [rsi + 0]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jl    .Lsubscript_α_313_1
                        mov              eax, dword ptr [rsi + 4]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jg    .Lsubscript_α_313_1
                                                                              jmp   .Lsubscript_α_313_2
.Lsubscript_α_313_1:    mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
.Lgcsite_main_67:       cmp              al, 104;                             jne   .Lsubscript_α_313_240
                        add              rsp, 16;                             jmp   n137_var_β
.Lsubscript_α_313_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript_lvck.cpp:94
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_66:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:
.Lsubscript_α_313_2:    mov              rax, qword ptr [rsp + 32]            # subscript
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # subscript
                        mov              qword ptr [rsp + 8], rax;            jmp   n139_var_α
n138_subscript_β:       add              rsp, 16;                             jmp   n137_var_β
                        .size            n138_subscript_bx, .-n138_subscript_bx
                        .type            n139_var_bx, @function
n139_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_var_α
n139_var_β:             add              rsp, 16;                             jmp   n138_subscript_β
                        .size            n139_var_bx, .-n139_var_bx
                        .type            n140_var_bx, @function
n140_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_subscript_α
n140_var_β:             add              rsp, 16;                             jmp   n139_var_β
                        .size            n140_var_bx, .-n140_var_bx
                        .type            n141_subscript_bx, @function
n141_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
.Lgcsite_main_69:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_316_240
                        add              rsp, 16;                             jmp   n140_var_β
.Lsubscript_α_316_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_68:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n142_var_α
n141_subscript_β:       add              rsp, 16;                             jmp   n140_var_β
                        .size            n141_subscript_bx, .-n141_subscript_bx
                        .type            n142_var_bx, @function
n142_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_subscript_α
n142_var_β:             add              rsp, 16;                             jmp   n141_subscript_β
                        .size            n142_var_bx, .-n142_var_bx
                        .type            n143_subscript_bx, @function
n143_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
.Lgcsite_main_71:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_318_240
                        add              rsp, 16;                             jmp   n142_var_β
.Lsubscript_α_318_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_70:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n144_var_α
n143_subscript_β:       add              rsp, 16;                             jmp   n142_var_β
                        .size            n143_subscript_bx, .-n143_subscript_bx
                        .type            n144_var_bx, @function
n144_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # tag
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n145_subscript_α
n144_var_β:             add              rsp, 16;                             jmp   n143_subscript_β
                        .size            n144_var_bx, .-n144_var_bx
                        .type            n145_subscript_bx, @function
n145_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
.Lgcsite_main_73:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_320_240
                        add              rsp, 16;                             jmp   n144_var_β
.Lsubscript_α_320_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_72:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n146_lit_integer_α
n145_subscript_β:       add              rsp, 16;                             jmp   n144_var_β
                        .size            n145_subscript_bx, .-n145_subscript_bx
                        .type            n146_lit_integer_bx, @function
n146_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_321_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n147_binop_α
n146_lit_integer_β:     add              rsp, 16;                             jmp   n145_subscript_β
.Llit_integer_α_321_0:  .quad            1
                        .size            n146_lit_integer_bx, .-n146_lit_integer_bx
                        .type            n147_binop_bx, @function
n147_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # subscript
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_322_2
                        add              rax, 1;                              jo    .Lbinop_α_322_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_322_7
.Lbinop_α_322_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_322_0
                        mov              rsi, qword ptr [rsp + 40]            # subscript
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_322_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_322_4
.Lbinop_α_322_3:        movq             xmm0, rsi
.Lbinop_α_322_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_322_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_322_7:                                                              jmp   n148_assign_var_α
.Lbinop_α_322_0:        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
.Lgcsite_main_75:       cmp              al, 104;                             jne   .Lbinop_α_322_240
                        add              rsp, 16;                             jmp   n146_lit_integer_β
.Lbinop_α_322_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_74:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n148_assign_var_α
n147_binop_β:           add              rsp, 16;                             jmp   n146_lit_integer_β
                        .size            n147_binop_bx, .-n147_binop_bx
                        .type            n148_assign_var_bx, @function
n148_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 160]           # subscript
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 176]           # var
                        mov              rcx, qword ptr [rsp + 184]
                        cmp              dil, 24;                             je    .Lassign_var_α_324_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_324_0
.Lassign_var_α_324_1:   test             rsi, rsi;                            je    .Lassign_var_α_324_0
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_main_81:       cmp              al, 104;                             jne   .Lassign_var_α_324_238
                        add              rsp, 16;                             jmp   n147_binop_β
.Lassign_var_α_324_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:55
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_80:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n149_statement_end_α
.Lassign_var_α_324_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
.Lgcsite_main_79:       push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_78:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lassign_var_α_324_239
                        add              rsp, 16;                             jmp   n147_binop_β
.Lassign_var_α_324_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
.Lgcsite_main_77:       cmp              al, 104;                             jne   .Lassign_var_α_324_240
                        add              rsp, 16;                             jmp   n147_binop_β
.Lassign_var_α_324_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:75
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_76:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n149_statement_end_α
                        .size            n148_assign_var_bx, .-n148_assign_var_bx
                        .type            n149_statement_end_bx, @function
n149_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_end_α:   add              rsp, 272;                            jmp   n151_statement_begin_α
                        .size            n149_statement_end_bx, .-n149_statement_end_bx
                        .type            n150_setexit_test_bx, @function
n150_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_327_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_327_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_327_61:
.Lsetexit_test_α_327_1:                                                       jmp   n151_statement_begin_α
                        .size            n150_setexit_test_bx, .-n150_setexit_test_bx
                        .type            n151_statement_begin_bx, @function
n151_statement_begin_bx:
.Lstatement_begin_α_328_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_328_stno
                        .long            8
                        .long            9
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         token = .dummy  :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n151_statement_begin_α:                                                       jmp   n152_lit_name_α
n151_statement_begin_β:                                                       jmp   n155_setexit_test_α
                        .size            n151_statement_begin_bx, .-n151_statement_begin_bx
                        .type            n152_lit_name_bx, @function
n152_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_name_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_330_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n153_assign_α
.Llit_name_α_330_0:     .quad            .Llit_name_α_330_0_s
.Llit_name_α_330_0_s:   .string          "dummy"
                        .size            n152_lit_name_bx, .-n152_lit_name_bx
                        .type            n153_assign_bx, @function
n153_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # token
                        mov              qword ptr [r9 + 8], rdx;             jmp   n154_statement_end_α
                        .size            n153_assign_bx, .-n153_assign_bx
                        .type            n154_statement_end_bx, @function
n154_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_end_α:   add              rsp, 16;                             jmp   NRETURN
                        .size            n154_statement_end_bx, .-n154_statement_end_bx
                        .type            n155_setexit_test_bx, @function
n155_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_334_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_334_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_334_61:
.Lsetexit_test_α_334_1:                                                       jmp   NRETURN
                        .size            n155_setexit_test_bx, .-n155_setexit_test_bx
                        .type            n156_statement_begin_bx, @function
n156_statement_begin_bx:
.Lstatement_begin_α_335_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_335_stno
                        .long            9
                        .long            10
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# token_end
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n156_statement_begin_α:                                                       jmp   n157_statement_end_α
n156_statement_begin_β:                                                       jmp   n158_setexit_test_α
                        .size            n156_statement_begin_bx, .-n156_statement_begin_bx
                        .type            n157_statement_end_bx, @function
n157_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_end_α:                                                         jmp   n159_statement_begin_α
                        .size            n157_statement_end_bx, .-n157_statement_end_bx
                        .type            n158_setexit_test_bx, @function
n158_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_339_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_339_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_339_61:
.Lsetexit_test_α_339_1:                                                       jmp   n159_statement_begin_α
                        .size            n158_setexit_test_bx, .-n158_setexit_test_bx
                        .type            n159_statement_begin_bx, @function
n159_statement_begin_bx:
.Lstatement_begin_α_340_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_340_stno
                        .long            10
                        .long            12
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         &TRIM   =   0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n159_statement_begin_α:                                                       jmp   n160_lit_integer_α
n159_statement_begin_β:                                                       jmp   n163_setexit_test_α
                        .size            n159_statement_begin_bx, .-n159_statement_begin_bx
                        .type            n160_lit_integer_bx, @function
n160_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_342_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n161_kw_assign_snobol4_α
.Llit_integer_α_342_0:  .quad            0
                        .size            n160_lit_integer_bx, .-n160_lit_integer_bx
                        .type            n161_kw_assign_snobol4_bx, @function
n161_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_343_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_write_idx@PLT
.Lgcsite_main_83:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_343_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n159_statement_begin_β
.Lkw_assign_snobol4_α_343_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_keyword_assign_snobol4.cpp:32
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_82:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n162_statement_end_α
.Lkw_assign_snobol4_α_343_0:
                        .quad            1
                        .size            n161_kw_assign_snobol4_bx, .-n161_kw_assign_snobol4_bx
                        .type            n162_statement_end_bx, @function
n162_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_end_α:   add              rsp, 32;                             jmp   n164_statement_begin_α
                        .size            n162_statement_end_bx, .-n162_statement_end_bx
                        .type            n163_setexit_test_bx, @function
n163_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_346_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_346_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_346_61:
.Lsetexit_test_α_346_1:                                                       jmp   n164_statement_begin_α
                        .size            n163_setexit_test_bx, .-n163_setexit_test_bx
                        .type            n164_statement_begin_bx, @function
n164_statement_begin_bx:
.Lstatement_begin_α_347_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_347_stno
                        .long            11
                        .long            13
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         claws   =   POS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n164_statement_begin_α:                                                       jmp   n165_lit_string_α
n164_statement_begin_β:                                                       jmp   n169_setexit_test_α
                        .size            n164_statement_begin_bx, .-n164_statement_begin_bx
                        .type            n165_lit_string_bx, @function
n165_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_349_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n166_call_α
.Llit_string_α_349_0:   .quad            .Lthk_.LTp0
                        .size            n165_lit_string_bx, .-n165_lit_string_bx
                        .type            n166_call_bx, @function
n166_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_84:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_85:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_350_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n164_statement_begin_β
.Lcall_α_350_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n167_assign_α
n166_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n164_statement_begin_β
                        .size            n166_call_bx, .-n166_call_bx
                        .type            n167_assign_bx, @function
n167_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # claws
                        mov              qword ptr [r9 + 104], rdx;           jmp   n168_statement_end_α
                        .size            n167_assign_bx, .-n167_assign_bx
                        .type            n168_statement_end_bx, @function
n168_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_end_α:   add              rsp, 32;                             jmp   n170_statement_begin_α
                        .size            n168_statement_end_bx, .-n168_statement_end_bx
                        .type            n169_setexit_test_bx, @function
n169_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_354_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_354_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_354_61:
.Lsetexit_test_α_354_1:                                                       jmp   n170_statement_begin_α
                        .size            n169_setexit_test_bx, .-n169_setexit_test_bx
                        .type            n170_statement_begin_bx, @function
n170_statement_begin_bx:
.Lstatement_begin_α_355_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_355_stno
                        .long            12
                        .long            24
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n170_statement_begin_α:                                                       jmp   n171_lit_name_α
n170_statement_begin_β:                                                       jmp   n176_setexit_test_α
                        .size            n170_statement_begin_bx, .-n170_statement_begin_bx
                        .type            n171_lit_name_bx, @function
n171_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_name_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_357_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n172_lit_integer_α
.Llit_name_α_357_0:     .quad            .Llit_name_α_357_0_s
.Llit_name_α_357_0_s:   .string          "INPUT"
                        .size            n171_lit_name_bx, .-n171_lit_name_bx
                        .type            n172_lit_integer_bx, @function
n172_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_358_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n173_lit_string_α
n172_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n170_statement_begin_β
.Llit_integer_α_358_0:  .quad            9
                        .size            n172_lit_integer_bx, .-n172_lit_integer_bx
                        .type            n173_lit_string_bx, @function
n173_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_359_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n174_call_α
n173_lit_string_β:      add              rsp, 16;                             jmp   n172_lit_integer_β
.Llit_string_α_359_0:   .quad            .Llit_string_α_359_0_s
.Llit_string_α_359_0_s: .string          "[-f0 -r4194304]"
                        .size            n173_lit_string_bx, .-n173_lit_string_bx
                        .type            n174_call_bx, @function
n174_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_α_bynamefnzd136: .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd136]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 360448
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl_sn4@PLT
.Lgcsite_main_86:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_87:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_360_240
                        add              rsp, 16;                             jmp   n173_lit_string_β
.Lcall_α_360_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n175_statement_end_α
n174_call_β:            add              rsp, 16;                             jmp   n173_lit_string_β
                        .size            n174_call_bx, .-n174_call_bx
                        .type            n175_statement_end_bx, @function
n175_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_end_α:   add              rsp, 64;                             jmp   n177_statement_begin_α
                        .size            n175_statement_end_bx, .-n175_statement_end_bx
                        .type            n176_setexit_test_bx, @function
n176_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_363_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_363_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_363_61:
.Lsetexit_test_α_363_1:                                                       jmp   n177_statement_begin_α
                        .size            n176_setexit_test_bx, .-n176_setexit_test_bx
                        .type            n177_statement_begin_bx, @function
n177_statement_begin_bx:
.Lstatement_begin_α_364_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_364_stno
                        .long            13
                        .long            25
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         src     =   INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n177_statement_begin_α:                                                       jmp   n178_var_α
n177_statement_begin_β:                                                       jmp   n181_setexit_test_α
                        .size            n177_statement_begin_bx, .-n177_statement_begin_bx
                        .type            n178_var_bx, @function
n178_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lvar_α_366_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
.Lgcsite_main_89:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_366_240
                        add              rsp, 16;                             jmp   n177_statement_begin_β
.Lvar_α_366_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_var_global.cpp:72
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_88:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n179_assign_α
.Lvar_α_366_0:          .quad            .Lvar_α_366_0_s
.Lvar_α_366_0_s:        .string          "INPUT"
                        .size            n178_var_bx, .-n178_var_bx
                        .type            n179_assign_bx, @function
n179_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # src
                        mov              qword ptr [r9 + 120], rdx;           jmp   n180_statement_end_α
                        .size            n179_assign_bx, .-n179_assign_bx
                        .type            n180_statement_end_bx, @function
n180_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_end_α:   add              rsp, 16;                             jmp   n182_statement_begin_α
                        .size            n180_statement_end_bx, .-n180_statement_end_bx
                        .type            n181_setexit_test_bx, @function
n181_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_370_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_370_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_370_61:
.Lsetexit_test_α_370_1:                                                       jmp   n199_statement_begin_α
                        .size            n181_setexit_test_bx, .-n181_setexit_test_bx
                        .type            n182_statement_begin_bx, @function
n182_statement_begin_bx:
.Lstatement_begin_α_371_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_371_stno
                        .long            14
                        .long            26
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         src     ?   claws  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 26 0
n182_statement_begin_α:                                                       jmp   n183_var_α
n182_statement_begin_β:                                                       jmp   n190_setexit_test_α
                        .size            n182_statement_begin_bx, .-n182_statement_begin_bx
                        .type            n183_var_bx, @function
n183_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # src
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n184_var_α
                        .size            n183_var_bx, .-n183_var_bx
                        .type            n184_var_bx, @function
n184_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # claws
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n185_assign_α
n184_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n190_setexit_test_α
                        .size            n184_var_bx, .-n184_var_bx
                        .type            n185_assign_bx, @function
n185_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # PATV$0
                        mov              qword ptr [r9 + 136], rdx;           jmp   n186_match_begin_α
n185_assign_β:                                                                jmp   n184_var_β
                        .size            n185_assign_bx, .-n185_assign_bx
                        .type            n186_match_begin_bx, @function
n186_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_match_begin_α:     mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
.Lgcsite_main_93:       push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 56
                        mov              rax, qword ptr [rip + Σ@GOTPCREL]
                        mov              rax, qword ptr [rax]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              ecx, dword ptr [rcx + 0]
                        mov              dword ptr [rbp + -88], 2
                        mov              dword ptr [rbp + -84], ecx
                        mov              qword ptr [rbp + -80], rax
                        neg              rax
                        mov              qword ptr [rbp + -72], rax
                        call             qword ptr [rip + rt_match_enter@GOTPCREL]
.Lgcsite_main_92:       push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], edx
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_91:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0               # cas_mark
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_377_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_377_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n187_match_defer_α
n186_match_begin_β:
.Lmatch_begin_α_377_13: lea              rsp, [rbp + -88]                     # retry_whack
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_β_377_1
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_377_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_377_1
                                                                              jmp   .Lmatch_begin_α_377_0
.Lmatch_begin_β_377_1:
.Lmatch_begin_γ_186_af:
.Lmatch_begin_ω_186_af: mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        lea              rdx, [rbp + -88]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
.Lgcsite_main_90:       mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              r13, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n185_assign_β
                        .size            n186_match_begin_bx, .-n186_match_begin_bx
                        .type            n187_match_defer_bx, @function
n187_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_match_defer_α:     mov              rax, qword ptr [r9 + 128]            # PATV$0
                        mov              rdx, qword ptr [r9 + 136]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_378_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_378_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
.Lgcsite_main_109:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_match_defer.cpp:150
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_108:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdx, qword ptr [r9 + 136];           jmp   .Lmatch_defer_α_378_10
.Lmatch_defer_α_378_9:  xor              eax, eax
.Lmatch_defer_α_378_10: test             rax, rax;                            jz    .Lmatch_defer_α_378_0
.Lmatch_defer_α_378_48: mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_378_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_378_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_378_4:                                                        jmp   n188_match_end_α
.Lmatch_defer_α_378_5:  cmp              r14d, -2;                            je    .Lmatch_begin_ω_186_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_186_af
                                                                              jmp   n186_match_begin_β
.Lmatch_defer_α_378_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        lea              rdi, [r9 + 128]                      # PATV$0
                        xor              esi, esi
                        mov              rdx, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open_cell@PLT
.Lgcsite_main_107:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_378_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_378_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_106:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_378_2:  test             rax, rax;                            je    .Lmatch_defer_α_378_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_378_40
                        sub              rsp, 64
                        mov              qword ptr [rsp + 56], r12
                        mov              qword ptr [rsp + 48], rbx
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rcx, rdx
                        and              rcx, 63
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_378_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_378_141
                        lea              rcx, [rip + .Lmatch_defer_α_378_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_378_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_378_42]
                        lea              rdx, [rip + .Lmatch_defer_α_378_43]; jmp   rax
.Lmatch_defer_α_378_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_378_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_378_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_378_44:
.Lgcsite_main_105:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_378_46
.Lmatch_defer_α_378_45:
.Lgcsite_main_104:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_378_47
.Lmatch_defer_α_378_42:
.Lgcsite_main_103:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_378_46
.Lmatch_defer_α_378_43:
.Lgcsite_main_102:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_378_47
.Lmatch_defer_α_378_141:
                        lea              rcx, [rip + .Lmatch_defer_α_378_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_378_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_378_142]
                        lea              rdx, [rip + .Lmatch_defer_α_378_143]
                                                                              jmp   rax
.Lmatch_defer_α_378_142:
.Lgcsite_main_101:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_378_46
.Lmatch_defer_α_378_143:
.Lgcsite_main_100:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_378_47
.Lmatch_defer_α_378_46: mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_main_99:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_378_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_378_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_98:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_378_2
.Lmatch_defer_α_378_47: mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_main_97:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_378_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_378_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_96:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_378_2
.Lmatch_defer_α_378_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_378_48
.Lmatch_defer_α_378_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_main_95:       add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_94:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_378_49: cmp              r14d, -2;                            je    .Lmatch_begin_ω_186_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_186_af
                        test             eax, eax;                            js    n186_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_378_6]
                        push             rcx
                        push             rax;                                 jmp   n188_match_end_α
.Lmatch_defer_α_378_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n186_match_begin_β
n187_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_378_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_378_12
                                                                              jmp   rax
.Lmatch_defer_β_378_12:                                                       jmp   qword ptr [rsp]
                        .size            n187_match_defer_bx, .-n187_match_defer_bx
                        .type            n188_match_end_bx, @function
n188_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_match_end_α:       mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_186_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 112
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rsi, r12
                        mov              rdx, r13
                        mov              rcx, rsp
                        call             qword ptr [rip + rt_dcap_end_ok_open@GOTPCREL]
.Lgcsite_main_123:      push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_122:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:
.Lmatch_end_α_380_1:    cmp              rax, 1;                              jbe   .Lmatch_end_α_380_2
                        sub              rsp, 64
                        mov              qword ptr [rsp + 56], r12
                        mov              qword ptr [rsp + 48], rbx
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rcx, rdx
                        and              rcx, 63
                        cmp              rcx, 2;                              je    .Lmatch_end_α_380_20
                        cmp              rcx, 1;                              je    .Lmatch_end_α_380_120
                        lea              rcx, [rip + .Lmatch_end_α_380_22]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_380_21]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_380_21]
                        lea              rdx, [rip + .Lmatch_end_α_380_22];   jmp   rax
.Lmatch_end_α_380_20:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_380_23]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_380_24]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_end_α_380_23:
.Lgcsite_main_121:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_380_8
.Lmatch_end_α_380_24:
.Lgcsite_main_120:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_380_9
.Lmatch_end_α_380_21:
.Lgcsite_main_119:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_380_8
.Lmatch_end_α_380_22:
.Lgcsite_main_118:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_380_9
.Lmatch_end_α_380_120:  lea              rcx, [rip + .Lmatch_end_α_380_122]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_380_121]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_380_121]
                        lea              rdx, [rip + .Lmatch_end_α_380_122];  jmp   rax
.Lmatch_end_α_380_121:
.Lgcsite_main_117:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_380_8
.Lmatch_end_α_380_122:
.Lgcsite_main_116:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_380_9
.Lmatch_end_α_380_8:    mov              rdx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_land_γ@PLT
.Lgcsite_main_115:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_114:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_380_1
.Lmatch_end_α_380_9:    mov              rdi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_land_ω@PLT
.Lgcsite_main_113:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_112:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_380_1
.Lmatch_end_α_380_2:    add              rsp, 112
                        mov              qword ptr [rsp + 0], rax
                        mov              rdi, qword ptr [rbp + -16]           # outer_Σ
                        mov              rsi, qword ptr [rbp + -32]           # outer_Δ
                        lea              rdx, [rbp + -88]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
.Lgcsite_main_111:      mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              rax, qword ptr [rsp + 0]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        test             rax, rax;                            je    .Lmatch_end_α_380_13
                                                                              jmp   .Lmatch_begin_ω_186_af
.Lmatch_end_α_380_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp
.Lgcsite_main_110:                                                            jmp   n189_statement_end_α
                        .size            n188_match_end_bx, .-n188_match_end_bx
                        .type            n189_statement_end_bx, @function
n189_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_end_α:   add              rsp, 32;                             jmp   n191_statement_begin_α
                        .size            n189_statement_end_bx, .-n189_statement_end_bx
                        .type            n190_setexit_test_bx, @function
n190_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_383_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_383_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_383_61:
.Lsetexit_test_α_383_1:                                                       jmp   n199_statement_begin_α
                        .size            n190_setexit_test_bx, .-n190_setexit_test_bx
                        .type            n191_statement_begin_bx, @function
n191_statement_begin_bx:
.Lstatement_begin_α_384_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_384_stno
                        .long            15
                        .long            27
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         OUTPUT  =   'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n191_statement_begin_α:                                                       jmp   n192_lit_string_α
n191_statement_begin_β:                                                       jmp   n198_setexit_test_α
                        .size            n191_statement_begin_bx, .-n191_statement_begin_bx
                        .type            n192_lit_string_bx, @function
n192_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_386_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n193_var_α
.Llit_string_α_386_0:   .quad            .Llit_string_α_386_0_s
.Llit_string_α_386_0_s: .string          "matched bytes="
                        .size            n192_lit_string_bx, .-n192_lit_string_bx
                        .type            n193_var_bx, @function
n193_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # src
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n194_call_α
n193_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n191_statement_begin_β
                        .size            n193_var_bx, .-n193_var_bx
                        .type            n194_call_bx, @function
n194_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd389:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd389]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
.Lgcsite_main_124:      push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_125:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_388_240
                        add              rsp, 16;                             jmp   n193_var_β
.Lcall_α_388_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n195_binop_α
n194_call_β:            add              rsp, 16;                             jmp   n193_var_β
                        .size            n194_call_bx, .-n194_call_bx
                        .type            n195_binop_bx, @function
n195_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             sno_concat_d@PLT
.Lgcsite_main_127:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_126:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_390_240
                        add              rsp, 32;                             jmp   n193_var_β
.Lbinop_α_390_240:                                                            jmp   n196_assign_α
n195_binop_β:           add              rsp, 32;                             jmp   n193_var_β
                        .size            n195_binop_bx, .-n195_binop_bx
                        .type            n196_assign_bx, @function
n196_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_391_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
.Lgcsite_main_129:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_128:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n197_statement_end_α
.Lassign_α_391_0:       .quad            .Lassign_α_391_0_s
.Lassign_α_391_0_s:     .string          "OUTPUT"
                        .size            n196_assign_bx, .-n196_assign_bx
                        .type            n197_statement_end_bx, @function
n197_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_statement_end_α:   add              rsp, 64;                             jmp   main_γ
                        .size            n197_statement_end_bx, .-n197_statement_end_bx
                        .type            n198_setexit_test_bx, @function
n198_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_394_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_394_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_394_61:
.Lsetexit_test_α_394_1:                                                       jmp   main_γ
                        .size            n198_setexit_test_bx, .-n198_setexit_test_bx
                        .type            n199_statement_begin_bx, @function
n199_statement_begin_bx:
.Lstatement_begin_α_395_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_395_stno
                        .long            16
                        .long            28
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# error   OUTPUT  =   'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n199_statement_begin_α:                                                       jmp   n200_lit_string_α
n199_statement_begin_β:                                                       jmp   n203_setexit_test_α
                        .size            n199_statement_begin_bx, .-n199_statement_begin_bx
                        .type            n200_lit_string_bx, @function
n200_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_397_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n201_assign_α
.Llit_string_α_397_0:   .quad            .Llit_string_α_397_0_s
.Llit_string_α_397_0_s: .string          "Pattern match failed"
                        .size            n200_lit_string_bx, .-n200_lit_string_bx
                        .type            n201_assign_bx, @function
n201_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_398_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
.Lgcsite_main_131:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_130:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n202_statement_end_α
.Lassign_α_398_0:       .quad            .Lassign_α_398_0_s
.Lassign_α_398_0_s:     .string          "OUTPUT"
                        .size            n201_assign_bx, .-n201_assign_bx
                        .type            n202_statement_end_bx, @function
n202_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_statement_end_α:   add              rsp, 16;                             jmp   main_γ
                        .size            n202_statement_end_bx, .-n202_statement_end_bx
                        .type            n203_setexit_test_bx, @function
n203_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_401_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_401_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_401_61:
.Lsetexit_test_α_401_1:                                                       jmp   main_γ
                        .size            n203_setexit_test_bx, .-n203_setexit_test_bx
                        .type            n204_goto_bx, @function
n204_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_goto_α:                                                                  jmp   LBL__token
n204_goto_β:                                                                  jmp   main_ω
                        .size            n204_goto_bx, .-n204_goto_bx
                        .type            n205_goto_bx, @function
n205_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_goto_α:                                                                  jmp   n156_statement_begin_α
n205_goto_β:                                                                  jmp   main_ω
                        .size            n205_goto_bx, .-n205_goto_bx
                        .type            n206_goto_bx, @function
n206_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_goto_α:                                                                  jmp   n199_statement_begin_α
n206_goto_β:                                                                  jmp   main_ω
                        .size            n206_goto_bx, .-n206_goto_bx
                        .type            n207_define_bx, @function
n207_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              edi, 1
                        call             qword ptr [rip + rt_kw_set_rtntype_role@GOTPCREL]
.Lgcsite_main_132:      pop              rcx
                        add              rsp, 8;                              jmp   rcx
                        .size            n207_define_bx, .-n207_define_bx
                        .type            n208_define_bx, @function
n208_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              edi, 2
                        call             qword ptr [rip + rt_kw_set_rtntype_role@GOTPCREL]
.Lgcsite_main_133:      add              rsp, 8
                        pop              rcx;                                 jmp   rcx
                        .size            n208_define_bx, .-n208_define_bx
                        .type            n209_lit_string_bx, @function
n209_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                push             rax
                        mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rax + 0], 1
                        pop              rax;                                 jmp   RETURN
                        .size            n209_lit_string_bx, .-n209_lit_string_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        call             sno_setexit_fire_on_end@PLT
.Lgcsite_main_136:      push             rax                                  # gc_poll bb_glue_flat.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_135:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      xor              edi, edi
                        call             exit@PLT
.Lgcsite_main_134:
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
.Lgcsite_main_137:
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            8316403141978
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            1920
                        .quad            5
                        .quad            1794402976530432
                        .quad            8800387991136
                        .quad            17600775980648
                        .quad            79169132168824
                        .quad            211106232534720
.Lgcmap_main_s:         .string          "main"
.Lgcsites_main_1:       .quad            138
                        .quad            .Lgcmap_main
                        .quad            0
                        .quad            .Lgcsite_main_0
                        .quad            68719476737
                        .quad            .Lgcsite_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_2
                        .quad            137438953473
                        .quad            .Lgcsite_main_3
                        .quad            274877906945
                        .quad            .Lgcsite_main_4
                        .quad            1
                        .quad            .Lgcsite_main_5
                        .quad            1
                        .quad            .Lgcsite_main_6
                        .quad            1
                        .quad            .Lgcsite_main_7
                        .quad            13511005041000454
                        .quad            .Lgcsite_main_8
                        .quad            137438953473
                        .quad            .Lgcsite_main_9
                        .quad            137438953473
                        .quad            .Lgcsite_main_10
                        .quad            206158430209
                        .quad            .Lgcsite_main_11
                        .quad            274877906945
                        .quad            .Lgcsite_main_12
                        .quad            412316860417
                        .quad            .Lgcsite_main_13
                        .quad            206158430209
                        .quad            .Lgcsite_main_14
                        .quad            206158430209
                        .quad            .Lgcsite_main_15
                        .quad            412316860417
                        .quad            .Lgcsite_main_16
                        .quad            412316860417
                        .quad            .Lgcsite_main_17
                        .quad            549755813889
                        .quad            .Lgcsite_main_18
                        .quad            618475290625
                        .quad            .Lgcsite_main_19
                        .quad            755914244097
                        .quad            .Lgcsite_main_20
                        .quad            687194767361
                        .quad            .Lgcsite_main_21
                        .quad            687194767361
                        .quad            .Lgcsite_main_22
                        .quad            755914244097
                        .quad            .Lgcsite_main_23
                        .quad            687194767361
                        .quad            .Lgcsite_main_24
                        .quad            687194767361
                        .quad            .Lgcsite_main_25
                        .quad            687194767361
                        .quad            .Lgcsite_main_26
                        .quad            206158430209
                        .quad            .Lgcsite_main_27
                        .quad            206158430209
                        .quad            .Lgcsite_main_28
                        .quad            343597383681
                        .quad            .Lgcsite_main_29
                        .quad            343597383681
                        .quad            .Lgcsite_main_30
                        .quad            549755813889
                        .quad            .Lgcsite_main_31
                        .quad            549755813889
                        .quad            .Lgcsite_main_32
                        .quad            687194767361
                        .quad            .Lgcsite_main_33
                        .quad            687194767361
                        .quad            .Lgcsite_main_34
                        .quad            824633720833
                        .quad            .Lgcsite_main_35
                        .quad            893353197569
                        .quad            .Lgcsite_main_36
                        .quad            1030792151041
                        .quad            .Lgcsite_main_37
                        .quad            962072674305
                        .quad            .Lgcsite_main_38
                        .quad            962072674305
                        .quad            .Lgcsite_main_39
                        .quad            1030792151041
                        .quad            .Lgcsite_main_40
                        .quad            962072674305
                        .quad            .Lgcsite_main_41
                        .quad            962072674305
                        .quad            .Lgcsite_main_42
                        .quad            962072674305
                        .quad            .Lgcsite_main_43
                        .quad            206158430209
                        .quad            .Lgcsite_main_44
                        .quad            206158430209
                        .quad            .Lgcsite_main_45
                        .quad            343597383681
                        .quad            .Lgcsite_main_46
                        .quad            343597383681
                        .quad            .Lgcsite_main_47
                        .quad            481036337153
                        .quad            .Lgcsite_main_48
                        .quad            481036337153
                        .quad            .Lgcsite_main_49
                        .quad            687194767361
                        .quad            .Lgcsite_main_50
                        .quad            687194767361
                        .quad            .Lgcsite_main_51
                        .quad            824633720833
                        .quad            .Lgcsite_main_52
                        .quad            824633720833
                        .quad            .Lgcsite_main_53
                        .quad            962072674305
                        .quad            .Lgcsite_main_54
                        .quad            962072674305
                        .quad            .Lgcsite_main_55
                        .quad            1099511627777
                        .quad            .Lgcsite_main_56
                        .quad            1236950581249
                        .quad            .Lgcsite_main_57
                        .quad            1236950581249
                        .quad            .Lgcsite_main_58
                        .quad            1305670057985
                        .quad            .Lgcsite_main_59
                        .quad            1236950581249
                        .quad            .Lgcsite_main_60
                        .quad            1236950581249
                        .quad            .Lgcsite_main_61
                        .quad            1236950581249
                        .quad            .Lgcsite_main_62
                        .quad            206158430209
                        .quad            .Lgcsite_main_63
                        .quad            206158430209
                        .quad            .Lgcsite_main_64
                        .quad            343597383681
                        .quad            .Lgcsite_main_65
                        .quad            343597383681
                        .quad            .Lgcsite_main_66
                        .quad            481036337153
                        .quad            .Lgcsite_main_67
                        .quad            481036337153
                        .quad            .Lgcsite_main_68
                        .quad            687194767361
                        .quad            .Lgcsite_main_69
                        .quad            687194767361
                        .quad            .Lgcsite_main_70
                        .quad            824633720833
                        .quad            .Lgcsite_main_71
                        .quad            824633720833
                        .quad            .Lgcsite_main_72
                        .quad            962072674305
                        .quad            .Lgcsite_main_73
                        .quad            962072674305
                        .quad            .Lgcsite_main_74
                        .quad            1099511627777
                        .quad            .Lgcsite_main_75
                        .quad            1099511627777
                        .quad            .Lgcsite_main_76
                        .quad            1168231104513
                        .quad            .Lgcsite_main_77
                        .quad            1168231104513
                        .quad            .Lgcsite_main_78
                        .quad            1236950581249
                        .quad            .Lgcsite_main_79
                        .quad            1168231104513
                        .quad            .Lgcsite_main_80
                        .quad            1168231104513
                        .quad            .Lgcsite_main_81
                        .quad            1168231104513
                        .quad            .Lgcsite_main_82
                        .quad            137438953473
                        .quad            .Lgcsite_main_83
                        .quad            137438953473
                        .quad            .Lgcsite_main_84
                        .quad            206158430209
                        .quad            .Lgcsite_main_85
                        .quad            343597383681
                        .quad            .Lgcsite_main_86
                        .quad            481036337153
                        .quad            .Lgcsite_main_87
                        .quad            618475290625
                        .quad            .Lgcsite_main_88
                        .quad            68719476737
                        .quad            .Lgcsite_main_89
                        .quad            68719476737
                        .quad            .Lgcsite_main_90
                        .quad            137439346945
                        .quad            .Lgcsite_main_91
                        .quad            137439346945
                        .quad            .Lgcsite_main_92
                        .quad            137439346945
                        .quad            .Lgcsite_main_93
                        .quad            137438953476
                        .quad            .Lgcsite_main_94
                        .quad            137439346945
                        .quad            .Lgcsite_main_95
                        .quad            137439346945
                        .quad            .Lgcsite_main_96
                        .quad            137439346945
                        .quad            .Lgcsite_main_97
                        .quad            137439346945
                        .quad            .Lgcsite_main_98
                        .quad            137439346945
                        .quad            .Lgcsite_main_99
                        .quad            137439346945
                        .quad            .Lgcsite_main_100
                        .quad            137439346946
                        .quad            .Lgcsite_main_101
                        .quad            137439346946
                        .quad            .Lgcsite_main_102
                        .quad            137439346946
                        .quad            .Lgcsite_main_103
                        .quad            137439346946
                        .quad            .Lgcsite_main_104
                        .quad            137439346946
                        .quad            .Lgcsite_main_105
                        .quad            137439346946
                        .quad            .Lgcsite_main_106
                        .quad            137439346945
                        .quad            .Lgcsite_main_107
                        .quad            137439346945
                        .quad            .Lgcsite_main_108
                        .quad            137439346945
                        .quad            .Lgcsite_main_109
                        .quad            137439346945
                        .quad            .Lgcsite_main_110
                        .quad            137438953477
                        .quad            .Lgcsite_main_111
                        .quad            137439346945
                        .quad            .Lgcsite_main_112
                        .quad            137439346945
                        .quad            .Lgcsite_main_113
                        .quad            137439346945
                        .quad            .Lgcsite_main_114
                        .quad            137439346945
                        .quad            .Lgcsite_main_115
                        .quad            137439346945
                        .quad            .Lgcsite_main_116
                        .quad            137439346946
                        .quad            .Lgcsite_main_117
                        .quad            137439346946
                        .quad            .Lgcsite_main_118
                        .quad            137439346946
                        .quad            .Lgcsite_main_119
                        .quad            137439346946
                        .quad            .Lgcsite_main_120
                        .quad            137439346946
                        .quad            .Lgcsite_main_121
                        .quad            137439346946
                        .quad            .Lgcsite_main_122
                        .quad            137439346945
                        .quad            .Lgcsite_main_123
                        .quad            137439346945
                        .quad            .Lgcsite_main_124
                        .quad            274877906945
                        .quad            .Lgcsite_main_125
                        .quad            412316860417
                        .quad            .Lgcsite_main_126
                        .quad            274877906945
                        .quad            .Lgcsite_main_127
                        .quad            274877906945
                        .quad            .Lgcsite_main_128
                        .quad            343597383681
                        .quad            .Lgcsite_main_129
                        .quad            274877906945
                        .quad            .Lgcsite_main_130
                        .quad            137438953473
                        .quad            .Lgcsite_main_131
                        .quad            68719476737
                        .quad            .Lgcsite_main_132
                        .quad            1
                        .quad            .Lgcsite_main_133
                        .quad            1
                        .quad            .Lgcsite_main_134
                        .quad            1
                        .quad            .Lgcsite_main_135
                        .quad            1
                        .quad            .Lgcsite_main_136
                        .quad            1
                        .quad            .Lgcsite_main_137
                        .quad            1
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__token"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__token
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1920
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lseala1:               .string          "token"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            token_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + token_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            2
                        .quad            .Lgcmap_.LTp0
                        .quad            .Lgcmap_main
                        .align           8
__gc_frame_sites:       .quad            2
                        .quad            .Lgcsites_.LTp0_0
                        .quad            .Lgcsites_main_1
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.S0:                    .string          "wrd"
.S1:                    .string          "tag"
.S2:                    .string          "num"
                        .text
                        .section         .data
                        .p2align         3
.Ldstar_$2Atoken:       .byte            42, 1, 0, 0, 0, 0, 0, 0
                        .quad            .Ldstarn_$2Atoken
                        .long            -1, 0
                        .section         .rodata
.Ldstarn_$2Atoken:      .string          "*token"
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C1:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
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
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C2:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
