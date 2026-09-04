                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/calculator/calculator-1-match-fence.sno"
                        .file            2 "<included>"
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
                        .type            n0_match_span_bx, @function
n0_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_span_α:        sub              rsp, 16
                        mov              r11, 1
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lmatch_span_α_2_0:     cmp              ecx, r15d;                           jge   .Lmatch_span_α_2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_2_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_2_0
.Lmatch_span_α_2_1:     cmp              ecx, r14d;                           jg    .Lmatch_span_α_2_240
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lmatch_span_α_2_240:   mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   PAT$0_γ
n0_match_span_β:        mov              r11, 1
                        mov              r14d, dword ptr [rbp + -60]
                        add              rsp, 16;                             jmp   PAT$0_ω
                        .size            n0_match_span_bx, .-n0_match_span_bx
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
                        .type            n3_match_any_bx, @function
n3_match_any_bx:
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
                        .size            n3_match_any_bx, .-n3_match_any_bx
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
                        sub              rsp, 72
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n6_match_alternate_bx, @function
n6_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_match_alternate_α:   mov              r11, 3
                        mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_13_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n11_match_defer_α
.Lmatch_alternate_α_13_21:
                        lea              rax, [rip + .Lmatch_alternate_α_13_22]
                        mov              qword ptr [rbp + -56], rax;          jmp   n10_match_defer_α
.Lmatch_alternate_α_13_22:
                        lea              rax, [rip + .Lmatch_alternate_α_13_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n7_match_lit_α
.Lmatch_alternate_γ_6_s0:
                        mov              r11, 3
                        lea              rax, [rip + .Lmatch_alternate_α_13_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_6_as
.Lmatch_alternate_γ_6_s1:
                        mov              r11, 3
                        lea              rax, [rip + .Lmatch_alternate_α_13_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_6_as
.Lmatch_alternate_γ_6_s2:
                        mov              r11, 3
                        lea              rax, [rip + .Lmatch_alternate_α_13_42]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_6_as
.Lmatch_alternate_α_13_40:
                                                                              jmp   n11_match_defer_β
.Lmatch_alternate_α_13_41:
                                                                              jmp   n10_match_defer_β
.Lmatch_alternate_α_13_42:
                                                                              jmp   n9_match_lit_β
.Lmatch_alternate_γ_6_as:
                        mov              r11, 3;                              jmp   PAT$2_γ
n6_match_alternate_β:   mov              r11, 3
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
.Lmatch_alternate_γ_6_af:
                        mov              r11, 3
.Lmatch_alternate_ω_6_af:
                        mov              r11, 3
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lmatch_alternate_α_13_19:
                                                                              jmp   PAT$2_ω
                        .size            n6_match_alternate_bx, .-n6_match_alternate_bx
                        .type            n7_match_lit_bx, @function
n7_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_match_lit_α:         mov              r11, 4
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_6_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   .Lmatch_alternate_ω_6_af
                        add              r14d, 1;                             jmp   n8_match_defer_α
n7_match_lit_β:         mov              r11, 4
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_6_af
                        .size            n7_match_lit_bx, .-n7_match_lit_bx
                        .type            n8_match_defer_bx, @function
n8_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_match_defer_α:       mov              r11, 5
                        push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 80]             # X
                        mov              rdx, qword ptr [r9 + 88]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_16_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_16_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 88];            jmp   .Lmatch_defer_α_16_10
.Lmatch_defer_α_16_9:   cmp              al, 88;                              jne   .Lmatch_defer_α_16_21
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
                        test             rax, rax;                            je    .Lmatch_defer_α_16_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_16_10
.Lmatch_defer_α_16_21:  xor              eax, eax
.Lmatch_defer_α_16_10:  test             rax, rax;                            jz    .Lmatch_defer_α_16_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_16_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_16_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_16_4:   mov              rsp, rbp
                        pop              rbp;                                 jmp   n9_match_lit_α
.Lmatch_defer_α_16_5:   mov              rsp, rbp
                        pop              rbp;                                 jmp   n7_match_lit_β
.Lmatch_defer_α_16_0:   push             r14
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
                        test             eax, eax;                            js    n7_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_16_6]
                        push             rcx
                        push             rax;                                 jmp   n9_match_lit_α
.Lmatch_defer_α_16_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n7_match_lit_β
n8_match_defer_β:       mov              r11, 5
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n7_match_lit_β
                        .size            n8_match_defer_bx, .-n8_match_defer_bx
                        .type            n9_match_lit_bx, @function
n9_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_match_lit_α:         mov              r11, 6
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_6_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   .Lmatch_alternate_ω_6_af
                        add              r14d, 1;                             jmp   .Lmatch_alternate_γ_6_s2
n9_match_lit_β:         mov              r11, 6
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_6_af
                        .size            n9_match_lit_bx, .-n9_match_lit_bx
                        .type            n10_match_defer_bx, @function
n10_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_match_defer_α:      mov              r11, 7
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_19_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_19_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_19_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_19_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_19_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_19_18
.Lmatch_defer_α_19_17:  mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_19_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_19_16:
.Lmatch_defer_α_19_18:  test             rax, rax;                            jz    .Lmatch_defer_α_19_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_19_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_19_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_19_4:                                                         jmp   .Lmatch_alternate_γ_6_s1
.Lmatch_defer_α_19_5:                                                         jmp   .Lmatch_alternate_ω_6_af
.Lmatch_defer_α_19_0:   push             r14
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
                        test             eax, eax;                            js    .Lmatch_alternate_ω_6_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_19_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_6_s1
.Lmatch_defer_α_19_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_6_af
n10_match_defer_β:      mov              r11, 7
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_19_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_19_12
                                                                              jmp   rax
.Lmatch_defer_β_19_12:                                                        jmp   qword ptr [rsp]
                        .size            n10_match_defer_bx, .-n10_match_defer_bx
                        .type            n11_match_defer_bx, @function
n11_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_match_defer_α:      mov              r11, 8
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_20_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_20_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_20_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_20_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_20_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_20_18
.Lmatch_defer_α_20_17:  mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_20_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_20_16:
.Lmatch_defer_α_20_18:  test             rax, rax;                            jz    .Lmatch_defer_α_20_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_20_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_20_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_20_4:                                                         jmp   .Lmatch_alternate_γ_6_s0
.Lmatch_defer_α_20_5:                                                         jmp   .Lmatch_alternate_ω_6_af
.Lmatch_defer_α_20_0:   push             r14
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
                        test             eax, eax;                            js    .Lmatch_alternate_ω_6_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_20_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_6_s0
.Lmatch_defer_α_20_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_6_af
n11_match_defer_β:      mov              r11, 8
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_20_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_20_12
                                                                              jmp   rax
.Lmatch_defer_β_20_12:                                                        jmp   qword ptr [rsp]
                        .size            n11_match_defer_bx, .-n11_match_defer_bx
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
                        sub              rsp, 72
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n21_match_alternate_bx, @function
n21_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_match_alternate_α:  mov              r11, 9
                        mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_28_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n25_match_lit_α
.Lmatch_alternate_α_28_21:
                        lea              rax, [rip + .Lmatch_alternate_α_28_22]
                        mov              qword ptr [rbp + -56], rax;          jmp   n23_match_lit_α
.Lmatch_alternate_α_28_22:
                        lea              rax, [rip + .Lmatch_alternate_α_28_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n22_match_defer_α
.Lmatch_alternate_γ_21_s0:
                        mov              r11, 9
                        lea              rax, [rip + .Lmatch_alternate_α_28_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_21_as
.Lmatch_alternate_γ_21_s1:
                        mov              r11, 9
                        lea              rax, [rip + .Lmatch_alternate_α_28_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_21_as
.Lmatch_alternate_γ_21_s2:
                        mov              r11, 9
                        lea              rax, [rip + .Lmatch_alternate_α_28_42]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_21_as
.Lmatch_alternate_α_28_40:
                                                                              jmp   n26_match_defer_β
.Lmatch_alternate_α_28_41:
                                                                              jmp   n24_match_defer_β
.Lmatch_alternate_α_28_42:
                                                                              jmp   n22_match_defer_β
.Lmatch_alternate_γ_21_as:
                        mov              r11, 9;                              jmp   PAT$3_γ
n21_match_alternate_β:  mov              r11, 9
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
.Lmatch_alternate_γ_21_af:
                        mov              r11, 9
.Lmatch_alternate_ω_21_af:
                        mov              r11, 9
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lmatch_alternate_α_28_19:
                                                                              jmp   PAT$3_ω
                        .size            n21_match_alternate_bx, .-n21_match_alternate_bx
                        .type            n22_match_defer_bx, @function
n22_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_match_defer_α:      mov              r11, 10
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_29_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_29_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_29_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_29_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_29_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_29_18
.Lmatch_defer_α_29_17:  mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_29_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_29_16:
.Lmatch_defer_α_29_18:  test             rax, rax;                            jz    .Lmatch_defer_α_29_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_29_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_29_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_29_4:                                                         jmp   .Lmatch_alternate_γ_21_s2
.Lmatch_defer_α_29_5:                                                         jmp   .Lmatch_alternate_ω_21_af
.Lmatch_defer_α_29_0:   push             r14
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
                        test             eax, eax;                            js    .Lmatch_alternate_ω_21_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_29_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_21_s2
.Lmatch_defer_α_29_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_21_af
n22_match_defer_β:      mov              r11, 10
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_29_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_29_12
                                                                              jmp   rax
.Lmatch_defer_β_29_12:                                                        jmp   qword ptr [rsp]
                        .size            n22_match_defer_bx, .-n22_match_defer_bx
                        .type            n23_match_lit_bx, @function
n23_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_match_lit_α:        mov              r11, 11
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_21_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   .Lmatch_alternate_ω_21_af
                        add              r14d, 1;                             jmp   n24_match_defer_α
n23_match_lit_β:        mov              r11, 11
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_21_af
                        .size            n23_match_lit_bx, .-n23_match_lit_bx
                        .type            n24_match_defer_bx, @function
n24_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_match_defer_α:      mov              r11, 12
                        push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 48]             # F
                        mov              rdx, qword ptr [r9 + 56]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_32_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_32_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 56];            jmp   .Lmatch_defer_α_32_10
.Lmatch_defer_α_32_9:   cmp              al, 88;                              jne   .Lmatch_defer_α_32_21
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
                        test             rax, rax;                            je    .Lmatch_defer_α_32_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_32_10
.Lmatch_defer_α_32_21:  xor              eax, eax
.Lmatch_defer_α_32_10:  test             rax, rax;                            jz    .Lmatch_defer_α_32_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_32_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_32_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_32_4:   mov              rsp, rbp
                        pop              rbp;                                 jmp   .Lmatch_alternate_γ_21_s1
.Lmatch_defer_α_32_5:   mov              rsp, rbp
                        pop              rbp;                                 jmp   n23_match_lit_β
.Lmatch_defer_α_32_0:   push             r14
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
                        test             eax, eax;                            js    n23_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_32_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_21_s1
.Lmatch_defer_α_32_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n23_match_lit_β
n24_match_defer_β:      mov              r11, 12
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n23_match_lit_β
                        .size            n24_match_defer_bx, .-n24_match_defer_bx
                        .type            n25_match_lit_bx, @function
n25_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_match_lit_α:        mov              r11, 13
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_21_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   .Lmatch_alternate_ω_21_af
                        add              r14d, 1;                             jmp   n26_match_defer_α
n25_match_lit_β:        mov              r11, 13
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_21_af
                        .size            n25_match_lit_bx, .-n25_match_lit_bx
                        .type            n26_match_defer_bx, @function
n26_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_match_defer_α:      mov              r11, 14
                        push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 48]             # F
                        mov              rdx, qword ptr [r9 + 56]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_35_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_35_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 56];            jmp   .Lmatch_defer_α_35_10
.Lmatch_defer_α_35_9:   cmp              al, 88;                              jne   .Lmatch_defer_α_35_21
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
                        test             rax, rax;                            je    .Lmatch_defer_α_35_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_35_10
.Lmatch_defer_α_35_21:  xor              eax, eax
.Lmatch_defer_α_35_10:  test             rax, rax;                            jz    .Lmatch_defer_α_35_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_35_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_35_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_35_4:   mov              rsp, rbp
                        pop              rbp;                                 jmp   .Lmatch_alternate_γ_21_s0
.Lmatch_defer_α_35_5:   mov              rsp, rbp
                        pop              rbp;                                 jmp   n25_match_lit_β
.Lmatch_defer_α_35_0:   push             r14
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
                        test             eax, eax;                            js    n25_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_35_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_21_s0
.Lmatch_defer_α_35_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n25_match_lit_β
n26_match_defer_β:      mov              r11, 14
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n25_match_lit_β
                        .size            n26_match_defer_bx, .-n26_match_defer_bx
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
                        .type            n36_match_alternate_bx, @function
n36_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_match_alternate_α:  mov              r11, 15
                        mov              dword ptr [rbp + -104], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_45_21]
                        mov              qword ptr [rbp + -88], rax;          jmp   n41_match_defer_α
.Lmatch_alternate_α_45_21:
                        lea              rax, [rip + .Lmatch_alternate_α_45_22]
                        mov              qword ptr [rbp + -88], rax;          jmp   n38_match_defer_α
.Lmatch_alternate_α_45_22:
                        lea              rax, [rip + .Lmatch_alternate_α_45_19]
                        mov              qword ptr [rbp + -88], rax;          jmp   n37_match_defer_α
.Lmatch_alternate_γ_36_s0:
                        mov              r11, 15
                        lea              rax, [rip + .Lmatch_alternate_α_45_40]
                        mov              qword ptr [rbp + -96], rax;          jmp   .Lmatch_alternate_γ_36_as
.Lmatch_alternate_γ_36_s1:
                        mov              r11, 15
                        lea              rax, [rip + .Lmatch_alternate_α_45_41]
                        mov              qword ptr [rbp + -96], rax;          jmp   .Lmatch_alternate_γ_36_as
.Lmatch_alternate_γ_36_s2:
                        mov              r11, 15
                        lea              rax, [rip + .Lmatch_alternate_α_45_42]
                        mov              qword ptr [rbp + -96], rax;          jmp   .Lmatch_alternate_γ_36_as
.Lmatch_alternate_α_45_40:
                                                                              jmp   n43_match_defer_β
.Lmatch_alternate_α_45_41:
                                                                              jmp   n40_match_defer_β
.Lmatch_alternate_α_45_42:
                                                                              jmp   n37_match_defer_β
.Lmatch_alternate_γ_36_as:
                        mov              r11, 15;                             jmp   PAT$4_γ
n36_match_alternate_β:  mov              r11, 15
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
.Lmatch_alternate_γ_36_af:
                        mov              r11, 15
.Lmatch_alternate_ω_36_af:
                        mov              r11, 15
                        mov              r14d, dword ptr [rbp + -104]
                        mov              rax, qword ptr [rbp + -88];          jmp   rax
.Lmatch_alternate_α_45_19:
                                                                              jmp   PAT$4_ω
                        .size            n36_match_alternate_bx, .-n36_match_alternate_bx
                        .type            n37_match_defer_bx, @function
n37_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_match_defer_α:      mov              r11, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_46_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_46_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_46_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_46_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_46_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_46_18
.Lmatch_defer_α_46_17:  mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_46_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_46_16:
.Lmatch_defer_α_46_18:  test             rax, rax;                            jz    .Lmatch_defer_α_46_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_46_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_46_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_46_4:                                                         jmp   .Lmatch_alternate_γ_36_s2
.Lmatch_defer_α_46_5:                                                         jmp   .Lmatch_alternate_ω_36_af
.Lmatch_defer_α_46_0:   push             r14
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
                        test             eax, eax;                            js    .Lmatch_alternate_ω_36_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_46_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_36_s2
.Lmatch_defer_α_46_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_36_af
n37_match_defer_β:      mov              r11, 16
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_46_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_46_12
                                                                              jmp   rax
.Lmatch_defer_β_46_12:                                                        jmp   qword ptr [rsp]
                        .size            n37_match_defer_bx, .-n37_match_defer_bx
                        .type            n38_match_defer_bx, @function
n38_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_match_defer_α:      mov              r11, 17
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_47_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_47_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_47_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_47_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_47_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_47_18
.Lmatch_defer_α_47_17:  mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_47_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_47_16:
.Lmatch_defer_α_47_18:  test             rax, rax;                            jz    .Lmatch_defer_α_47_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_47_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_47_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_47_4:                                                         jmp   n39_match_lit_α
.Lmatch_defer_α_47_5:                                                         jmp   .Lmatch_alternate_ω_36_af
.Lmatch_defer_α_47_0:   push             r14
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
                        test             eax, eax;                            js    .Lmatch_alternate_ω_36_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_47_6]
                        push             rcx
                        push             rax;                                 jmp   n39_match_lit_α
.Lmatch_defer_α_47_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_36_af
n38_match_defer_β:      mov              r11, 17
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_47_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_47_12
                                                                              jmp   rax
.Lmatch_defer_β_47_12:                                                        jmp   qword ptr [rsp]
                        .size            n38_match_defer_bx, .-n38_match_defer_bx
                        .type            n39_match_lit_bx, @function
n39_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_match_lit_α:        mov              r11, 18
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n38_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47;                             jne   n38_match_defer_β
                        add              r14d, 1;                             jmp   n40_match_defer_α
n39_match_lit_β:        mov              r11, 18
                        sub              r14d, 1;                             jmp   n38_match_defer_β
                        .size            n39_match_lit_bx, .-n39_match_lit_bx
                        .type            n40_match_defer_bx, @function
n40_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_match_defer_α:      mov              r11, 19
                        push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 64]             # T
                        mov              rdx, qword ptr [r9 + 72]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_50_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_50_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 72];            jmp   .Lmatch_defer_α_50_10
.Lmatch_defer_α_50_9:   cmp              al, 88;                              jne   .Lmatch_defer_α_50_21
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
                        test             rax, rax;                            je    .Lmatch_defer_α_50_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_50_10
.Lmatch_defer_α_50_21:  xor              eax, eax
.Lmatch_defer_α_50_10:  test             rax, rax;                            jz    .Lmatch_defer_α_50_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_50_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_50_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_50_4:   mov              rsp, rbp
                        pop              rbp;                                 jmp   .Lmatch_alternate_γ_36_s1
.Lmatch_defer_α_50_5:   mov              rsp, rbp
                        pop              rbp;                                 jmp   n39_match_lit_β
.Lmatch_defer_α_50_0:   push             r14
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
                        test             eax, eax;                            js    n39_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_50_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_36_s1
.Lmatch_defer_α_50_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n39_match_lit_β
n40_match_defer_β:      mov              r11, 19
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n39_match_lit_β
                        .size            n40_match_defer_bx, .-n40_match_defer_bx
                        .type            n41_match_defer_bx, @function
n41_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_match_defer_α:      mov              r11, 20
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_51_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_51_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_51_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_51_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_51_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_51_18
.Lmatch_defer_α_51_17:  mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_51_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_51_16:
.Lmatch_defer_α_51_18:  test             rax, rax;                            jz    .Lmatch_defer_α_51_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_51_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_51_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_51_4:                                                         jmp   n42_match_lit_α
.Lmatch_defer_α_51_5:                                                         jmp   .Lmatch_alternate_ω_36_af
.Lmatch_defer_α_51_0:   push             r14
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
                        test             eax, eax;                            js    .Lmatch_alternate_ω_36_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_51_6]
                        push             rcx
                        push             rax;                                 jmp   n42_match_lit_α
.Lmatch_defer_α_51_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_36_af
n41_match_defer_β:      mov              r11, 20
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_51_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_51_12
                                                                              jmp   rax
.Lmatch_defer_β_51_12:                                                        jmp   qword ptr [rsp]
                        .size            n41_match_defer_bx, .-n41_match_defer_bx
                        .type            n42_match_lit_bx, @function
n42_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_match_lit_α:        mov              r11, 21
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n41_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42;                             jne   n41_match_defer_β
                        add              r14d, 1;                             jmp   n43_match_defer_α
n42_match_lit_β:        mov              r11, 21
                        sub              r14d, 1;                             jmp   n41_match_defer_β
                        .size            n42_match_lit_bx, .-n42_match_lit_bx
                        .type            n43_match_defer_bx, @function
n43_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_match_defer_α:      mov              r11, 22
                        push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 64]             # T
                        mov              rdx, qword ptr [r9 + 72]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_54_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_54_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 72];            jmp   .Lmatch_defer_α_54_10
.Lmatch_defer_α_54_9:   cmp              al, 88;                              jne   .Lmatch_defer_α_54_21
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
                        test             rax, rax;                            je    .Lmatch_defer_α_54_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_54_10
.Lmatch_defer_α_54_21:  xor              eax, eax
.Lmatch_defer_α_54_10:  test             rax, rax;                            jz    .Lmatch_defer_α_54_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_54_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_54_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_54_4:   mov              rsp, rbp
                        pop              rbp;                                 jmp   .Lmatch_alternate_γ_36_s0
.Lmatch_defer_α_54_5:   mov              rsp, rbp
                        pop              rbp;                                 jmp   n42_match_lit_β
.Lmatch_defer_α_54_0:   push             r14
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
                        test             eax, eax;                            js    n42_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_54_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_36_s0
.Lmatch_defer_α_54_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n42_match_lit_β
n43_match_defer_β:      mov              r11, 22
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n42_match_lit_β
                        .size            n43_match_defer_bx, .-n43_match_defer_bx
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
                        sub              rsp, 104
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n55_match_alternate_bx, @function
n55_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_match_alternate_α:  mov              r11, 23
                        mov              dword ptr [rbp + -104], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_64_21]
                        mov              qword ptr [rbp + -88], rax;          jmp   n60_match_defer_α
.Lmatch_alternate_α_64_21:
                        lea              rax, [rip + .Lmatch_alternate_α_64_22]
                        mov              qword ptr [rbp + -88], rax;          jmp   n57_match_defer_α
.Lmatch_alternate_α_64_22:
                        lea              rax, [rip + .Lmatch_alternate_α_64_19]
                        mov              qword ptr [rbp + -88], rax;          jmp   n56_match_defer_α
.Lmatch_alternate_γ_55_s0:
                        mov              r11, 23
                        lea              rax, [rip + .Lmatch_alternate_α_64_40]
                        mov              qword ptr [rbp + -96], rax;          jmp   .Lmatch_alternate_γ_55_as
.Lmatch_alternate_γ_55_s1:
                        mov              r11, 23
                        lea              rax, [rip + .Lmatch_alternate_α_64_41]
                        mov              qword ptr [rbp + -96], rax;          jmp   .Lmatch_alternate_γ_55_as
.Lmatch_alternate_γ_55_s2:
                        mov              r11, 23
                        lea              rax, [rip + .Lmatch_alternate_α_64_42]
                        mov              qword ptr [rbp + -96], rax;          jmp   .Lmatch_alternate_γ_55_as
.Lmatch_alternate_α_64_40:
                                                                              jmp   n62_match_defer_β
.Lmatch_alternate_α_64_41:
                                                                              jmp   n59_match_defer_β
.Lmatch_alternate_α_64_42:
                                                                              jmp   n56_match_defer_β
.Lmatch_alternate_γ_55_as:
                        mov              r11, 23;                             jmp   PAT$5_γ
n55_match_alternate_β:  mov              r11, 23
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
.Lmatch_alternate_γ_55_af:
                        mov              r11, 23
.Lmatch_alternate_ω_55_af:
                        mov              r11, 23
                        mov              r14d, dword ptr [rbp + -104]
                        mov              rax, qword ptr [rbp + -88];          jmp   rax
.Lmatch_alternate_α_64_19:
                                                                              jmp   PAT$5_ω
                        .size            n55_match_alternate_bx, .-n55_match_alternate_bx
                        .type            n56_match_defer_bx, @function
n56_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_match_defer_α:      mov              r11, 24
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_65_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_65_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_65_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_65_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_65_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_65_18
.Lmatch_defer_α_65_17:  mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_65_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_65_16:
.Lmatch_defer_α_65_18:  test             rax, rax;                            jz    .Lmatch_defer_α_65_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_65_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_65_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_65_4:                                                         jmp   .Lmatch_alternate_γ_55_s2
.Lmatch_defer_α_65_5:                                                         jmp   .Lmatch_alternate_ω_55_af
.Lmatch_defer_α_65_0:   push             r14
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
                        test             eax, eax;                            js    .Lmatch_alternate_ω_55_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_65_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_55_s2
.Lmatch_defer_α_65_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_55_af
n56_match_defer_β:      mov              r11, 24
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_65_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_65_12
                                                                              jmp   rax
.Lmatch_defer_β_65_12:                                                        jmp   qword ptr [rsp]
                        .size            n56_match_defer_bx, .-n56_match_defer_bx
                        .type            n57_match_defer_bx, @function
n57_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_match_defer_α:      mov              r11, 25
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_66_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_66_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_66_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_66_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_66_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_66_18
.Lmatch_defer_α_66_17:  mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_66_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_66_16:
.Lmatch_defer_α_66_18:  test             rax, rax;                            jz    .Lmatch_defer_α_66_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_66_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_66_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_66_4:                                                         jmp   n58_match_lit_α
.Lmatch_defer_α_66_5:                                                         jmp   .Lmatch_alternate_ω_55_af
.Lmatch_defer_α_66_0:   push             r14
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
                        test             eax, eax;                            js    .Lmatch_alternate_ω_55_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_66_6]
                        push             rcx
                        push             rax;                                 jmp   n58_match_lit_α
.Lmatch_defer_α_66_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_55_af
n57_match_defer_β:      mov              r11, 25
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_66_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_66_12
                                                                              jmp   rax
.Lmatch_defer_β_66_12:                                                        jmp   qword ptr [rsp]
                        .size            n57_match_defer_bx, .-n57_match_defer_bx
                        .type            n58_match_lit_bx, @function
n58_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_match_lit_α:        mov              r11, 26
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n57_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n57_match_defer_β
                        add              r14d, 1;                             jmp   n59_match_defer_α
n58_match_lit_β:        mov              r11, 26
                        sub              r14d, 1;                             jmp   n57_match_defer_β
                        .size            n58_match_lit_bx, .-n58_match_lit_bx
                        .type            n59_match_defer_bx, @function
n59_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_match_defer_α:      mov              r11, 27
                        push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 80]             # X
                        mov              rdx, qword ptr [r9 + 88]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_69_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_69_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 88];            jmp   .Lmatch_defer_α_69_10
.Lmatch_defer_α_69_9:   cmp              al, 88;                              jne   .Lmatch_defer_α_69_21
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
                        test             rax, rax;                            je    .Lmatch_defer_α_69_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_69_10
.Lmatch_defer_α_69_21:  xor              eax, eax
.Lmatch_defer_α_69_10:  test             rax, rax;                            jz    .Lmatch_defer_α_69_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_69_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_69_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_69_4:   mov              rsp, rbp
                        pop              rbp;                                 jmp   .Lmatch_alternate_γ_55_s1
.Lmatch_defer_α_69_5:   mov              rsp, rbp
                        pop              rbp;                                 jmp   n58_match_lit_β
.Lmatch_defer_α_69_0:   push             r14
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
                        test             eax, eax;                            js    n58_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_69_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_55_s1
.Lmatch_defer_α_69_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n58_match_lit_β
n59_match_defer_β:      mov              r11, 27
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n58_match_lit_β
                        .size            n59_match_defer_bx, .-n59_match_defer_bx
                        .type            n60_match_defer_bx, @function
n60_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_match_defer_α:      mov              r11, 28
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_70_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_70_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_70_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_70_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_70_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_70_18
.Lmatch_defer_α_70_17:  mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_70_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_70_16:
.Lmatch_defer_α_70_18:  test             rax, rax;                            jz    .Lmatch_defer_α_70_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_70_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_70_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_70_4:                                                         jmp   n61_match_lit_α
.Lmatch_defer_α_70_5:                                                         jmp   .Lmatch_alternate_ω_55_af
.Lmatch_defer_α_70_0:   push             r14
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
                        test             eax, eax;                            js    .Lmatch_alternate_ω_55_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_70_6]
                        push             rcx
                        push             rax;                                 jmp   n61_match_lit_α
.Lmatch_defer_α_70_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_55_af
n60_match_defer_β:      mov              r11, 28
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_70_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_70_12
                                                                              jmp   rax
.Lmatch_defer_β_70_12:                                                        jmp   qword ptr [rsp]
                        .size            n60_match_defer_bx, .-n60_match_defer_bx
                        .type            n61_match_lit_bx, @function
n61_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_match_lit_α:        mov              r11, 29
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n60_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   n60_match_defer_β
                        add              r14d, 1;                             jmp   n62_match_defer_α
n61_match_lit_β:        mov              r11, 29
                        sub              r14d, 1;                             jmp   n60_match_defer_β
                        .size            n61_match_lit_bx, .-n61_match_lit_bx
                        .type            n62_match_defer_bx, @function
n62_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_match_defer_α:      mov              r11, 30
                        push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 80]             # X
                        mov              rdx, qword ptr [r9 + 88]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_73_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_73_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 88];            jmp   .Lmatch_defer_α_73_10
.Lmatch_defer_α_73_9:   cmp              al, 88;                              jne   .Lmatch_defer_α_73_21
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
                        test             rax, rax;                            je    .Lmatch_defer_α_73_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_73_10
.Lmatch_defer_α_73_21:  xor              eax, eax
.Lmatch_defer_α_73_10:  test             rax, rax;                            jz    .Lmatch_defer_α_73_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_73_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_73_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_73_4:   mov              rsp, rbp
                        pop              rbp;                                 jmp   .Lmatch_alternate_γ_55_s0
.Lmatch_defer_α_73_5:   mov              rsp, rbp
                        pop              rbp;                                 jmp   n61_match_lit_β
.Lmatch_defer_α_73_0:   push             r14
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
                        test             eax, eax;                            js    n61_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_73_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_55_s0
.Lmatch_defer_α_73_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n61_match_lit_β
n62_match_defer_β:      mov              r11, 30
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n61_match_lit_β
                        .size            n62_match_defer_bx, .-n62_match_defer_bx
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
                        .type            n74_match_pos_bx, @function
n74_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_match_pos_α:        mov              r11, 31
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$6_ω
                                                                              jmp   n75_match_arbno_α
n74_match_pos_β:        mov              r11, 31;                             jmp   PAT$6_ω
                        .size            n74_match_pos_bx, .-n74_match_pos_bx
                        .type            n75_match_arbno_bx, @function
n75_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_match_arbno_α:      mov              r11, 32
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n76_match_rpos_α
n75_match_arbno_β:      mov              r11, 32
                        mov              r12, qword ptr [rbp + -40];          jmp   n77_match_defer_α
.Lmatch_arbno_γ_75_as:  mov              r11, 32
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n77_match_defer_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n76_match_rpos_α
.Lmatch_arbno_γ_75_af:  mov              r11, 32
.Lmatch_arbno_ω_75_af:  mov              r11, 32
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n74_match_pos_β
                        .size            n75_match_arbno_bx, .-n75_match_arbno_bx
                        .type            n76_match_rpos_bx, @function
n76_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_match_rpos_α:       mov              r11, 33
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n75_match_arbno_β
                                                                              jmp   PAT$6_γ
n76_match_rpos_β:       mov              r11, 33;                             jmp   n75_match_arbno_β
                        .size            n76_match_rpos_bx, .-n76_match_rpos_bx
                        .type            n77_match_defer_bx, @function
n77_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_match_defer_α:      mov              r11, 34
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_83_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_83_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_83_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_83_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_83_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_83_18
.Lmatch_defer_α_83_17:  mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_83_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_83_16:
.Lmatch_defer_α_83_18:  test             rax, rax;                            jz    .Lmatch_defer_α_83_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_83_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_83_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_83_4:                                                         jmp   n78_match_defer_α
.Lmatch_defer_α_83_5:                                                         jmp   .Lmatch_arbno_ω_75_af
.Lmatch_defer_α_83_0:   push             r14
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
                        test             eax, eax;                            js    .Lmatch_arbno_ω_75_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_83_6]
                        push             rcx
                        push             rax;                                 jmp   n78_match_defer_α
.Lmatch_defer_α_83_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_arbno_ω_75_af
n77_match_defer_β:      mov              r11, 34
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_83_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_83_12
                                                                              jmp   rax
.Lmatch_defer_β_83_12:                                                        jmp   qword ptr [rsp]
                        .size            n77_match_defer_bx, .-n77_match_defer_bx
                        .type            n78_match_defer_bx, @function
n78_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_match_defer_α:      mov              r11, 35
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_84_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_84_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_84_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_84_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_84_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_84_18
.Lmatch_defer_α_84_17:  mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_84_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_84_16:
.Lmatch_defer_α_84_18:  test             rax, rax;                            jz    .Lmatch_defer_α_84_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_84_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_84_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_84_4:                                                         jmp   .Lmatch_arbno_γ_75_as
.Lmatch_defer_α_84_5:                                                         jmp   n77_match_defer_β
.Lmatch_defer_α_84_0:   push             r14
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
                        test             eax, eax;                            js    n77_match_defer_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_84_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_arbno_γ_75_as
.Lmatch_defer_α_84_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n77_match_defer_β
n78_match_defer_β:      mov              r11, 35
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_84_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_84_12
                                                                              jmp   rax
.Lmatch_defer_β_84_12:                                                        jmp   qword ptr [rsp]
                        .size            n78_match_defer_bx, .-n78_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_β:
                                                                              jmp   n76_match_rpos_β
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
                        sub              rsp, 65544
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
                        .type            n85_statement_begin_bx, @function
n85_statement_begin_bx:
#=======================================================================================================================
#         &TRIM   =  0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n85_statement_begin_α:  mov              r11, 36
                        mov              r10, 1;                              jmp   n86_lit_integer_α
n85_statement_begin_β:  mov              r11, 36;                             jmp   n89_statement_begin_α
                        .size            n85_statement_begin_bx, .-n85_statement_begin_bx
                        .type            n86_lit_integer_bx, @function
n86_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:      sub              rsp, 16
                        mov              r11, 37
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_184_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n87_kw_assign_snobol4_α
.Llit_integer_α_184_0:  .quad            0
                        .size            n86_lit_integer_bx, .-n86_lit_integer_bx
                        .type            n87_kw_assign_snobol4_bx, @function
n87_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 38
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_185_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_185_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n85_statement_begin_β
.Lkw_assign_snobol4_α_185_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n88_statement_end_α
.Lkw_assign_snobol4_α_185_0:
                        .quad            1
                        .size            n87_kw_assign_snobol4_bx, .-n87_kw_assign_snobol4_bx
                        .type            n88_statement_end_bx, @function
n88_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_end_α:    mov              r11, 39
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n89_statement_begin_α
                        .size            n88_statement_end_bx, .-n88_statement_end_bx
                        .type            n89_statement_begin_bx, @function
n89_statement_begin_bx:
#=======================================================================================================================
#         I       =  SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n89_statement_begin_α:  mov              r11, 40
                        mov              r10, 2;                              jmp   n90_lit_string_α
n89_statement_begin_β:  mov              r11, 40;                             jmp   n94_statement_begin_α
                        .size            n89_statement_begin_bx, .-n89_statement_begin_bx
                        .type            n90_lit_string_bx, @function
n90_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       sub              rsp, 16
                        mov              r11, 41
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_190_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n91_call_α
.Llit_string_α_190_0:   .quad            .Llit_string_α_190_0_s
.Llit_string_α_190_0_s: .string          "PAT$0"
                        .size            n90_lit_string_bx, .-n90_lit_string_bx
                        .type            n91_call_bx, @function
n91_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_call_α:             sub              rsp, 16
                        mov              r11, 42
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd192:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd192]
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
                        cmp              al, 104;                             jne   .Lcall_α_191_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n89_statement_begin_β
.Lcall_α_191_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n92_assign_α
n91_call_β:             mov              r11, 42
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n89_statement_begin_β
                        .size            n91_call_bx, .-n91_call_bx
                        .type            n92_assign_bx, @function
n92_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_α:           mov              r11, 43
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # I
                        mov              qword ptr [r9 + 8], rdx;             jmp   n93_statement_end_α
                        .size            n92_assign_bx, .-n92_assign_bx
                        .type            n93_statement_end_bx, @function
n93_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_end_α:    mov              r11, 44
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n94_statement_begin_α
                        .size            n93_statement_end_bx, .-n93_statement_end_bx
                        .type            n94_statement_begin_bx, @function
n94_statement_begin_bx:
#=======================================================================================================================
#         V       =  ANY(&LCASE)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n94_statement_begin_α:  mov              r11, 45
                        mov              r10, 3;                              jmp   n95_lit_string_α
n94_statement_begin_β:  mov              r11, 45;                             jmp   n99_statement_begin_α
                        .size            n94_statement_begin_bx, .-n94_statement_begin_bx
                        .type            n95_lit_string_bx, @function
n95_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       sub              rsp, 16
                        mov              r11, 46
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_198_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n96_call_α
.Llit_string_α_198_0:   .quad            .Llit_string_α_198_0_s
.Llit_string_α_198_0_s: .string          "PAT$1"
                        .size            n95_lit_string_bx, .-n95_lit_string_bx
                        .type            n96_call_bx, @function
n96_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_call_α:             sub              rsp, 16
                        mov              r11, 47
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd200:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd200]
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
                        cmp              al, 104;                             jne   .Lcall_α_199_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n94_statement_begin_β
.Lcall_α_199_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_assign_α
n96_call_β:             mov              r11, 47
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n94_statement_begin_β
                        .size            n96_call_bx, .-n96_call_bx
                        .type            n97_assign_bx, @function
n97_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:           mov              r11, 48
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # V
                        mov              qword ptr [r9 + 24], rdx;            jmp   n98_statement_end_α
                        .size            n97_assign_bx, .-n97_assign_bx
                        .type            n98_statement_end_bx, @function
n98_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:    mov              r11, 49
                        mov              r10, 3
                        add              rsp, 32;                             jmp   n99_statement_begin_α
                        .size            n98_statement_end_bx, .-n98_statement_end_bx
                        .type            n99_statement_begin_bx, @function
n99_statement_begin_bx:
#=======================================================================================================================
#         A       =  FENCE(I | V | '(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n99_statement_begin_α:  mov              r11, 50
                        mov              r10, 4;                              jmp   n100_var_α
n99_statement_begin_β:  mov              r11, 50;                             jmp   n109_statement_begin_α
                        .size            n99_statement_begin_bx, .-n99_statement_begin_bx
                        .type            n100_var_bx, @function
n100_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:             sub              rsp, 16
                        mov              r11, 51
                        mov              rax, qword ptr [r9 + 0]              # I
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_assign_α
                        .size            n100_var_bx, .-n100_var_bx
                        .type            n101_assign_bx, @function
n101_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_assign_α:          mov              r11, 52
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # PAT$2$V0
                        mov              qword ptr [r9 + 136], rdx;           jmp   n102_var_α
                        .size            n101_assign_bx, .-n101_assign_bx
                        .type            n102_var_bx, @function
n102_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             sub              rsp, 16
                        mov              r11, 53
                        mov              rax, qword ptr [r9 + 16]             # V
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_assign_α
n102_var_β:             mov              r11, 53
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n99_statement_begin_β
                        .size            n102_var_bx, .-n102_var_bx
                        .type            n103_assign_bx, @function
n103_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:          mov              r11, 54
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # PAT$2$V1
                        mov              qword ptr [r9 + 152], rdx;           jmp   n104_lit_string_α
                        .size            n103_assign_bx, .-n103_assign_bx
                        .type            n104_lit_string_bx, @function
n104_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      sub              rsp, 16
                        mov              r11, 55
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_210_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n105_lit_string_α
n104_lit_string_β:      mov              r11, 55
                        add              rsp, 16;                             jmp   n102_var_β
.Llit_string_α_210_0:   .quad            .Llit_string_α_210_0_s
.Llit_string_α_210_0_s: .string          "PAT$2"
                        .size            n104_lit_string_bx, .-n104_lit_string_bx
                        .type            n105_lit_string_bx, @function
n105_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:      sub              rsp, 16
                        mov              r11, 56
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_211_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n106_call_α
n105_lit_string_β:      mov              r11, 56
                        add              rsp, 16;                             jmp   n104_lit_string_β
.Llit_string_α_211_0:   .quad            .Llit_string_α_211_0_s
.Llit_string_α_211_0_s: .string          "2"
                        .size            n105_lit_string_bx, .-n105_lit_string_bx
                        .type            n106_call_bx, @function
n106_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_call_α:            sub              rsp, 16
                        mov              r11, 57
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
.Lcall_α_rkfnzd213:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd213]
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
                        cmp              al, 104;                             jne   .Lcall_α_212_240
                        add              rsp, 16;                             jmp   n105_lit_string_β
.Lcall_α_212_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_assign_α
n106_call_β:            mov              r11, 57
                        add              rsp, 16;                             jmp   n105_lit_string_β
                        .size            n106_call_bx, .-n106_call_bx
                        .type            n107_assign_bx, @function
n107_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_assign_α:          mov              r11, 58
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # A
                        mov              qword ptr [r9 + 40], rdx;            jmp   n108_statement_end_α
                        .size            n107_assign_bx, .-n107_assign_bx
                        .type            n108_statement_end_bx, @function
n108_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_end_α:   mov              r11, 59
                        mov              r10, 4
                        add              rsp, 80;                             jmp   n109_statement_begin_α
                        .size            n108_statement_end_bx, .-n108_statement_end_bx
                        .type            n109_statement_begin_bx, @function
n109_statement_begin_bx:
#=======================================================================================================================
#         F       =  FENCE('+' *F | '-' *F | A)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n109_statement_begin_α: mov              r11, 60
                        mov              r10, 5;                              jmp   n110_var_α
n109_statement_begin_β: mov              r11, 60;                             jmp   n117_statement_begin_α
                        .size            n109_statement_begin_bx, .-n109_statement_begin_bx
                        .type            n110_var_bx, @function
n110_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:             sub              rsp, 16
                        mov              r11, 61
                        mov              rax, qword ptr [r9 + 32]             # A
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n111_assign_α
                        .size            n110_var_bx, .-n110_var_bx
                        .type            n111_assign_bx, @function
n111_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_α:          mov              r11, 62
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 168], rdx;           jmp   n112_lit_string_α
                        .size            n111_assign_bx, .-n111_assign_bx
                        .type            n112_lit_string_bx, @function
n112_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:      sub              rsp, 16
                        mov              r11, 63
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_221_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n113_lit_string_α
n112_lit_string_β:      mov              r11, 63
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n109_statement_begin_β
.Llit_string_α_221_0:   .quad            .Llit_string_α_221_0_s
.Llit_string_α_221_0_s: .string          "PAT$3"
                        .size            n112_lit_string_bx, .-n112_lit_string_bx
                        .type            n113_lit_string_bx, @function
n113_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:      sub              rsp, 16
                        mov              r11, 64
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_222_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n114_call_α
n113_lit_string_β:      mov              r11, 64
                        add              rsp, 16;                             jmp   n112_lit_string_β
.Llit_string_α_222_0:   .quad            .Llit_string_α_222_0_s
.Llit_string_α_222_0_s: .string          "1"
                        .size            n113_lit_string_bx, .-n113_lit_string_bx
                        .type            n114_call_bx, @function
n114_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_call_α:            sub              rsp, 16
                        mov              r11, 65
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
.Lcall_α_rkfnzd224:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd224]
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
                        cmp              al, 104;                             jne   .Lcall_α_223_240
                        add              rsp, 16;                             jmp   n113_lit_string_β
.Lcall_α_223_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n115_assign_α
n114_call_β:            mov              r11, 65
                        add              rsp, 16;                             jmp   n113_lit_string_β
                        .size            n114_call_bx, .-n114_call_bx
                        .type            n115_assign_bx, @function
n115_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:          mov              r11, 66
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # F
                        mov              qword ptr [r9 + 56], rdx;            jmp   n116_statement_end_α
                        .size            n115_assign_bx, .-n115_assign_bx
                        .type            n116_statement_end_bx, @function
n116_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_end_α:   mov              r11, 67
                        mov              r10, 5
                        add              rsp, 64;                             jmp   n117_statement_begin_α
                        .size            n116_statement_end_bx, .-n116_statement_end_bx
                        .type            n117_statement_begin_bx, @function
n117_statement_begin_bx:
#=======================================================================================================================
#         T       =  FENCE(F '*' *T | F '/' *T | F)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n117_statement_begin_α: mov              r11, 68
                        mov              r10, 6;                              jmp   n118_var_α
n117_statement_begin_β: mov              r11, 68;                             jmp   n129_statement_begin_α
                        .size            n117_statement_begin_bx, .-n117_statement_begin_bx
                        .type            n118_var_bx, @function
n118_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              r11, 69
                        mov              rax, qword ptr [r9 + 48]             # F
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_assign_α
                        .size            n118_var_bx, .-n118_var_bx
                        .type            n119_assign_bx, @function
n119_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:          mov              r11, 70
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 184], rdx;           jmp   n120_var_α
                        .size            n119_assign_bx, .-n119_assign_bx
                        .type            n120_var_bx, @function
n120_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:             sub              rsp, 16
                        mov              r11, 71
                        mov              rax, qword ptr [r9 + 48]             # F
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n121_assign_α
n120_var_β:             mov              r11, 71
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n117_statement_begin_β
                        .size            n120_var_bx, .-n120_var_bx
                        .type            n121_assign_bx, @function
n121_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_assign_α:          mov              r11, 72
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # PAT$4$V1
                        mov              qword ptr [r9 + 200], rdx;           jmp   n122_var_α
                        .size            n121_assign_bx, .-n121_assign_bx
                        .type            n122_var_bx, @function
n122_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:             sub              rsp, 16
                        mov              r11, 73
                        mov              rax, qword ptr [r9 + 48]             # F
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n123_assign_α
n122_var_β:             mov              r11, 73
                        add              rsp, 16;                             jmp   n120_var_β
                        .size            n122_var_bx, .-n122_var_bx
                        .type            n123_assign_bx, @function
n123_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_α:          mov              r11, 74
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # PAT$4$V2
                        mov              qword ptr [r9 + 216], rdx;           jmp   n124_lit_string_α
                        .size            n123_assign_bx, .-n123_assign_bx
                        .type            n124_lit_string_bx, @function
n124_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:      sub              rsp, 16
                        mov              r11, 75
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_236_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n125_lit_string_α
n124_lit_string_β:      mov              r11, 75
                        add              rsp, 16;                             jmp   n122_var_β
.Llit_string_α_236_0:   .quad            .Llit_string_α_236_0_s
.Llit_string_α_236_0_s: .string          "PAT$4"
                        .size            n124_lit_string_bx, .-n124_lit_string_bx
                        .type            n125_lit_string_bx, @function
n125_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:      sub              rsp, 16
                        mov              r11, 76
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_237_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n126_call_α
n125_lit_string_β:      mov              r11, 76
                        add              rsp, 16;                             jmp   n124_lit_string_β
.Llit_string_α_237_0:   .quad            .Llit_string_α_237_0_s
.Llit_string_α_237_0_s: .string          "3"
                        .size            n125_lit_string_bx, .-n125_lit_string_bx
                        .type            n126_call_bx, @function
n126_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_call_α:            sub              rsp, 16
                        mov              r11, 77
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
.Lcall_α_rkfnzd239:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd239]
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
                        cmp              al, 104;                             jne   .Lcall_α_238_240
                        add              rsp, 16;                             jmp   n125_lit_string_β
.Lcall_α_238_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n127_assign_α
n126_call_β:            mov              r11, 77
                        add              rsp, 16;                             jmp   n125_lit_string_β
                        .size            n126_call_bx, .-n126_call_bx
                        .type            n127_assign_bx, @function
n127_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:          mov              r11, 78
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # T
                        mov              qword ptr [r9 + 72], rdx;            jmp   n128_statement_end_α
                        .size            n127_assign_bx, .-n127_assign_bx
                        .type            n128_statement_end_bx, @function
n128_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_end_α:   mov              r11, 79
                        mov              r10, 6
                        add              rsp, 96;                             jmp   n129_statement_begin_α
                        .size            n128_statement_end_bx, .-n128_statement_end_bx
                        .type            n129_statement_begin_bx, @function
n129_statement_begin_bx:
#=======================================================================================================================
#         X       =  FENCE(T '+' *X | T '-' *X | T)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n129_statement_begin_α: mov              r11, 80
                        mov              r10, 7;                              jmp   n130_var_α
n129_statement_begin_β: mov              r11, 80;                             jmp   n141_statement_begin_α
                        .size            n129_statement_begin_bx, .-n129_statement_begin_bx
                        .type            n130_var_bx, @function
n130_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:             sub              rsp, 16
                        mov              r11, 81
                        mov              rax, qword ptr [r9 + 64]             # T
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n131_assign_α
                        .size            n130_var_bx, .-n130_var_bx
                        .type            n131_assign_bx, @function
n131_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_α:          mov              r11, 82
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # PAT$5$V0
                        mov              qword ptr [r9 + 232], rdx;           jmp   n132_var_α
                        .size            n131_assign_bx, .-n131_assign_bx
                        .type            n132_var_bx, @function
n132_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             sub              rsp, 16
                        mov              r11, 83
                        mov              rax, qword ptr [r9 + 64]             # T
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_assign_α
n132_var_β:             mov              r11, 83
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n129_statement_begin_β
                        .size            n132_var_bx, .-n132_var_bx
                        .type            n133_assign_bx, @function
n133_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_α:          mov              r11, 84
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # PAT$5$V1
                        mov              qword ptr [r9 + 248], rdx;           jmp   n134_var_α
                        .size            n133_assign_bx, .-n133_assign_bx
                        .type            n134_var_bx, @function
n134_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:             sub              rsp, 16
                        mov              r11, 85
                        mov              rax, qword ptr [r9 + 64]             # T
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_assign_α
n134_var_β:             mov              r11, 85
                        add              rsp, 16;                             jmp   n132_var_β
                        .size            n134_var_bx, .-n134_var_bx
                        .type            n135_assign_bx, @function
n135_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:          mov              r11, 86
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # PAT$5$V2
                        mov              qword ptr [r9 + 264], rdx;           jmp   n136_lit_string_α
                        .size            n135_assign_bx, .-n135_assign_bx
                        .type            n136_lit_string_bx, @function
n136_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:      sub              rsp, 16
                        mov              r11, 87
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_251_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n137_lit_string_α
n136_lit_string_β:      mov              r11, 87
                        add              rsp, 16;                             jmp   n134_var_β
.Llit_string_α_251_0:   .quad            .Llit_string_α_251_0_s
.Llit_string_α_251_0_s: .string          "PAT$5"
                        .size            n136_lit_string_bx, .-n136_lit_string_bx
                        .type            n137_lit_string_bx, @function
n137_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:      sub              rsp, 16
                        mov              r11, 88
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_252_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n138_call_α
n137_lit_string_β:      mov              r11, 88
                        add              rsp, 16;                             jmp   n136_lit_string_β
.Llit_string_α_252_0:   .quad            .Llit_string_α_252_0_s
.Llit_string_α_252_0_s: .string          "3"
                        .size            n137_lit_string_bx, .-n137_lit_string_bx
                        .type            n138_call_bx, @function
n138_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_call_α:            sub              rsp, 16
                        mov              r11, 89
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
.Lcall_α_rkfnzd254:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd254]
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
                        cmp              al, 104;                             jne   .Lcall_α_253_240
                        add              rsp, 16;                             jmp   n137_lit_string_β
.Lcall_α_253_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_assign_α
n138_call_β:            mov              r11, 89
                        add              rsp, 16;                             jmp   n137_lit_string_β
                        .size            n138_call_bx, .-n138_call_bx
                        .type            n139_assign_bx, @function
n139_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_assign_α:          mov              r11, 90
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # X
                        mov              qword ptr [r9 + 88], rdx;            jmp   n140_statement_end_α
                        .size            n139_assign_bx, .-n139_assign_bx
                        .type            n140_statement_end_bx, @function
n140_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_end_α:   mov              r11, 91
                        mov              r10, 7
                        add              rsp, 96;                             jmp   n141_statement_begin_α
                        .size            n140_statement_end_bx, .-n140_statement_end_bx
                        .type            n141_statement_begin_bx, @function
n141_statement_begin_bx:
#=======================================================================================================================
#         C       =  POS(0) ARBNO(X CHAR(10)) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n141_statement_begin_α: mov              r11, 92
                        mov              r10, 8;                              jmp   n142_var_α
n141_statement_begin_β: mov              r11, 92;                             jmp   n152_statement_begin_α
                        .size            n141_statement_begin_bx, .-n141_statement_begin_bx
                        .type            n142_var_bx, @function
n142_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             sub              rsp, 16
                        mov              r11, 93
                        mov              rax, qword ptr [r9 + 80]             # X
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_assign_α
                        .size            n142_var_bx, .-n142_var_bx
                        .type            n143_assign_bx, @function
n143_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_assign_α:          mov              r11, 94
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # PAT$6$V0
                        mov              qword ptr [r9 + 280], rdx;           jmp   n144_lit_integer_α
                        .size            n143_assign_bx, .-n143_assign_bx
                        .type            n144_lit_integer_bx, @function
n144_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:     sub              rsp, 16
                        mov              r11, 95
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_262_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n145_call_α
n144_lit_integer_β:     mov              r11, 95
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n141_statement_begin_β
.Llit_integer_α_262_0:  .quad            10
                        .size            n144_lit_integer_bx, .-n144_lit_integer_bx
                        .type            n145_call_bx, @function
n145_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_call_α:            sub              rsp, 16
                        mov              r11, 96
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_bynamefnzd96:  .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd96]
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
                        cmp              al, 104;                             jne   .Lcall_α_263_240
                        add              rsp, 16;                             jmp   n144_lit_integer_β
.Lcall_α_263_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n146_assign_α
n145_call_β:            mov              r11, 96
                        add              rsp, 16;                             jmp   n144_lit_integer_β
                        .size            n145_call_bx, .-n145_call_bx
                        .type            n146_assign_bx, @function
n146_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_assign_α:          mov              r11, 97
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # PAT$6$V1
                        mov              qword ptr [r9 + 296], rdx;           jmp   n147_lit_string_α
                        .size            n146_assign_bx, .-n146_assign_bx
                        .type            n147_lit_string_bx, @function
n147_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:      sub              rsp, 16
                        mov              r11, 98
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_265_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n148_lit_string_α
n147_lit_string_β:      mov              r11, 98
                        add              rsp, 32;                             jmp   n144_lit_integer_β
.Llit_string_α_265_0:   .quad            .Llit_string_α_265_0_s
.Llit_string_α_265_0_s: .string          "PAT$6"
                        .size            n147_lit_string_bx, .-n147_lit_string_bx
                        .type            n148_lit_string_bx, @function
n148_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:      sub              rsp, 16
                        mov              r11, 99
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_266_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n149_call_α
n148_lit_string_β:      mov              r11, 99
                        add              rsp, 16;                             jmp   n147_lit_string_β
.Llit_string_α_266_0:   .quad            .Llit_string_α_266_0_s
.Llit_string_α_266_0_s: .string          "2"
                        .size            n148_lit_string_bx, .-n148_lit_string_bx
                        .type            n149_call_bx, @function
n149_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_call_α:            sub              rsp, 16
                        mov              r11, 100
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
.Lcall_α_rkfnzd268:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd268]
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
                        cmp              al, 104;                             jne   .Lcall_α_267_240
                        add              rsp, 16;                             jmp   n148_lit_string_β
.Lcall_α_267_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n150_assign_α
n149_call_β:            mov              r11, 100
                        add              rsp, 16;                             jmp   n148_lit_string_β
                        .size            n149_call_bx, .-n149_call_bx
                        .type            n150_assign_bx, @function
n150_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_assign_α:          mov              r11, 101
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # C
                        mov              qword ptr [r9 + 104], rdx;           jmp   n151_statement_end_α
                        .size            n150_assign_bx, .-n150_assign_bx
                        .type            n151_statement_end_bx, @function
n151_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:   mov              r11, 102
                        mov              r10, 8
                        add              rsp, 96;                             jmp   n152_statement_begin_α
                        .size            n151_statement_end_bx, .-n151_statement_end_bx
                        .type            n152_statement_begin_bx, @function
n152_statement_begin_bx:
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n152_statement_begin_α: mov              r11, 103
                        mov              r10, 9;                              jmp   n153_lit_name_α
n152_statement_begin_β: mov              r11, 103;                            jmp   n158_statement_begin_α
                        .size            n152_statement_begin_bx, .-n152_statement_begin_bx
                        .type            n153_lit_name_bx, @function
n153_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_name_α:        sub              rsp, 16
                        mov              r11, 104
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_274_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n154_lit_integer_α
.Llit_name_α_274_0:     .quad            .Llit_name_α_274_0_s
.Llit_name_α_274_0_s:   .string          "INPUT"
                        .size            n153_lit_name_bx, .-n153_lit_name_bx
                        .type            n154_lit_integer_bx, @function
n154_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:     sub              rsp, 16
                        mov              r11, 105
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_275_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n155_lit_string_α
n154_lit_integer_β:     mov              r11, 105
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n152_statement_begin_β
.Llit_integer_α_275_0:  .quad            9
                        .size            n154_lit_integer_bx, .-n154_lit_integer_bx
                        .type            n155_lit_string_bx, @function
n155_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:      sub              rsp, 16
                        mov              r11, 106
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_276_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n156_call_α
n155_lit_string_β:      mov              r11, 106
                        add              rsp, 16;                             jmp   n154_lit_integer_β
.Llit_string_α_276_0:   .quad            .Llit_string_α_276_0_s
.Llit_string_α_276_0_s: .string          "[-f0 -r4194304]"
                        .size            n155_lit_string_bx, .-n155_lit_string_bx
                        .type            n156_call_bx, @function
n156_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_call_α:            sub              rsp, 16
                        mov              r11, 107
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
.Lcall_α_bynamefnzd107: .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd107]
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
                        cmp              al, 104;                             jne   .Lcall_α_277_240
                        add              rsp, 16;                             jmp   n155_lit_string_β
.Lcall_α_277_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n157_statement_end_α
n156_call_β:            mov              r11, 107
                        add              rsp, 16;                             jmp   n155_lit_string_β
                        .size            n156_call_bx, .-n156_call_bx
                        .type            n157_statement_end_bx, @function
n157_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_end_α:   mov              r11, 108
                        mov              r10, 9
                        add              rsp, 64;                             jmp   n158_statement_begin_α
                        .size            n157_statement_end_bx, .-n157_statement_end_bx
                        .type            n158_statement_begin_bx, @function
n158_statement_begin_bx:
#=======================================================================================================================
#         src     =  INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n158_statement_begin_α: mov              r11, 109
                        mov              r10, 10;                             jmp   n159_var_α
n158_statement_begin_β: mov              r11, 109;                            jmp   n177_statement_begin_α
                        .size            n158_statement_begin_bx, .-n158_statement_begin_bx
                        .type            n159_var_bx, @function
n159_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:             sub              rsp, 16
                        mov              r11, 110
                        mov              rdi, qword ptr [rip + .Lvar_α_282_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_282_240
                        add              rsp, 16;                             jmp   n158_statement_begin_β
.Lvar_α_282_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_assign_α
.Lvar_α_282_0:          .quad            .Lvar_α_282_0_s
.Lvar_α_282_0_s:        .string          "INPUT"
                        .size            n159_var_bx, .-n159_var_bx
                        .type            n160_assign_bx, @function
n160_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_α:          mov              r11, 111
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # src
                        mov              qword ptr [r9 + 120], rdx;           jmp   n161_statement_end_α
                        .size            n160_assign_bx, .-n160_assign_bx
                        .type            n161_statement_end_bx, @function
n161_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_end_α:   mov              r11, 112
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n162_statement_begin_α
                        .size            n161_statement_end_bx, .-n161_statement_end_bx
                        .type            n162_statement_begin_bx, @function
n162_statement_begin_bx:
#=======================================================================================================================
#         src     ?  C  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n162_statement_begin_α: mov              r11, 113
                        mov              r10, 11;                             jmp   n163_var_α
n162_statement_begin_β: mov              r11, 113;                            jmp   n177_statement_begin_α
                        .size            n162_statement_begin_bx, .-n162_statement_begin_bx
                        .type            n163_var_bx, @function
n163_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_var_α:             sub              rsp, 16
                        mov              r11, 114
                        mov              rax, qword ptr [r9 + 112]            # src
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n164_var_α
                        .size            n163_var_bx, .-n163_var_bx
                        .type            n164_var_bx, @function
n164_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:             sub              rsp, 16
                        mov              r11, 115
                        mov              rax, qword ptr [r9 + 96]             # C
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n165_assign_α
n164_var_β:             mov              r11, 115
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n177_statement_begin_α
                        .size            n164_var_bx, .-n164_var_bx
                        .type            n165_assign_bx, @function
n165_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_assign_α:          mov              r11, 116
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_290_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n166_match_begin_α
n165_assign_β:          mov              r11, 116;                            jmp   n164_var_β
.Lassign_α_290_0:       .quad            .Lassign_α_290_0_s
.Lassign_α_290_0_s:     .string          "PATV$0"
                        .size            n165_assign_bx, .-n165_assign_bx
                        .type            n166_match_begin_bx, @function
n166_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_match_begin_α:     mov              r11, 117
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
.Lmatch_begin_α_292_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_292_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n167_match_defer_α
n166_match_begin_β:     mov              r11, 117
.Lmatch_begin_α_292_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_292_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_292_1
                                                                              jmp   .Lmatch_begin_α_292_0
.Lmatch_begin_β_292_1:
.Lmatch_begin_γ_166_af: mov              r11, 117
.Lmatch_begin_ω_166_af: mov              r11, 117
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
                        pop              rbp;                                 jmp   n165_assign_β
                        .size            n166_match_begin_bx, .-n166_match_begin_bx
                        .type            n167_match_defer_bx, @function
n167_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_match_defer_α:     mov              r11, 118
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S14]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_293_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_293_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_293_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_293_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_293_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_293_23
                                                                              jmp   .Lmatch_defer_α_293_22
.Lmatch_defer_α_293_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_293_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_293_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_293_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_293_0
.Lmatch_defer_α_293_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_293_0
.Lmatch_defer_α_293_22: push             r14
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
.Lmatch_defer_α_293_23: test             rax, rax;                            jz    .Lmatch_defer_α_293_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_293_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_293_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_293_4:                                                        jmp   n168_match_end_α
.Lmatch_defer_α_293_5:                                                        jmp   n166_match_begin_β
.Lmatch_defer_α_293_0:  mov              eax, edx
                        test             eax, eax;                            js    n166_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_293_6]
                        push             rcx
                        push             rax;                                 jmp   n168_match_end_α
.Lmatch_defer_α_293_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n166_match_begin_β
n167_match_defer_β:     mov              r11, 118
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_293_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_293_12
                                                                              jmp   rax
.Lmatch_defer_β_293_12:                                                       jmp   qword ptr [rsp]
                        .size            n167_match_defer_bx, .-n167_match_defer_bx
                        .type            n168_match_end_bx, @function
n168_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_match_end_α:       mov              r11, 119
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
                        test             rax, rax;                            je    .Lmatch_end_α_295_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_166_af
.Lmatch_end_α_295_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n169_statement_end_α
                        .size            n168_match_end_bx, .-n168_match_end_bx
                        .type            n169_statement_end_bx, @function
n169_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_statement_end_α:   mov              r11, 120
                        mov              r10, 11
                        add              rsp, 32;                             jmp   n170_statement_begin_α
                        .size            n169_statement_end_bx, .-n169_statement_end_bx
                        .type            n170_statement_begin_bx, @function
n170_statement_begin_bx:
#=======================================================================================================================
#         OUTPUT  =  'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n170_statement_begin_α: mov              r11, 121
                        mov              r10, 12;                             jmp   n171_lit_string_α
n170_statement_begin_β: mov              r11, 121;                            jmp   main_γ
                        .size            n170_statement_begin_bx, .-n170_statement_begin_bx
                        .type            n171_lit_string_bx, @function
n171_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:      sub              rsp, 16
                        mov              r11, 122
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_300_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n172_var_α
.Llit_string_α_300_0:   .quad            .Llit_string_α_300_0_s
.Llit_string_α_300_0_s: .string          "matched bytes="
                        .size            n171_lit_string_bx, .-n171_lit_string_bx
                        .type            n172_var_bx, @function
n172_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:             sub              rsp, 16
                        mov              r11, 123
                        mov              rax, qword ptr [r9 + 112]            # src
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n173_call_α
n172_var_β:             mov              r11, 123
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n170_statement_begin_β
                        .size            n172_var_bx, .-n172_var_bx
                        .type            n173_call_bx, @function
n173_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_call_α:            sub              rsp, 16
                        mov              r11, 124
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd303:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd303]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262193
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_302_240
                        add              rsp, 16;                             jmp   n172_var_β
.Lcall_α_302_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n174_binop_α
n173_call_β:            mov              r11, 124
                        add              rsp, 16;                             jmp   n172_var_β
                        .size            n173_call_bx, .-n173_call_bx
                        .type            n174_binop_bx, @function
n174_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_binop_α:           sub              rsp, 16
                        mov              r11, 125
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n175_assign_α
                        .size            n174_binop_bx, .-n174_binop_bx
                        .type            n175_assign_bx, @function
n175_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_assign_α:          mov              r11, 126
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_305_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_statement_end_α
.Lassign_α_305_0:       .quad            .Lassign_α_305_0_s
.Lassign_α_305_0_s:     .string          "OUTPUT"
                        .size            n175_assign_bx, .-n175_assign_bx
                        .type            n176_statement_end_bx, @function
n176_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:   mov              r11, 127
                        mov              r10, 12
                        add              rsp, 64;                             jmp   main_γ
                        .size            n176_statement_end_bx, .-n176_statement_end_bx
                        .type            n177_statement_begin_bx, @function
n177_statement_begin_bx:
#=======================================================================================================================
# error   OUTPUT  =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n177_statement_begin_α: mov              r11, 128
                        mov              r10, 13;                             jmp   n178_lit_string_α
n177_statement_begin_β: mov              r11, 128;                            jmp   main_γ
                        .size            n177_statement_begin_bx, .-n177_statement_begin_bx
                        .type            n178_lit_string_bx, @function
n178_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:      sub              rsp, 16
                        mov              r11, 129
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_310_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n179_assign_α
.Llit_string_α_310_0:   .quad            .Llit_string_α_310_0_s
.Llit_string_α_310_0_s: .string          "Pattern match failed"
                        .size            n178_lit_string_bx, .-n178_lit_string_bx
                        .type            n179_assign_bx, @function
n179_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_assign_α:          mov              r11, 130
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_311_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n180_statement_end_α
.Lassign_α_311_0:       .quad            .Lassign_α_311_0_s
.Lassign_α_311_0_s:     .string          "OUTPUT"
                        .size            n179_assign_bx, .-n179_assign_bx
                        .type            n180_statement_end_bx, @function
n180_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_end_α:   mov              r11, 131
                        mov              r10, 13
                        add              rsp, 16;                             jmp   main_γ
                        .size            n180_statement_end_bx, .-n180_statement_end_bx
                        .type            n181_goto_bx, @function
n181_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_goto_α:            mov              r11, 132;                            jmp   n177_statement_begin_α
n181_goto_β:            mov              r11, 132;                            jmp   main_ω
                        .size            n181_goto_bx, .-n181_goto_bx
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
