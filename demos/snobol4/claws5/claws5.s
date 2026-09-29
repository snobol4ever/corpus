                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/claws5/claws5.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 312
                        lea              rax, [rip + .Lgcmap_PAT$0]
                        mov              qword ptr [rbp + -304], rax
                        mov              dword ptr [rbp + -312], 160
                        mov              dword ptr [rbp + -308], 312
                        mov              eax, 0
                        lea              rdi, [rbp + -296]
                        xor              eax, eax
                        mov              ecx, 296
                        rep              stosb
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n0_match_pos_bx, @function
n0_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_pos_α:         mov              r11, 1
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$0_ω
                                                                              jmp   n1_match_arbno_α
n0_match_pos_β:         mov              r11, 1;                              jmp   PAT$0_ω
                        .size            n0_match_pos_bx, .-n0_match_pos_bx
                        .type            n1_match_arbno_bx, @function
n1_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_match_arbno_α:       mov              r11, 2
                        sub              rsp, 208
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   n2_match_rpos_α
n1_match_arbno_β:       mov              r11, 2
                        mov              rax, qword ptr [rbp + -48]
                        mov              r12, qword ptr [rax + 8];            jmp   n3_match_fence1_α
.Lmatch_arbno_γ_1_as:   mov              r11, 2
                        mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n4_match_span_β
                        sub              rsp, 208
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              rax, qword ptr [rbp + -224]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rbp + -216]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rbp + -208]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rbp + -200]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rbp + -192]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rbp + -184]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rbp + -176]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rbp + -168]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rbp + -160]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rbp + -152]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rbp + -144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rbp + -136]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rbp + -128]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rbp + -120]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rbp + -112]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rbp + -104]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rbp + -96]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rbp + -88]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rbp + -80]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rbp + -72]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rbp + -56]
                        mov              qword ptr [rsp + 200], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   n2_match_rpos_α
.Lmatch_arbno_γ_1_af:   mov              r11, 2
.Lmatch_arbno_ω_1_af:   mov              r11, 2
                        mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -48], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_23_3
                        mov              rax, qword ptr [rcx + 32]
                        mov              qword ptr [rbp + -224], rax
                        mov              rax, qword ptr [rcx + 40]
                        mov              qword ptr [rbp + -216], rax
                        mov              rax, qword ptr [rcx + 48]
                        mov              qword ptr [rbp + -208], rax
                        mov              rax, qword ptr [rcx + 56]
                        mov              qword ptr [rbp + -200], rax
                        mov              rax, qword ptr [rcx + 64]
                        mov              qword ptr [rbp + -192], rax
                        mov              rax, qword ptr [rcx + 72]
                        mov              qword ptr [rbp + -184], rax
                        mov              rax, qword ptr [rcx + 80]
                        mov              qword ptr [rbp + -176], rax
                        mov              rax, qword ptr [rcx + 88]
                        mov              qword ptr [rbp + -168], rax
                        mov              rax, qword ptr [rcx + 96]
                        mov              qword ptr [rbp + -160], rax
                        mov              rax, qword ptr [rcx + 104]
                        mov              qword ptr [rbp + -152], rax
                        mov              rax, qword ptr [rcx + 112]
                        mov              qword ptr [rbp + -144], rax
                        mov              rax, qword ptr [rcx + 120]
                        mov              qword ptr [rbp + -136], rax
                        mov              rax, qword ptr [rcx + 128]
                        mov              qword ptr [rbp + -128], rax
                        mov              rax, qword ptr [rcx + 136]
                        mov              qword ptr [rbp + -120], rax
                        mov              rax, qword ptr [rcx + 144]
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [rcx + 152]
                        mov              qword ptr [rbp + -104], rax
                        mov              rax, qword ptr [rcx + 160]
                        mov              qword ptr [rbp + -96], rax
                        mov              rax, qword ptr [rcx + 168]
                        mov              qword ptr [rbp + -88], rax
                        mov              rax, qword ptr [rcx + 176]
                        mov              qword ptr [rbp + -80], rax
                        mov              rax, qword ptr [rcx + 184]
                        mov              qword ptr [rbp + -72], rax
                        mov              rax, qword ptr [rcx + 192]
                        mov              qword ptr [rbp + -64], rax
                        mov              rax, qword ptr [rcx + 200]
                        mov              qword ptr [rbp + -56], rax
                        lea              rsp, [rcx + 208];                    jmp   n4_match_span_β
.Lmatch_arbno_β_23_3:   lea              rsp, [rcx + 208];                    jmp   n0_match_pos_β
                        .size            n1_match_arbno_bx, .-n1_match_arbno_bx
                        .type            n2_match_rpos_bx, @function
n2_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_match_rpos_α:        mov              r11, 3
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n1_match_arbno_β
                                                                              jmp   PAT$0_γ
n2_match_rpos_β:        mov              r11, 3;                              jmp   n1_match_arbno_β
                        .size            n2_match_rpos_bx, .-n2_match_rpos_bx
                        .type            n3_match_fence1_bx, @function
n3_match_fence1_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_match_fence1_α:      mov              r11, 4
                        mov              qword ptr [rbp + -96], rsp
                        mov              qword ptr [rbp + -88], r12;          jmp   n5_match_alternate_α
.Lmatch_fence1_γ_3_as:  mov              r11, 4
                        mov              rsp, qword ptr [rbp + -96];          jmp   n4_match_span_α
.Lmatch_fence1_γ_3_af:  mov              r11, 4
.Lmatch_fence1_ω_3_af:  mov              r11, 4
n3_match_fence1_β:      mov              r11, 4
                        mov              r12, qword ptr [rbp + -88]
                        mov              rsp, qword ptr [rbp + -96];          jmp   .Lmatch_arbno_ω_1_af
                        .size            n3_match_fence1_bx, .-n3_match_fence1_bx
                        .type            n4_match_span_bx, @function
n4_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_match_span_α:        sub              rsp, 16
                        mov              r11, 5
                        movsxd           rcx, r14d
.Lmatch_span_α_28_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_28_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lmatch_span_α_28_10
                        cmp              esi, 10;                             je    .Lmatch_span_α_28_10
                                                                              jmp   .Lmatch_span_α_28_1
.Lmatch_span_α_28_10:   add              ecx, 1;                              jmp   .Lmatch_span_α_28_0
.Lmatch_span_α_28_1:    cmp              ecx, r14d;                           jg    .Lmatch_span_α_28_240
                        add              rsp, 16;                             jmp   .Lmatch_arbno_ω_1_af
.Lmatch_span_α_28_240:  mov              dword ptr [rbp + -76], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_arbno_γ_1_as
n4_match_span_β:        mov              r11, 5
                        mov              r14d, dword ptr [rbp + -76]
                        add              rsp, 16;                             jmp   .Lmatch_arbno_ω_1_af
                        .size            n4_match_span_bx, .-n4_match_span_bx
                        .type            n5_match_alternate_bx, @function
n5_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_match_alternate_α:   mov              r11, 6
                        mov              dword ptr [rbp + -128], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_30_21]
                        mov              qword ptr [rbp + -112], rax;         jmp   n17_match_assign_save_α
.Lmatch_alternate_α_30_21:
                        lea              rax, [rip + .Lmatch_alternate_α_30_19]
                        mov              qword ptr [rbp + -112], rax;         jmp   n6_match_assign_save_α
.Lmatch_alternate_γ_5_s0:
                        mov              r11, 6
                        lea              rax, [rip + .Lmatch_alternate_α_30_40]
                        mov              qword ptr [rbp + -120], rax;         jmp   .Lmatch_alternate_γ_5_as
.Lmatch_alternate_γ_5_s1:
                        mov              r11, 6
                        lea              rax, [rip + .Lmatch_alternate_α_30_41]
                        mov              qword ptr [rbp + -120], rax;         jmp   .Lmatch_alternate_γ_5_as
.Lmatch_alternate_α_30_40:
                                                                              jmp   n20_match_lit_β
.Lmatch_alternate_α_30_41:
                                                                              jmp   n16_match_assign_cond_β
.Lmatch_alternate_γ_5_as:
                        mov              r11, 6;                              jmp   .Lmatch_fence1_γ_3_as
n5_match_alternate_β:   mov              r11, 6
                        mov              rax, qword ptr [rbp + -120];         jmp   rax
.Lmatch_alternate_γ_5_af:
                        mov              r11, 6
.Lmatch_alternate_ω_5_af:
                        mov              r11, 6
                        mov              r14d, dword ptr [rbp + -128]
                        mov              rax, qword ptr [rbp + -112];         jmp   rax
.Lmatch_alternate_α_30_19:
                                                                              jmp   .Lmatch_fence1_ω_3_af
                        .size            n5_match_alternate_bx, .-n5_match_alternate_bx
                        .type            n6_match_assign_save_bx, @function
n6_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_match_assign_save_α: mov              r11, 7
                        mov              dword ptr [rbp + -192], r14d;        jmp   n7_match_notany_α
n6_match_assign_save_β: mov              r11, 7;                              jmp   .Lmatch_alternate_ω_5_af
                        .size            n6_match_assign_save_bx, .-n6_match_assign_save_bx
                        .type            n7_match_notany_bx, @function
n7_match_notany_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_match_notany_α:      mov              r11, 8
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n6_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    n6_match_assign_save_β
                        add              r14d, 1;                             jmp   n8_match_break_α
n7_match_notany_β:      mov              r11, 8
                        sub              r14d, 1;                             jmp   n6_match_assign_save_β
                        .size            n7_match_notany_bx, .-n7_match_notany_bx
                        .type            n8_match_break_bx, @function
n8_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_match_break_α:       mov              r11, 9
                        movsxd           rcx, r14d
.Lmatch_break_α_35_0:   cmp              ecx, r15d;                           jge   n7_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lmatch_break_α_35_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_35_0
.Lmatch_break_α_35_1:   mov              dword ptr [rbp + -224], r14d
                        mov              r14d, ecx;                           jmp   n9_match_assign_cond_α
n8_match_break_β:       mov              r11, 9
                        mov              r14d, dword ptr [rbp + -224];        jmp   n7_match_notany_β
                        .size            n8_match_break_bx, .-n8_match_break_bx
                        .type            n9_match_assign_cond_bx, @function
n9_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_match_assign_cond_α: mov              r11, 10
                        mov              eax, dword ptr [rbp + -192]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n10_match_lit_α
n9_match_assign_cond_β: mov              r11, 10
                        sub              r12, 24;                             jmp   n8_match_break_β
                        .size            n9_match_assign_cond_bx, .-n9_match_assign_cond_bx
                        .type            n10_match_lit_bx, @function
n10_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_match_lit_α:        mov              r11, 11
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n9_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95;                             jne   n9_match_assign_cond_β
                        add              r14d, 1;                             jmp   n11_match_assign_save_α
n10_match_lit_β:        mov              r11, 11
                        sub              r14d, 1;                             jmp   n9_match_assign_cond_β
                        .size            n10_match_lit_bx, .-n10_match_lit_bx
                        .type            n11_match_assign_save_bx, @function
n11_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_match_assign_save_α:
                        mov              r11, 12
                        mov              dword ptr [rbp + -240], r14d;        jmp   n12_match_assign_save_α
n11_match_assign_save_β:
                        mov              r11, 12;                             jmp   n10_match_lit_β
                        .size            n11_match_assign_save_bx, .-n11_match_assign_save_bx
                        .type            n12_match_assign_save_bx, @function
n12_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_match_assign_save_α:
                        mov              r11, 13
                        mov              dword ptr [rbp + -256], r14d;        jmp   n13_match_any_α
n12_match_assign_save_β:
                        mov              r11, 13;                             jmp   n11_match_assign_save_β
                        .size            n12_match_assign_save_bx, .-n12_match_assign_save_bx
                        .type            n13_match_any_bx, @function
n13_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_match_any_α:        mov              r11, 14
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n12_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n12_match_assign_save_β
                        add              r14d, 1;                             jmp   n14_match_span_α
n13_match_any_β:        mov              r11, 14
                        sub              r14d, 1;                             jmp   n12_match_assign_save_β
                        .size            n13_match_any_bx, .-n13_match_any_bx
                        .type            n14_match_span_bx, @function
n14_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_match_span_α:       mov              r11, 15
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lmatch_span_α_47_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_47_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_47_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_47_0
.Lmatch_span_α_47_1:    cmp              ecx, r14d;                           jle   n13_match_any_β
                        mov              dword ptr [rbp + -284], r14d
                        mov              r14d, ecx;                           jmp   n15_match_assign_cond_α
n14_match_span_β:       mov              r11, 15
                        mov              r14d, dword ptr [rbp + -284];        jmp   n13_match_any_β
                        .size            n14_match_span_bx, .-n14_match_span_bx
                        .type            n15_match_assign_cond_bx, @function
n15_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_match_assign_cond_α:
                        mov              r11, 16
                        mov              eax, dword ptr [rbp + -256]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n16_match_assign_cond_α
n15_match_assign_cond_β:
                        mov              r11, 16
                        sub              r12, 24;                             jmp   n14_match_span_β
                        .size            n15_match_assign_cond_bx, .-n15_match_assign_cond_bx
                        .type            n16_match_assign_cond_bx, @function
n16_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_match_assign_cond_α:
                        mov              r11, 17
                        mov              eax, dword ptr [rbp + -240]
                        lea              rcx, [rip + .S2]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   .Lmatch_alternate_γ_5_s1
n16_match_assign_cond_β:
                        mov              r11, 17
                        sub              r12, 24;                             jmp   n15_match_assign_cond_β
                        .size            n16_match_assign_cond_bx, .-n16_match_assign_cond_bx
                        .type            n17_match_assign_save_bx, @function
n17_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_match_assign_save_α:
                        mov              r11, 18
                        mov              dword ptr [rbp + -144], r14d;        jmp   n18_match_span_α
n17_match_assign_save_β:
                        mov              r11, 18;                             jmp   .Lmatch_alternate_ω_5_af
                        .size            n17_match_assign_save_bx, .-n17_match_assign_save_bx
                        .type            n18_match_span_bx, @function
n18_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_match_span_α:       mov              r11, 19
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lmatch_span_α_55_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_55_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_55_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_55_0
.Lmatch_span_α_55_1:    cmp              ecx, r14d;                           jle   n17_match_assign_save_β
                        mov              dword ptr [rbp + -172], r14d
                        mov              r14d, ecx;                           jmp   n19_match_assign_cond_α
n18_match_span_β:       mov              r11, 19
                        mov              r14d, dword ptr [rbp + -172];        jmp   n17_match_assign_save_β
                        .size            n18_match_span_bx, .-n18_match_span_bx
                        .type            n19_match_assign_cond_bx, @function
n19_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_match_assign_cond_α:
                        mov              r11, 20
                        mov              eax, dword ptr [rbp + -144]
                        lea              rcx, [rip + .S3]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n20_match_lit_α
n19_match_assign_cond_β:
                        mov              r11, 20
                        sub              r12, 24;                             jmp   n18_match_span_β
                        .size            n19_match_assign_cond_bx, .-n19_match_assign_cond_bx
                        .type            n20_match_lit_bx, @function
n20_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_match_lit_α:        mov              r11, 21
                        mov              eax, r14d
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
n20_match_lit_β:        mov              r11, 21
                        sub              r14d, 10;                            jmp   n19_match_assign_cond_β
                        .size            n20_match_lit_bx, .-n20_match_lit_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n2_match_rpos_β
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
.Lgcmap_PAT$0:
                        .quad            1341376253274
                        .quad            17179869208
                        .quad            .Lgcmap_PAT$0_s
                        .quad            312
                        .quad            30
                        .quad            8804682956504
                        .quad            17600775978720
                        .quad            8808977923824
                        .quad            8804682956536
                        .quad            17600775978752
                        .quad            17600775978768
                        .quad            17600775978784
                        .quad            8808977923888
                        .quad            8804682956600
                        .quad            17600775978816
                        .quad            17600775978832
                        .quad            8808977923936
                        .quad            8804682956648
                        .quad            17600775978864
                        .quad            8804682956672
                        .quad            8813272891272
                        .quad            8813272891280
                        .quad            8804682956696
                        .quad            17600775978912
                        .quad            17600775978928
                        .quad            8808977924032
                        .quad            8804682956744
                        .quad            17600775978960
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcmap_PAT$0_s:        .string          "PAT$0"
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
                        mov              edi, 8
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 8
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 4
                        call             rt_label_table_install@PLT
                        lea              rdi, [rip + __gc_frame_maps]
                        call             rt_gc_frame_maps_install_counted@PLT
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
                        mov              qword ptr [rsp + 1720], rax
                        mov              dword ptr [rsp + 1712], 160
                        mov              dword ptr [rsp + 1716], 1728
                        mov              eax, 0
main_α_body:
                        sub              rsp, 0
                        .type            n60_call_bx, @function
n60_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_call_α:             sub              rsp, 16
                        mov              r11, 22
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_fp_model_spitbol@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lcall_α_210_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n61_call_α
.Lcall_α_210_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n61_call_α
n60_call_β:             mov              r11, 22
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n61_call_α
                        .size            n60_call_bx, .-n60_call_bx
                        .type            n61_call_bx, @function
n61_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_call_α:             sub              rsp, 16
                        mov              r11, 23
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_quit_trap_320@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lcall_α_211_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n62_lit_integer_α
.Lcall_α_211_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n62_lit_integer_α
n61_call_β:             mov              r11, 23
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n62_lit_integer_α
                        .size            n61_call_bx, .-n61_call_bx
                        .type            n62_lit_integer_bx, @function
n62_lit_integer_bx:
#=======================================================================================================================
#         DEFINE('token()')  :(token_end)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n62_lit_integer_α:      sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_212_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_lit_integer_α
.Llit_integer_α_212_0:  .quad            18446744073709551615
                        .size            n62_lit_integer_bx, .-n62_lit_integer_bx
                        .type            n63_lit_integer_bx, @function
n63_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      sub              rsp, 16
                        mov              r11, 25
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_213_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_lit_string_α
.Llit_integer_α_213_0:  .quad            0
                        .size            n63_lit_integer_bx, .-n63_lit_integer_bx
                        .type            n64_lit_string_bx, @function
n64_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:       sub              rsp, 16
                        mov              r11, 26
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 25
                        mov              rax, qword ptr [rip + .Llit_string_α_214_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n65_call_α
.Llit_string_α_214_0:   .quad            .Llit_string_α_214_0_s
.Llit_string_α_214_0_s: .string          "snobol4/claws5/claws5.sno"
                        .size            n64_lit_string_bx, .-n64_lit_string_bx
                        .type            n65_call_bx, @function
n65_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_call_α:             sub              rsp, 16
                        mov              r11, 27
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
.Lcall_α_rkfnzd216:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd216]
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
                        cmp              al, 104;                             jne   .Lcall_α_215_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n66_stmt_mark_α
.Lcall_α_215_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:186
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n66_stmt_mark_α
n65_call_β:             mov              r11, 27
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n66_stmt_mark_α
                        .size            n65_call_bx, .-n65_call_bx
                        .type            n66_stmt_mark_bx, @function
n66_stmt_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_stmt_mark_α:        mov              r11, 28
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 1
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        add              rsp, 64;                             jmp   n67_statement_begin_α
                        .size            n66_stmt_mark_bx, .-n66_stmt_mark_bx
                        .type            n67_statement_begin_bx, @function
n67_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_begin_α:  mov              r11, 29;                             jmp   n68_define_α
n67_statement_begin_β:  mov              r11, 29;                             jmp   n70_stmt_mark_α
                        .size            n67_statement_begin_bx, .-n67_statement_begin_bx
                        .type            n68_define_bx, @function
n68_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_define_α:           mov              r11, 30
                        mov              rdi, qword ptr [rip + .Ldefine_α_222_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_222_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + LBL__token]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_define.cpp:157
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rip + .Ldefine_α_222_0]
                        lea              rsi, [rip + token_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        mov              qword ptr [rcx + 0], rax;            jmp   n69_statement_end_α
n68_define_β:           mov              r11, 30;                             jmp   n67_statement_begin_β
.Ldefine_α_222_0:       .quad            .Ldefine_α_222_0_s
.Ldefine_α_222_0_s:     .string          "token"
.Ldefine_α_222_1:       .quad            .Ldefine_α_222_1_s
.Ldefine_α_222_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_223_245
#-----------------------------------------------------------------------------------------------------------------------
token_α:                sub              rsp, 48
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
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
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
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
                        pop              rcx;                                 jmp   .Ldefine_α_223_231
.Ldefine_α_223_232:     .quad            .Ldefine_α_223_232_s
.Ldefine_α_223_232_s:   .string          "token"
.Ldefine_α_223_231:     lea              rcx, [rip + token_γ]
                        lea              rax, [rip + token_ω]
                        push             rax
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
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        lea              rax, [rsp + 0]
                        mov              qword ptr [rcx + 16], rax
                        mov              qword ptr [rcx + 24], r12
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rcx + 48], rax
                        mov              rax, qword ptr [rip + g_core_errjmp_n@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        movsxd           rax, eax
                        mov              qword ptr [rcx + 32], rax
                        mov              rcx, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rip + entry_cell$token@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
token_γ:                mov              rdi, qword ptr [r9 + 0]
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx;                                 jmp   .Ldefine_α_223_236
.Ldefine_α_223_237:     .quad            .Ldefine_α_223_237_s
.Ldefine_α_223_237_s:   .string          "token"
.Ldefine_α_223_236:     pop              rdx
                        pop              rax
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
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
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
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              qword ptr [rcx + 16], 0
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
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
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
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              qword ptr [rcx + 16], 0
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
.Ldefine_α_223_245:
                        .size            n68_define_bx, .-n68_define_bx
                        .type            n69_statement_end_bx, @function
n69_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_end_α:    mov              r11, 31;                             jmp   n70_stmt_mark_α
                        .size            n69_statement_end_bx, .-n69_statement_end_bx
                        .type            n70_stmt_mark_bx, @function
n70_stmt_mark_bx:
#=======================================================================================================================
# token_end
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n70_stmt_mark_α:        mov              r11, 32
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n156_statement_begin_α
                        .size            n70_stmt_mark_bx, .-n70_stmt_mark_bx
                        .type            n71_statement_begin_bx, @function
n71_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_begin_α:  mov              r11, 33;                             jmp   n72_var_α
n71_statement_begin_β:  mov              r11, 33;                             jmp   n76_stmt_mark_α
                        .size            n71_statement_begin_bx, .-n71_statement_begin_bx
                        .type            n72_var_bx, @function
n72_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:              sub              rsp, 16
                        mov              r11, 34
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n73_unop_α
                        .size            n72_var_bx, .-n72_var_bx
                        .type            n73_unop_bx, @function
n73_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_unop_α:             sub              rsp, 16
                        mov              r11, 35
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_pos@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n74_assign_α
n73_unop_β:             mov              r11, 35
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n71_statement_begin_β
                        .size            n73_unop_bx, .-n73_unop_bx
                        .type            n74_assign_bx, @function
n74_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              r11, 36
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # num
                        mov              qword ptr [r9 + 24], rdx;            jmp   n75_statement_end_α
                        .size            n74_assign_bx, .-n74_assign_bx
                        .type            n75_statement_end_bx, @function
n75_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    mov              r11, 37
                        add              rsp, 32;                             jmp   n76_stmt_mark_α
                        .size            n75_statement_end_bx, .-n75_statement_end_bx
                        .type            n76_stmt_mark_bx, @function
n76_stmt_mark_bx:
#=======================================================================================================================
#         mem = IDENT(mem) TABLE()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n76_stmt_mark_α:        mov              r11, 38
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n77_statement_begin_α
                        .size            n76_stmt_mark_bx, .-n76_stmt_mark_bx
                        .type            n77_statement_begin_bx, @function
n77_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_begin_α:  mov              r11, 39;                             jmp   n78_var_α
n77_statement_begin_β:  mov              r11, 39;                             jmp   n84_stmt_mark_α
                        .size            n77_statement_begin_bx, .-n77_statement_begin_bx
                        .type            n78_var_bx, @function
n78_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:              sub              rsp, 16
                        mov              r11, 40
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_lit_string_α
                        .size            n78_var_bx, .-n78_var_bx
                        .type            n79_lit_string_bx, @function
n79_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       sub              rsp, 16
                        mov              r11, 41
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_240_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n80_ident_α
n79_lit_string_β:       mov              r11, 41
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n77_statement_begin_β
.Llit_string_α_240_0:   .quad            .Llit_string_α_240_0_s
.Llit_string_α_240_0_s: .string          ""
                        .size            n79_lit_string_bx, .-n79_lit_string_bx
                        .type            n80_ident_bx, @function
n80_ident_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_ident_α:            sub              rsp, 16
                        mov              r11, 42
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + descr_identical@GOTPCREL]
                        test             eax, eax;                            jne   .Lident_α_242_240
                        add              rsp, 16;                             jmp   n79_lit_string_β
.Lident_α_242_240:                                                            jmp   n81_call_α
n80_ident_β:            mov              r11, 42
                        add              rsp, 16;                             jmp   n79_lit_string_β
                        .size            n80_ident_bx, .-n80_ident_bx
                        .type            n81_call_bx, @function
n81_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_call_α:             sub              rsp, 16
                        mov              r11, 43
                        .section         .rodata
.Lcall_α_rkfnzd244:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd244]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 376900
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        cmp              al, 104;                             jne   .Lcall_α_243_240
                        add              rsp, 16;                             jmp   n80_ident_β
.Lcall_α_243_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:186
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n82_assign_α
n81_call_β:             mov              r11, 43
                        add              rsp, 16;                             jmp   n80_ident_β
                        .size            n81_call_bx, .-n81_call_bx
                        .type            n82_assign_bx, @function
n82_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:           mov              r11, 44
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # mem
                        mov              qword ptr [r9 + 40], rdx;            jmp   n83_statement_end_α
                        .size            n82_assign_bx, .-n82_assign_bx
                        .type            n83_statement_end_bx, @function
n83_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_end_α:    mov              r11, 45
                        add              rsp, 64;                             jmp   n84_stmt_mark_α
                        .size            n83_statement_end_bx, .-n83_statement_end_bx
                        .type            n84_stmt_mark_bx, @function
n84_stmt_mark_bx:
#=======================================================================================================================
#         mem[num] = IDENT(mem[num]) TABLE()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n84_stmt_mark_α:        mov              r11, 46
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n85_statement_begin_α
                        .size            n84_stmt_mark_bx, .-n84_stmt_mark_bx
                        .type            n85_statement_begin_bx, @function
n85_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_begin_α:  mov              r11, 47;                             jmp   n86_var_α
n85_statement_begin_β:  mov              r11, 47;                             jmp   n96_stmt_mark_α
                        .size            n85_statement_begin_bx, .-n85_statement_begin_bx
                        .type            n86_var_bx, @function
n86_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:              sub              rsp, 16
                        mov              r11, 48
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n87_var_α
                        .size            n86_var_bx, .-n86_var_bx
                        .type            n87_var_bx, @function
n87_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:              sub              rsp, 16
                        mov              r11, 49
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n88_var_α
n87_var_β:              mov              r11, 49
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n85_statement_begin_β
                        .size            n87_var_bx, .-n87_var_bx
                        .type            n88_var_bx, @function
n88_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              sub              rsp, 16
                        mov              r11, 50
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_var_α
n88_var_β:              mov              r11, 50
                        add              rsp, 16;                             jmp   n87_var_β
                        .size            n88_var_bx, .-n88_var_bx
                        .type            n89_var_bx, @function
n89_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:              sub              rsp, 16
                        mov              r11, 51
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n90_subscript_α
n89_var_β:              mov              r11, 51
                        add              rsp, 16;                             jmp   n88_var_β
                        .size            n89_var_bx, .-n89_var_bx
                        .type            n90_subscript_bx, @function
n90_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_subscript_α:        sub              rsp, 16
                        mov              r11, 52
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_256_240
                        add              rsp, 16;                             jmp   n89_var_β
.Lsubscript_α_256_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n91_lit_string_α
n90_subscript_β:        mov              r11, 52
                        add              rsp, 16;                             jmp   n89_var_β
                        .size            n90_subscript_bx, .-n90_subscript_bx
                        .type            n91_lit_string_bx, @function
n91_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:       sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_257_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_ident_α
n91_lit_string_β:       mov              r11, 53
                        add              rsp, 16;                             jmp   n90_subscript_β
.Llit_string_α_257_0:   .quad            .Llit_string_α_257_0_s
.Llit_string_α_257_0_s: .string          ""
                        .size            n91_lit_string_bx, .-n91_lit_string_bx
                        .type            n92_ident_bx, @function
n92_ident_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_ident_α:            sub              rsp, 16
                        mov              r11, 54
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + descr_identical@GOTPCREL]
                        test             eax, eax;                            jne   .Lident_α_259_240
                        add              rsp, 16;                             jmp   n91_lit_string_β
.Lident_α_259_240:                                                            jmp   n93_call_α
n92_ident_β:            mov              r11, 54
                        add              rsp, 16;                             jmp   n91_lit_string_β
                        .size            n92_ident_bx, .-n92_ident_bx
                        .type            n93_call_bx, @function
n93_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_call_α:             sub              rsp, 16
                        mov              r11, 55
                        .section         .rodata
.Lcall_α_rkfnzd261:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd261]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 376900
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        cmp              al, 104;                             jne   .Lcall_α_260_240
                        add              rsp, 16;                             jmp   n92_ident_β
.Lcall_α_260_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:186
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n94_assign_var_α
n93_call_β:             mov              r11, 55
                        add              rsp, 16;                             jmp   n92_ident_β
                        .size            n93_call_bx, .-n93_call_bx
                        .type            n94_assign_var_bx, @function
n94_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_var_α:       sub              rsp, 16
                        mov              r11, 56
                        mov              rdi, qword ptr [rsp + 128]           # var
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        cmp              dil, 24;                             je    .Lassign_var_α_263_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_263_0
.Lassign_var_α_263_1:   test             rsi, rsi;                            je    .Lassign_var_α_263_0
                        mov              r8, qword ptr [rsp + 16]             # call
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_263_238
                        add              rsp, 32;                             jmp   n92_ident_β
.Lassign_var_α_263_238: mov              qword ptr [rsp + 0], rax             # result
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n95_statement_end_α
.Lassign_var_α_263_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lassign_var_α_263_239
                        add              rsp, 32;                             jmp   n92_ident_β
.Lassign_var_α_263_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_263_240
                        add              rsp, 32;                             jmp   n92_ident_β
.Lassign_var_α_263_240: mov              qword ptr [rsp + 0], rax             # result
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n95_statement_end_α
                        .size            n94_assign_var_bx, .-n94_assign_var_bx
                        .type            n95_statement_end_bx, @function
n95_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:    mov              r11, 57
                        add              rsp, 144;                            jmp   n96_stmt_mark_α
                        .size            n95_statement_end_bx, .-n95_statement_end_bx
                        .type            n96_stmt_mark_bx, @function
n96_stmt_mark_bx:
#=======================================================================================================================
#         mem[num][wrd] = IDENT(mem[num][wrd]) TABLE()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n96_stmt_mark_α:        mov              r11, 58
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n97_statement_begin_α
                        .size            n96_stmt_mark_bx, .-n96_stmt_mark_bx
                        .type            n97_statement_begin_bx, @function
n97_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_begin_α:  mov              r11, 59;                             jmp   n98_var_α
n97_statement_begin_β:  mov              r11, 59;                             jmp   n112_stmt_mark_α
                        .size            n97_statement_begin_bx, .-n97_statement_begin_bx
                        .type            n98_var_bx, @function
n98_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:              sub              rsp, 16
                        mov              r11, 60
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n99_var_α
                        .size            n98_var_bx, .-n98_var_bx
                        .type            n99_var_bx, @function
n99_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_var_α:              sub              rsp, 16
                        mov              r11, 61
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_subscript_α
n99_var_β:              mov              r11, 61
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n97_statement_begin_β
                        .size            n99_var_bx, .-n99_var_bx
                        .type            n100_subscript_bx, @function
n100_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_subscript_α:       sub              rsp, 16
                        mov              r11, 62
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_272_240
                        add              rsp, 16;                             jmp   n99_var_β
.Lsubscript_α_272_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n101_var_α
n100_subscript_β:       mov              r11, 62
                        add              rsp, 16;                             jmp   n99_var_β
                        .size            n100_subscript_bx, .-n100_subscript_bx
                        .type            n101_var_bx, @function
n101_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             sub              rsp, 16
                        mov              r11, 63
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_var_α
n101_var_β:             mov              r11, 63
                        add              rsp, 16;                             jmp   n100_subscript_β
                        .size            n101_var_bx, .-n101_var_bx
                        .type            n102_var_bx, @function
n102_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             sub              rsp, 16
                        mov              r11, 64
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_var_α
n102_var_β:             mov              r11, 64
                        add              rsp, 16;                             jmp   n101_var_β
                        .size            n102_var_bx, .-n102_var_bx
                        .type            n103_var_bx, @function
n103_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:             sub              rsp, 16
                        mov              r11, 65
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n104_subscript_α
n103_var_β:             mov              r11, 65
                        add              rsp, 16;                             jmp   n102_var_β
                        .size            n103_var_bx, .-n103_var_bx
                        .type            n104_subscript_bx, @function
n104_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_subscript_α:       sub              rsp, 16
                        mov              r11, 66
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_276_240
                        add              rsp, 16;                             jmp   n103_var_β
.Lsubscript_α_276_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n105_var_α
n104_subscript_β:       mov              r11, 66
                        add              rsp, 16;                             jmp   n103_var_β
                        .size            n104_subscript_bx, .-n104_subscript_bx
                        .type            n105_var_bx, @function
n105_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:             sub              rsp, 16
                        mov              r11, 67
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n106_subscript_α
n105_var_β:             mov              r11, 67
                        add              rsp, 16;                             jmp   n104_subscript_β
                        .size            n105_var_bx, .-n105_var_bx
                        .type            n106_subscript_bx, @function
n106_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_subscript_α:       sub              rsp, 16
                        mov              r11, 68
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_278_240
                        add              rsp, 16;                             jmp   n105_var_β
.Lsubscript_α_278_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n107_lit_string_α
n106_subscript_β:       mov              r11, 68
                        add              rsp, 16;                             jmp   n105_var_β
                        .size            n106_subscript_bx, .-n106_subscript_bx
                        .type            n107_lit_string_bx, @function
n107_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      sub              rsp, 16
                        mov              r11, 69
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_279_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_ident_α
n107_lit_string_β:      mov              r11, 69
                        add              rsp, 16;                             jmp   n106_subscript_β
.Llit_string_α_279_0:   .quad            .Llit_string_α_279_0_s
.Llit_string_α_279_0_s: .string          ""
                        .size            n107_lit_string_bx, .-n107_lit_string_bx
                        .type            n108_ident_bx, @function
n108_ident_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_ident_α:           sub              rsp, 16
                        mov              r11, 70
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + descr_identical@GOTPCREL]
                        test             eax, eax;                            jne   .Lident_α_281_240
                        add              rsp, 16;                             jmp   n107_lit_string_β
.Lident_α_281_240:                                                            jmp   n109_call_α
n108_ident_β:           mov              r11, 70
                        add              rsp, 16;                             jmp   n107_lit_string_β
                        .size            n108_ident_bx, .-n108_ident_bx
                        .type            n109_call_bx, @function
n109_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_call_α:            sub              rsp, 16
                        mov              r11, 71
                        .section         .rodata
.Lcall_α_rkfnzd283:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd283]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 376900
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        cmp              al, 104;                             jne   .Lcall_α_282_240
                        add              rsp, 16;                             jmp   n108_ident_β
.Lcall_α_282_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:186
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n110_assign_var_α
n109_call_β:            mov              r11, 71
                        add              rsp, 16;                             jmp   n108_ident_β
                        .size            n109_call_bx, .-n109_call_bx
                        .type            n110_assign_var_bx, @function
n110_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_assign_var_α:      sub              rsp, 16
                        mov              r11, 72
                        mov              rdi, qword ptr [rsp + 160]           # subscript
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 144]           # var
                        mov              rcx, qword ptr [rsp + 152]
                        cmp              dil, 24;                             je    .Lassign_var_α_285_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_285_0
.Lassign_var_α_285_1:   test             rsi, rsi;                            je    .Lassign_var_α_285_0
                        mov              r8, qword ptr [rsp + 16]             # call
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_285_238
                        add              rsp, 32;                             jmp   n108_ident_β
.Lassign_var_α_285_238: mov              qword ptr [rsp + 0], rax             # result
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n111_statement_end_α
.Lassign_var_α_285_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lassign_var_α_285_239
                        add              rsp, 32;                             jmp   n108_ident_β
.Lassign_var_α_285_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_285_240
                        add              rsp, 32;                             jmp   n108_ident_β
.Lassign_var_α_285_240: mov              qword ptr [rsp + 0], rax             # result
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n111_statement_end_α
                        .size            n110_assign_var_bx, .-n110_assign_var_bx
                        .type            n111_statement_end_bx, @function
n111_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_end_α:   mov              r11, 73
                        add              rsp, 208;                            jmp   n112_stmt_mark_α
                        .size            n111_statement_end_bx, .-n111_statement_end_bx
                        .type            n112_stmt_mark_bx, @function
n112_stmt_mark_bx:
#=======================================================================================================================
#         mem[num][wrd][tag] = IDENT(mem[num][wrd][tag]) 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n112_stmt_mark_α:       mov              r11, 74
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n113_statement_begin_α
                        .size            n112_stmt_mark_bx, .-n112_stmt_mark_bx
                        .type            n113_statement_begin_bx, @function
n113_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_begin_α: mov              r11, 75;                             jmp   n114_var_α
n113_statement_begin_β: mov              r11, 75;                             jmp   n132_stmt_mark_α
                        .size            n113_statement_begin_bx, .-n113_statement_begin_bx
                        .type            n114_var_bx, @function
n114_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             sub              rsp, 16
                        mov              r11, 76
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n115_var_α
                        .size            n114_var_bx, .-n114_var_bx
                        .type            n115_var_bx, @function
n115_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:             sub              rsp, 16
                        mov              r11, 77
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n116_subscript_α
n115_var_β:             mov              r11, 77
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n113_statement_begin_β
                        .size            n115_var_bx, .-n115_var_bx
                        .type            n116_subscript_bx, @function
n116_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_subscript_α:       sub              rsp, 16
                        mov              r11, 78
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_294_240
                        add              rsp, 16;                             jmp   n115_var_β
.Lsubscript_α_294_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n117_var_α
n116_subscript_β:       mov              r11, 78
                        add              rsp, 16;                             jmp   n115_var_β
                        .size            n116_subscript_bx, .-n116_subscript_bx
                        .type            n117_var_bx, @function
n117_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_var_α:             sub              rsp, 16
                        mov              r11, 79
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_subscript_α
n117_var_β:             mov              r11, 79
                        add              rsp, 16;                             jmp   n116_subscript_β
                        .size            n117_var_bx, .-n117_var_bx
                        .type            n118_subscript_bx, @function
n118_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_subscript_α:       sub              rsp, 16
                        mov              r11, 80
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_296_240
                        add              rsp, 16;                             jmp   n117_var_β
.Lsubscript_α_296_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n119_var_α
n118_subscript_β:       mov              r11, 80
                        add              rsp, 16;                             jmp   n117_var_β
                        .size            n118_subscript_bx, .-n118_subscript_bx
                        .type            n119_var_bx, @function
n119_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:             sub              rsp, 16
                        mov              r11, 81
                        mov              rax, qword ptr [r9 + 64]             # tag
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n120_var_α
n119_var_β:             mov              r11, 81
                        add              rsp, 16;                             jmp   n118_subscript_β
                        .size            n119_var_bx, .-n119_var_bx
                        .type            n120_var_bx, @function
n120_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:             sub              rsp, 16
                        mov              r11, 82
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n121_var_α
n120_var_β:             mov              r11, 82
                        add              rsp, 16;                             jmp   n119_var_β
                        .size            n120_var_bx, .-n120_var_bx
                        .type            n121_var_bx, @function
n121_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:             sub              rsp, 16
                        mov              r11, 83
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n122_subscript_α
n121_var_β:             mov              r11, 83
                        add              rsp, 16;                             jmp   n120_var_β
                        .size            n121_var_bx, .-n121_var_bx
                        .type            n122_subscript_bx, @function
n122_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_subscript_α:       sub              rsp, 16
                        mov              r11, 84
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_300_240
                        add              rsp, 16;                             jmp   n121_var_β
.Lsubscript_α_300_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n123_var_α
n122_subscript_β:       mov              r11, 84
                        add              rsp, 16;                             jmp   n121_var_β
                        .size            n122_subscript_bx, .-n122_subscript_bx
                        .type            n123_var_bx, @function
n123_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             sub              rsp, 16
                        mov              r11, 85
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_subscript_α
n123_var_β:             mov              r11, 85
                        add              rsp, 16;                             jmp   n122_subscript_β
                        .size            n123_var_bx, .-n123_var_bx
                        .type            n124_subscript_bx, @function
n124_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_subscript_α:       sub              rsp, 16
                        mov              r11, 86
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_302_240
                        add              rsp, 16;                             jmp   n123_var_β
.Lsubscript_α_302_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n125_var_α
n124_subscript_β:       mov              r11, 86
                        add              rsp, 16;                             jmp   n123_var_β
                        .size            n124_subscript_bx, .-n124_subscript_bx
                        .type            n125_var_bx, @function
n125_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:             sub              rsp, 16
                        mov              r11, 87
                        mov              rax, qword ptr [r9 + 64]             # tag
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n126_subscript_α
n125_var_β:             mov              r11, 87
                        add              rsp, 16;                             jmp   n124_subscript_β
                        .size            n125_var_bx, .-n125_var_bx
                        .type            n126_subscript_bx, @function
n126_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_subscript_α:       sub              rsp, 16
                        mov              r11, 88
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_304_240
                        add              rsp, 16;                             jmp   n125_var_β
.Lsubscript_α_304_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n127_lit_string_α
n126_subscript_β:       mov              r11, 88
                        add              rsp, 16;                             jmp   n125_var_β
                        .size            n126_subscript_bx, .-n126_subscript_bx
                        .type            n127_lit_string_bx, @function
n127_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      sub              rsp, 16
                        mov              r11, 89
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_305_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n128_ident_α
n127_lit_string_β:      mov              r11, 89
                        add              rsp, 16;                             jmp   n126_subscript_β
.Llit_string_α_305_0:   .quad            .Llit_string_α_305_0_s
.Llit_string_α_305_0_s: .string          ""
                        .size            n127_lit_string_bx, .-n127_lit_string_bx
                        .type            n128_ident_bx, @function
n128_ident_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_ident_α:           sub              rsp, 16
                        mov              r11, 90
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + descr_identical@GOTPCREL]
                        test             eax, eax;                            jne   .Lident_α_307_240
                        add              rsp, 16;                             jmp   n127_lit_string_β
.Lident_α_307_240:                                                            jmp   n129_lit_integer_α
n128_ident_β:           mov              r11, 90
                        add              rsp, 16;                             jmp   n127_lit_string_β
                        .size            n128_ident_bx, .-n128_ident_bx
                        .type            n129_lit_integer_bx, @function
n129_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:     sub              rsp, 16
                        mov              r11, 91
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_308_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n130_assign_var_α
n129_lit_integer_β:     mov              r11, 91
                        add              rsp, 16;                             jmp   n128_ident_β
.Llit_integer_α_308_0:  .quad            0
                        .size            n129_lit_integer_bx, .-n129_lit_integer_bx
                        .type            n130_assign_var_bx, @function
n130_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_assign_var_α:      sub              rsp, 16
                        mov              r11, 92
                        mov              rdi, qword ptr [rsp + 192]           # subscript
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 176]           # var
                        mov              rcx, qword ptr [rsp + 184]
                        cmp              dil, 24;                             je    .Lassign_var_α_310_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_310_0
.Lassign_var_α_310_1:   test             rsi, rsi;                            je    .Lassign_var_α_310_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_310_238
                        add              rsp, 16;                             jmp   n129_lit_integer_β
.Lassign_var_α_310_238: mov              qword ptr [rsp + 0], rax             # result
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n131_statement_end_α
.Lassign_var_α_310_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lassign_var_α_310_239
                        add              rsp, 16;                             jmp   n129_lit_integer_β
.Lassign_var_α_310_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_310_240
                        add              rsp, 16;                             jmp   n129_lit_integer_β
.Lassign_var_α_310_240: mov              qword ptr [rsp + 0], rax             # result
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n131_statement_end_α
                        .size            n130_assign_var_bx, .-n130_assign_var_bx
                        .type            n131_statement_end_bx, @function
n131_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_end_α:   mov              r11, 93
                        add              rsp, 272;                            jmp   n132_stmt_mark_α
                        .size            n131_statement_end_bx, .-n131_statement_end_bx
                        .type            n132_stmt_mark_bx, @function
n132_stmt_mark_bx:
#=======================================================================================================================
#         mem[num][wrd][tag] = mem[num][wrd][tag] + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n132_stmt_mark_α:       mov              r11, 94
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n133_statement_begin_α
                        .size            n132_stmt_mark_bx, .-n132_stmt_mark_bx
                        .type            n133_statement_begin_bx, @function
n133_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_statement_begin_α: mov              r11, 95;                             jmp   n134_var_α
n133_statement_begin_β: mov              r11, 95;                             jmp   n151_stmt_mark_α
                        .size            n133_statement_begin_bx, .-n133_statement_begin_bx
                        .type            n134_var_bx, @function
n134_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:             sub              rsp, 16
                        mov              r11, 96
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_var_α
                        .size            n134_var_bx, .-n134_var_bx
                        .type            n135_var_bx, @function
n135_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:             sub              rsp, 16
                        mov              r11, 97
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n136_subscript_α
n135_var_β:             mov              r11, 97
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n133_statement_begin_β
                        .size            n135_var_bx, .-n135_var_bx
                        .type            n136_subscript_bx, @function
n136_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_subscript_α:       sub              rsp, 16
                        mov              r11, 98
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_319_240
                        add              rsp, 16;                             jmp   n135_var_β
.Lsubscript_α_319_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n137_var_α
n136_subscript_β:       mov              r11, 98
                        add              rsp, 16;                             jmp   n135_var_β
                        .size            n136_subscript_bx, .-n136_subscript_bx
                        .type            n137_var_bx, @function
n137_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             sub              rsp, 16
                        mov              r11, 99
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n138_subscript_α
n137_var_β:             mov              r11, 99
                        add              rsp, 16;                             jmp   n136_subscript_β
                        .size            n137_var_bx, .-n137_var_bx
                        .type            n138_subscript_bx, @function
n138_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_subscript_α:       sub              rsp, 16
                        mov              r11, 100
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_321_240
                        add              rsp, 16;                             jmp   n137_var_β
.Lsubscript_α_321_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n139_var_α
n138_subscript_β:       mov              r11, 100
                        add              rsp, 16;                             jmp   n137_var_β
                        .size            n138_subscript_bx, .-n138_subscript_bx
                        .type            n139_var_bx, @function
n139_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:             sub              rsp, 16
                        mov              r11, 101
                        mov              rax, qword ptr [r9 + 64]             # tag
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_var_α
n139_var_β:             mov              r11, 101
                        add              rsp, 16;                             jmp   n138_subscript_β
                        .size            n139_var_bx, .-n139_var_bx
                        .type            n140_var_bx, @function
n140_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             sub              rsp, 16
                        mov              r11, 102
                        mov              rax, qword ptr [r9 + 32]             # mem
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_var_α
n140_var_β:             mov              r11, 102
                        add              rsp, 16;                             jmp   n139_var_β
                        .size            n140_var_bx, .-n140_var_bx
                        .type            n141_var_bx, @function
n141_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             sub              rsp, 16
                        mov              r11, 103
                        mov              rax, qword ptr [r9 + 16]             # num
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_subscript_α
n141_var_β:             mov              r11, 103
                        add              rsp, 16;                             jmp   n140_var_β
                        .size            n141_var_bx, .-n141_var_bx
                        .type            n142_subscript_bx, @function
n142_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_subscript_α:       sub              rsp, 16
                        mov              r11, 104
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_325_240
                        add              rsp, 16;                             jmp   n141_var_β
.Lsubscript_α_325_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n143_var_α
n142_subscript_β:       mov              r11, 104
                        add              rsp, 16;                             jmp   n141_var_β
                        .size            n142_subscript_bx, .-n142_subscript_bx
                        .type            n143_var_bx, @function
n143_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:             sub              rsp, 16
                        mov              r11, 105
                        mov              rax, qword ptr [r9 + 48]             # wrd
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n144_subscript_α
n143_var_β:             mov              r11, 105
                        add              rsp, 16;                             jmp   n142_subscript_β
                        .size            n143_var_bx, .-n143_var_bx
                        .type            n144_subscript_bx, @function
n144_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_subscript_α:       sub              rsp, 16
                        mov              r11, 106
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_327_240
                        add              rsp, 16;                             jmp   n143_var_β
.Lsubscript_α_327_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n145_var_α
n144_subscript_β:       mov              r11, 106
                        add              rsp, 16;                             jmp   n143_var_β
                        .size            n144_subscript_bx, .-n144_subscript_bx
                        .type            n145_var_bx, @function
n145_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:             sub              rsp, 16
                        mov              r11, 107
                        mov              rax, qword ptr [r9 + 64]             # tag
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n146_subscript_α
n145_var_β:             mov              r11, 107
                        add              rsp, 16;                             jmp   n144_subscript_β
                        .size            n145_var_bx, .-n145_var_bx
                        .type            n146_subscript_bx, @function
n146_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_subscript_α:       sub              rsp, 16
                        mov              r11, 108
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_329_240
                        add              rsp, 16;                             jmp   n145_var_β
.Lsubscript_α_329_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n147_lit_integer_α
n146_subscript_β:       mov              r11, 108
                        add              rsp, 16;                             jmp   n145_var_β
                        .size            n146_subscript_bx, .-n146_subscript_bx
                        .type            n147_lit_integer_bx, @function
n147_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_integer_α:     sub              rsp, 16
                        mov              r11, 109
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_330_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n148_binop_α
n147_lit_integer_β:     mov              r11, 109
                        add              rsp, 16;                             jmp   n146_subscript_β
.Llit_integer_α_330_0:  .quad            1
                        .size            n147_lit_integer_bx, .-n147_lit_integer_bx
                        .type            n148_binop_bx, @function
n148_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_binop_α:           sub              rsp, 16
                        mov              r11, 110
                        mov              ecx, dword ptr [rsp + 32]            # subscript
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_331_2
                        add              rax, 1;                              jo    .Lbinop_α_331_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_331_7
.Lbinop_α_331_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_331_0
                        mov              rsi, qword ptr [rsp + 40]            # subscript
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_331_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_331_4
.Lbinop_α_331_3:        movq             xmm0, rsi
.Lbinop_α_331_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_331_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_331_7:                                                              jmp   n149_assign_var_α
.Lbinop_α_331_0:        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_331_240
                        add              rsp, 16;                             jmp   n147_lit_integer_β
.Lbinop_α_331_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n149_assign_var_α
n148_binop_β:           mov              r11, 110
                        add              rsp, 16;                             jmp   n147_lit_integer_β
                        .size            n148_binop_bx, .-n148_binop_bx
                        .type            n149_assign_var_bx, @function
n149_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_assign_var_α:      sub              rsp, 16
                        mov              r11, 111
                        mov              rdi, qword ptr [rsp + 176]           # subscript
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 160]           # var
                        mov              rcx, qword ptr [rsp + 168]
                        cmp              dil, 24;                             je    .Lassign_var_α_333_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_333_0
.Lassign_var_α_333_1:   test             rsi, rsi;                            je    .Lassign_var_α_333_0
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_333_238
                        add              rsp, 16;                             jmp   n148_binop_β
.Lassign_var_α_333_238: mov              qword ptr [rsp + 0], rax             # result
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n150_statement_end_α
.Lassign_var_α_333_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lassign_var_α_333_239
                        add              rsp, 16;                             jmp   n148_binop_β
.Lassign_var_α_333_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_333_240
                        add              rsp, 16;                             jmp   n148_binop_β
.Lassign_var_α_333_240: mov              qword ptr [rsp + 0], rax             # result
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n150_statement_end_α
                        .size            n149_assign_var_bx, .-n149_assign_var_bx
                        .type            n150_statement_end_bx, @function
n150_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_end_α:   mov              r11, 112
                        add              rsp, 256;                            jmp   n151_stmt_mark_α
                        .size            n150_statement_end_bx, .-n150_statement_end_bx
                        .type            n151_stmt_mark_bx, @function
n151_stmt_mark_bx:
#=======================================================================================================================
#         token = .dummy  :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n151_stmt_mark_α:       mov              r11, 113
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n152_statement_begin_α
                        .size            n151_stmt_mark_bx, .-n151_stmt_mark_bx
                        .type            n152_statement_begin_bx, @function
n152_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_begin_α: mov              r11, 114;                            jmp   n153_lit_name_α
n152_statement_begin_β: mov              r11, 114;                            jmp   NRETURN
                        .size            n152_statement_begin_bx, .-n152_statement_begin_bx
                        .type            n153_lit_name_bx, @function
n153_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_name_α:        sub              rsp, 16
                        mov              r11, 115
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_340_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n154_assign_α
.Llit_name_α_340_0:     .quad            .Llit_name_α_340_0_s
.Llit_name_α_340_0_s:   .string          "dummy"
                        .size            n153_lit_name_bx, .-n153_lit_name_bx
                        .type            n154_assign_bx, @function
n154_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_assign_α:          mov              r11, 116
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # token
                        mov              qword ptr [r9 + 8], rdx;             jmp   n155_statement_end_α
                        .size            n154_assign_bx, .-n154_assign_bx
                        .type            n155_statement_end_bx, @function
n155_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_end_α:   mov              r11, 117
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n155_statement_end_bx, .-n155_statement_end_bx
                        .type            n156_statement_begin_bx, @function
n156_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_begin_α: mov              r11, 118;                            jmp   n157_statement_end_α
n156_statement_begin_β: mov              r11, 118;                            jmp   n158_stmt_mark_α
                        .size            n156_statement_begin_bx, .-n156_statement_begin_bx
                        .type            n157_statement_end_bx, @function
n157_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_end_α:   mov              r11, 119;                            jmp   n158_stmt_mark_α
                        .size            n157_statement_end_bx, .-n157_statement_end_bx
                        .type            n158_stmt_mark_bx, @function
n158_stmt_mark_bx:
#=======================================================================================================================
#         &TRIM   =   0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n158_stmt_mark_α:       mov              r11, 120
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n159_statement_begin_α
                        .size            n158_stmt_mark_bx, .-n158_stmt_mark_bx
                        .type            n159_statement_begin_bx, @function
n159_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_begin_α: mov              r11, 121;                            jmp   n160_lit_integer_α
n159_statement_begin_β: mov              r11, 121;                            jmp   n163_stmt_mark_α
                        .size            n159_statement_begin_bx, .-n159_statement_begin_bx
                        .type            n160_lit_integer_bx, @function
n160_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:     sub              rsp, 16
                        mov              r11, 122
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_352_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n161_kw_assign_snobol4_α
.Llit_integer_α_352_0:  .quad            0
                        .size            n160_lit_integer_bx, .-n160_lit_integer_bx
                        .type            n161_kw_assign_snobol4_bx, @function
n161_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 123
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_353_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_353_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n159_statement_begin_β
.Lkw_assign_snobol4_α_353_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_keyword_assign_snobol4.cpp:27
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n162_statement_end_α
.Lkw_assign_snobol4_α_353_0:
                        .quad            1
                        .size            n161_kw_assign_snobol4_bx, .-n161_kw_assign_snobol4_bx
                        .type            n162_statement_end_bx, @function
n162_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_end_α:   mov              r11, 124
                        add              rsp, 32;                             jmp   n163_stmt_mark_α
                        .size            n162_statement_end_bx, .-n162_statement_end_bx
                        .type            n163_stmt_mark_bx, @function
n163_stmt_mark_bx:
#=======================================================================================================================
#         claws   =   POS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n163_stmt_mark_α:       mov              r11, 125
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n164_statement_begin_α
                        .size            n163_stmt_mark_bx, .-n163_stmt_mark_bx
                        .type            n164_statement_begin_bx, @function
n164_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_begin_α: mov              r11, 126;                            jmp   n165_lit_string_α
n164_statement_begin_β: mov              r11, 126;                            jmp   n169_stmt_mark_α
                        .size            n164_statement_begin_bx, .-n164_statement_begin_bx
                        .type            n165_lit_string_bx, @function
n165_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:      sub              rsp, 16
                        mov              r11, 127
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_360_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n166_call_α
.Llit_string_α_360_0:   .quad            .Llit_string_α_360_0_s
.Llit_string_α_360_0_s: .string          "PAT$0"
                        .size            n165_lit_string_bx, .-n165_lit_string_bx
                        .type            n166_call_bx, @function
n166_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_call_α:            sub              rsp, 16
                        mov              r11, 128
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd362:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd362]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 606260
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_361_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n164_statement_begin_β
.Lcall_α_361_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:186
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n167_assign_α
n166_call_β:            mov              r11, 128
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n164_statement_begin_β
                        .size            n166_call_bx, .-n166_call_bx
                        .type            n167_assign_bx, @function
n167_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_assign_α:          mov              r11, 129
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # claws
                        mov              qword ptr [r9 + 104], rdx;           jmp   n168_statement_end_α
                        .size            n167_assign_bx, .-n167_assign_bx
                        .type            n168_statement_end_bx, @function
n168_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_end_α:   mov              r11, 130
                        add              rsp, 32;                             jmp   n169_stmt_mark_α
                        .size            n168_statement_end_bx, .-n168_statement_end_bx
                        .type            n169_stmt_mark_bx, @function
n169_stmt_mark_bx:
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n169_stmt_mark_α:       mov              r11, 131
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 24
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n170_statement_begin_α
                        .size            n169_stmt_mark_bx, .-n169_stmt_mark_bx
                        .type            n170_statement_begin_bx, @function
n170_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_begin_α: mov              r11, 132;                            jmp   n171_lit_name_α
n170_statement_begin_β: mov              r11, 132;                            jmp   n176_stmt_mark_α
                        .size            n170_statement_begin_bx, .-n170_statement_begin_bx
                        .type            n171_lit_name_bx, @function
n171_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_name_α:        sub              rsp, 16
                        mov              r11, 133
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_370_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n172_lit_integer_α
.Llit_name_α_370_0:     .quad            .Llit_name_α_370_0_s
.Llit_name_α_370_0_s:   .string          "INPUT"
                        .size            n171_lit_name_bx, .-n171_lit_name_bx
                        .type            n172_lit_integer_bx, @function
n172_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:     sub              rsp, 16
                        mov              r11, 134
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_371_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n173_lit_string_α
n172_lit_integer_β:     mov              r11, 134
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n170_statement_begin_β
.Llit_integer_α_371_0:  .quad            9
                        .size            n172_lit_integer_bx, .-n172_lit_integer_bx
                        .type            n173_lit_string_bx, @function
n173_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:      sub              rsp, 16
                        mov              r11, 135
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_372_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n174_call_α
n173_lit_string_β:      mov              r11, 135
                        add              rsp, 16;                             jmp   n172_lit_integer_β
.Llit_string_α_372_0:   .quad            .Llit_string_α_372_0_s
.Llit_string_α_372_0_s: .string          "[-f0 -r4194304]"
                        .size            n173_lit_string_bx, .-n173_lit_string_bx
                        .type            n174_call_bx, @function
n174_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_call_α:            sub              rsp, 16
                        mov              r11, 136
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_373_240
                        add              rsp, 16;                             jmp   n173_lit_string_β
.Lcall_α_373_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n175_statement_end_α
n174_call_β:            mov              r11, 136
                        add              rsp, 16;                             jmp   n173_lit_string_β
                        .size            n174_call_bx, .-n174_call_bx
                        .type            n175_statement_end_bx, @function
n175_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_end_α:   mov              r11, 137
                        add              rsp, 64;                             jmp   n176_stmt_mark_α
                        .size            n175_statement_end_bx, .-n175_statement_end_bx
                        .type            n176_stmt_mark_bx, @function
n176_stmt_mark_bx:
#=======================================================================================================================
#         src     =   INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n176_stmt_mark_α:       mov              r11, 138
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 25
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n177_statement_begin_α
                        .size            n176_stmt_mark_bx, .-n176_stmt_mark_bx
                        .type            n177_statement_begin_bx, @function
n177_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_begin_α: mov              r11, 139;                            jmp   n178_var_α
n177_statement_begin_β: mov              r11, 139;                            jmp   n182_stmt_mark_α
                        .size            n177_statement_begin_bx, .-n177_statement_begin_bx
                        .type            n178_var_bx, @function
n178_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:             sub              rsp, 16
                        mov              r11, 140
                        mov              rdi, qword ptr [rip + .Lvar_α_380_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_380_240
                        add              rsp, 16;                             jmp   n177_statement_begin_β
.Lvar_α_380_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_var_global.cpp:69
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n179_assign_α
.Lvar_α_380_0:          .quad            .Lvar_α_380_0_s
.Lvar_α_380_0_s:        .string          "INPUT"
                        .size            n178_var_bx, .-n178_var_bx
                        .type            n179_assign_bx, @function
n179_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_assign_α:          mov              r11, 141
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # src
                        mov              qword ptr [r9 + 120], rdx;           jmp   n180_statement_end_α
                        .size            n179_assign_bx, .-n179_assign_bx
                        .type            n180_statement_end_bx, @function
n180_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_end_α:   mov              r11, 142
                        add              rsp, 16;                             jmp   n181_stmt_mark_α
                        .size            n180_statement_end_bx, .-n180_statement_end_bx
                        .type            n181_stmt_mark_bx, @function
n181_stmt_mark_bx:
#=======================================================================================================================
#         src     ?   claws  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 26 0
n181_stmt_mark_α:       mov              r11, 143
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 26
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n183_statement_begin_α
                        .size            n181_stmt_mark_bx, .-n181_stmt_mark_bx
                        .type            n182_stmt_mark_bx, @function
n182_stmt_mark_bx:
#=======================================================================================================================
# error   OUTPUT  =   'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n182_stmt_mark_α:       mov              r11, 144
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 28
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n199_statement_begin_α
                        .size            n182_stmt_mark_bx, .-n182_stmt_mark_bx
                        .type            n183_statement_begin_bx, @function
n183_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_begin_α: mov              r11, 145;                            jmp   n184_var_α
n183_statement_begin_β: mov              r11, 145;                            jmp   n182_stmt_mark_α
                        .size            n183_statement_begin_bx, .-n183_statement_begin_bx
                        .type            n184_var_bx, @function
n184_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             sub              rsp, 16
                        mov              r11, 146
                        mov              rax, qword ptr [r9 + 112]            # src
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n185_var_α
                        .size            n184_var_bx, .-n184_var_bx
                        .type            n185_var_bx, @function
n185_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:             sub              rsp, 16
                        mov              r11, 147
                        mov              rax, qword ptr [r9 + 96]             # claws
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_assign_α
n185_var_β:             mov              r11, 147
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n182_stmt_mark_α
                        .size            n185_var_bx, .-n185_var_bx
                        .type            n186_assign_bx, @function
n186_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_assign_α:          mov              r11, 148
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_392_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n187_match_begin_α
n186_assign_β:          mov              r11, 148;                            jmp   n185_var_β
.Lassign_α_392_0:       .quad            .Lassign_α_392_0_s
.Lassign_α_392_0_s:     .string          "PATV$0"
                        .size            n186_assign_bx, .-n186_assign_bx
                        .type            n187_match_begin_bx, @function
n187_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_match_begin_α:     mov              r11, 149
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        push             rbp
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
                        push             rax
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
                        mov              r8,  qword ptr [rip + rtccb+40]
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
.Lmatch_begin_α_394_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_394_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n188_match_defer_α
n187_match_begin_β:     mov              r11, 149
.Lmatch_begin_α_394_13: lea              rsp, [rbp + -88]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_394_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_394_1
                                                                              jmp   .Lmatch_begin_α_394_0
.Lmatch_begin_β_394_1:
.Lmatch_begin_γ_187_af: mov              r11, 149
.Lmatch_begin_ω_187_af: mov              r11, 149
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              r13, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n186_assign_β
                        .size            n187_match_begin_bx, .-n187_match_begin_bx
                        .type            n188_match_defer_bx, @function
n188_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_match_defer_α:     mov              r11, 150
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S4]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_395_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_395_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_395_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_395_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_395_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_395_23
                                                                              jmp   .Lmatch_defer_α_395_22
.Lmatch_defer_α_395_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_395_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_395_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_395_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_395_0
.Lmatch_defer_α_395_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_395_0
.Lmatch_defer_α_395_22: sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [rip + .S4]
                        mov              esi, r14d
                        mov              rdx, 0
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_probe_run@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_395_50
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_395_50: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
.Lmatch_defer_α_395_23: test             rax, rax;                            jz    .Lmatch_defer_α_395_0
.Lmatch_defer_α_395_48: mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_395_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_395_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_395_4:                                                        jmp   n189_match_end_α
.Lmatch_defer_α_395_5:  cmp              r14d, -2;                            je    .Lmatch_begin_ω_187_af
                                                                              jmp   n187_match_begin_β
.Lmatch_defer_α_395_0:  mov              eax, edx
                        cmp              eax, -2;                             jne   .Lmatch_defer_α_395_49
                        sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open_entry@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_395_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_395_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_395_2:  test             rax, rax;                            je    .Lmatch_defer_α_395_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_395_40
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
                        and              rcx, 255
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_395_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_395_141
                        lea              rcx, [rip + .Lmatch_defer_α_395_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_395_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_395_42]
                        lea              rdx, [rip + .Lmatch_defer_α_395_43]; jmp   rax
.Lmatch_defer_α_395_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_395_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_395_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_395_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_395_46
.Lmatch_defer_α_395_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_395_47
.Lmatch_defer_α_395_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_395_46
.Lmatch_defer_α_395_43: add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_395_47
.Lmatch_defer_α_395_141:
                        lea              rcx, [rip + .Lmatch_defer_α_395_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_395_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_395_142]
                        lea              rdx, [rip + .Lmatch_defer_α_395_143]
                                                                              jmp   rax
.Lmatch_defer_α_395_142:
                        add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_395_46
.Lmatch_defer_α_395_143:
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_395_47
.Lmatch_defer_α_395_46: mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_395_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_395_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_395_2
.Lmatch_defer_α_395_47: mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_395_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_395_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_395_2
.Lmatch_defer_α_395_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_395_48
.Lmatch_defer_α_395_3:  mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              edi, r14d
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_395_49: cmp              r14d, -2;                            je    .Lmatch_begin_ω_187_af
                        test             eax, eax;                            js    n187_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_395_6]
                        push             rcx
                        push             rax;                                 jmp   n189_match_end_α
.Lmatch_defer_α_395_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n187_match_begin_β
n188_match_defer_β:     mov              r11, 150
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_395_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_395_12
                                                                              jmp   rax
.Lmatch_defer_β_395_12:                                                       jmp   qword ptr [rsp]
                        .size            n188_match_defer_bx, .-n188_match_defer_bx
                        .type            n189_match_end_bx, @function
n189_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_match_end_α:       mov              r11, 151
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
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rsi, r12
                        mov              rdx, r13
                        call             qword ptr [rip + rt_dcap_end_ok_open@GOTPCREL]
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:
.Lmatch_end_α_397_1:    cmp              rax, 1;                              jbe   .Lmatch_end_α_397_2
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
                        and              rcx, 255
                        cmp              rcx, 2;                              je    .Lmatch_end_α_397_20
                        cmp              rcx, 1;                              je    .Lmatch_end_α_397_120
                        lea              rcx, [rip + .Lmatch_end_α_397_22]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_397_21]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_397_21]
                        lea              rdx, [rip + .Lmatch_end_α_397_22];   jmp   rax
.Lmatch_end_α_397_20:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_397_23]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_397_24]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_end_α_397_23:   add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_397_8
.Lmatch_end_α_397_24:   add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_397_9
.Lmatch_end_α_397_21:   add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_397_8
.Lmatch_end_α_397_22:   add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_397_9
.Lmatch_end_α_397_120:  lea              rcx, [rip + .Lmatch_end_α_397_122]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_397_121]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_397_121]
                        lea              rdx, [rip + .Lmatch_end_α_397_122];  jmp   rax
.Lmatch_end_α_397_121:  add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_397_8
.Lmatch_end_α_397_122:  add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_397_9
.Lmatch_end_α_397_8:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_land_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_397_1
.Lmatch_end_α_397_9:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_land_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_397_1
.Lmatch_end_α_397_2:    mov              qword ptr [rsp + 0], rax
                        call             qword ptr [rip + rt_dcap_end_ok_close@GOTPCREL]
                        mov              rdi, qword ptr [rbp + -16]           # outer_Σ
                        mov              rsi, qword ptr [rbp + -32]           # outer_Δ
                        lea              rdx, [rbp + -88]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
                        mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              rax, qword ptr [rsp + 0]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        test             rax, rax;                            je    .Lmatch_end_α_397_13
                                                                              jmp   .Lmatch_begin_ω_187_af
.Lmatch_end_α_397_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n190_statement_end_α
                        .size            n189_match_end_bx, .-n189_match_end_bx
                        .type            n190_statement_end_bx, @function
n190_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_end_α:   mov              r11, 152
                        add              rsp, 32;                             jmp   n191_stmt_mark_α
                        .size            n190_statement_end_bx, .-n190_statement_end_bx
                        .type            n191_stmt_mark_bx, @function
n191_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT  =   'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n191_stmt_mark_α:       mov              r11, 153
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 27
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n192_statement_begin_α
                        .size            n191_stmt_mark_bx, .-n191_stmt_mark_bx
                        .type            n192_statement_begin_bx, @function
n192_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_begin_α: mov              r11, 154;                            jmp   n193_lit_string_α
n192_statement_begin_β: mov              r11, 154;                            jmp   main_γ
                        .size            n192_statement_begin_bx, .-n192_statement_begin_bx
                        .type            n193_lit_string_bx, @function
n193_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:      sub              rsp, 16
                        mov              r11, 155
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_404_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n194_var_α
.Llit_string_α_404_0:   .quad            .Llit_string_α_404_0_s
.Llit_string_α_404_0_s: .string          "matched bytes="
                        .size            n193_lit_string_bx, .-n193_lit_string_bx
                        .type            n194_var_bx, @function
n194_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             sub              rsp, 16
                        mov              r11, 156
                        mov              rax, qword ptr [r9 + 112]            # src
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n195_call_α
n194_var_β:             mov              r11, 156
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n192_statement_begin_β
                        .size            n194_var_bx, .-n194_var_bx
                        .type            n195_call_bx, @function
n195_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_call_α:            sub              rsp, 16
                        mov              r11, 157
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd407:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd407]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_406_240
                        add              rsp, 16;                             jmp   n194_var_β
.Lcall_α_406_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:186
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n196_binop_α
n195_call_β:            mov              r11, 157
                        add              rsp, 16;                             jmp   n194_var_β
                        .size            n195_call_bx, .-n195_call_bx
                        .type            n196_binop_bx, @function
n196_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_binop_α:           sub              rsp, 16
                        mov              r11, 158
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:66
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n197_assign_α
n196_binop_β:           mov              r11, 158
                        add              rsp, 32;                             jmp   n194_var_β
                        .size            n196_binop_bx, .-n196_binop_bx
                        .type            n197_assign_bx, @function
n197_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_assign_α:          mov              r11, 159
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_409_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n198_statement_end_α
.Lassign_α_409_0:       .quad            .Lassign_α_409_0_s
.Lassign_α_409_0_s:     .string          "OUTPUT"
                        .size            n197_assign_bx, .-n197_assign_bx
                        .type            n198_statement_end_bx, @function
n198_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_end_α:   mov              r11, 160
                        add              rsp, 64;                             jmp   main_γ
                        .size            n198_statement_end_bx, .-n198_statement_end_bx
                        .type            n199_statement_begin_bx, @function
n199_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_begin_α: mov              r11, 161;                            jmp   n200_lit_string_α
n199_statement_begin_β: mov              r11, 161;                            jmp   main_γ
                        .size            n199_statement_begin_bx, .-n199_statement_begin_bx
                        .type            n200_lit_string_bx, @function
n200_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_string_α:      sub              rsp, 16
                        mov              r11, 162
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_414_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n201_assign_α
.Llit_string_α_414_0:   .quad            .Llit_string_α_414_0_s
.Llit_string_α_414_0_s: .string          "Pattern match failed"
                        .size            n200_lit_string_bx, .-n200_lit_string_bx
                        .type            n201_assign_bx, @function
n201_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_assign_α:          mov              r11, 163
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_415_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n202_statement_end_α
.Lassign_α_415_0:       .quad            .Lassign_α_415_0_s
.Lassign_α_415_0_s:     .string          "OUTPUT"
                        .size            n201_assign_bx, .-n201_assign_bx
                        .type            n202_statement_end_bx, @function
n202_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_statement_end_α:   mov              r11, 164
                        add              rsp, 16;                             jmp   main_γ
                        .size            n202_statement_end_bx, .-n202_statement_end_bx
                        .type            n203_goto_bx, @function
n203_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_goto_α:            mov              r11, 165;                            jmp   LBL__token
n203_goto_β:            mov              r11, 165;                            jmp   main_ω
                        .size            n203_goto_bx, .-n203_goto_bx
                        .type            n204_stmt_mark_bx, @function
n204_stmt_mark_bx:
#=======================================================================================================================
# token   num = +num
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
LBL__token:             mov              r11, 166
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n71_statement_begin_α
                        .size            n204_stmt_mark_bx, .-n204_stmt_mark_bx
                        .type            n205_goto_bx, @function
n205_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_goto_α:            mov              r11, 167;                            jmp   n70_stmt_mark_α
n205_goto_β:            mov              r11, 167;                            jmp   main_ω
                        .size            n205_goto_bx, .-n205_goto_bx
                        .type            n206_goto_bx, @function
n206_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_goto_α:            mov              r11, 168;                            jmp   n182_stmt_mark_α
n206_goto_β:            mov              r11, 168;                            jmp   main_ω
                        .size            n206_goto_bx, .-n206_goto_bx
                        .type            n207_define_bx, @function
n207_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 169
                        mov              edi, 1
                        call             qword ptr [rip + rt_kw_set_rtntype_role@GOTPCREL]
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
                        .size            n207_define_bx, .-n207_define_bx
                        .type            n208_define_bx, @function
n208_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              r11, 170
                        mov              edi, 2
                        call             qword ptr [rip + rt_kw_set_rtntype_role@GOTPCREL]
                        add              rsp, 8
                        pop              rcx;                                 jmp   rcx
                        .size            n208_define_bx, .-n208_define_bx
                        .type            n209_lit_string_bx, @function
n209_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              r11, 171
                        push             rax
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
                        push             rax                                  # gc_poll bb_glue_flat.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            7423049944410
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            1712
                        .quad            5
                        .quad            1477743627730944
                        .quad            8800387990848
                        .quad            17600775980360
                        .quad            79169132168536
                        .quad            299067162756512
.Lgcmap_main_s:         .string          "main"
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
                        .long            1712
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
                        .section         .rodata
.Lstartup_pname2:       .string          "PAT$0"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__PAT$0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            432
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            2
                        .quad            .Lgcmap_PAT$0
                        .quad            .Lgcmap_main
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.S0:                    .string          "wrd"
.S1:                    .string          "tag"
.S2:                    .string          "*token"
.S3:                    .string          "num"
.S4:                    .string          "PATV$0"
                        .text
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
