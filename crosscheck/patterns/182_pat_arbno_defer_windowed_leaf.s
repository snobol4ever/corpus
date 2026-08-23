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
                        sub              rsp, 104
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n3_match_alternate_α:   mov              r11, 2
                        mov              dword ptr [rbp + -104], r14d
                        lea              rax, [rip + .Lx7_21]
                        mov              qword ptr [rbp + -88], rax;          jmp   n5_match_span_α
.Lx7_21:                lea              rax, [rip + .Lx7_19]
                        mov              qword ptr [rbp + -88], rax;          jmp   n4_match_lit_α
n3_match_alternate_s0:  mov              r11, 2
                        lea              rax, [rip + .Lx7_40]
                        mov              qword ptr [rbp + -96], rax;          jmp   n3_match_alternate_as
n3_match_alternate_s1:  mov              r11, 2
                        lea              rax, [rip + .Lx7_41]
                        mov              qword ptr [rbp + -96], rax;          jmp   n3_match_alternate_as
.Lx7_40:                                                                      jmp   n5_match_span_β
.Lx7_41:                                                                      jmp   n4_match_lit_β
n3_match_alternate_as:  mov              r11, 2;                              jmp   PAT$1_γ
n3_match_alternate_β:   mov              r11, 2
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
n3_match_alternate_af:  mov              r11, 2
                        mov              r14d, dword ptr [rbp + -104]
                        mov              rax, qword ptr [rbp + -88];          jmp   rax
.Lx7_19:                                                                      jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_match_lit_α:         mov              r11, 3
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n3_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 120;                            jne   n3_match_alternate_af
                        add              r14d, 1;                             jmp   n3_match_alternate_s1
n4_match_lit_β:         mov              r11, 3
                        sub              r14d, 1;                             jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n5_match_span_α:        mov              r11, 4
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx11_0:                cmp              ecx, r15d;                           jge   .Lx11_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx11_1
                        add              ecx, 1;                              jmp   .Lx11_0
.Lx11_1:                cmp              ecx, r14d;                           jle   n3_match_alternate_af
                        mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   n3_match_alternate_s0
n5_match_span_β:        mov              r11, 4
                        mov              r14d, dword ptr [rbp + -60];         jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   n3_match_alternate_β
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
n12_match_alternate_α:  mov              r11, 5
                        mov              dword ptr [rbp + -104], r14d
                        lea              rax, [rip + .Lx18_21]
                        mov              qword ptr [rbp + -88], rax;          jmp   n16_match_span_α
.Lx18_21:               lea              rax, [rip + .Lx18_19]
                        mov              qword ptr [rbp + -88], rax;          jmp   n13_match_lit_α
n12_match_alternate_s0: mov              r11, 5
                        lea              rax, [rip + .Lx18_40]
                        mov              qword ptr [rbp + -96], rax;          jmp   n12_match_alternate_as
n12_match_alternate_s1: mov              r11, 5
                        lea              rax, [rip + .Lx18_41]
                        mov              qword ptr [rbp + -96], rax;          jmp   n12_match_alternate_as
.Lx18_40:                                                                     jmp   n16_match_span_β
.Lx18_41:                                                                     jmp   n15_match_lit_β
n12_match_alternate_as: mov              r11, 5;                              jmp   PAT$2_γ
n12_match_alternate_β:  mov              r11, 5
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
n12_match_alternate_af: mov              r11, 5
                        mov              r14d, dword ptr [rbp + -104]
                        mov              rax, qword ptr [rbp + -88];          jmp   rax
.Lx18_19:                                                                     jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_match_lit_α:        mov              r11, 6
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n12_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n12_match_alternate_af
                        add              r14d, 1;                             jmp   n14_match_defer_α
n13_match_lit_β:        mov              r11, 6
                        sub              r14d, 1;                             jmp   n12_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n14_match_defer_α:      mov              r11, 7
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx21_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx21_11
.Lx21_13:               mov              rax, qword ptr [r9 + 32]             # NEST
                        mov              rdx, qword ptr [r9 + 40]
                        cmp              al, 8;                               jne   .Lx21_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx21_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 40];            jmp   .Lx21_10
.Lx21_9:                cmp              al, 88;                              jne   .Lx21_21
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
                        test             rax, rax;                            je    .Lx21_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx21_10
.Lx21_21:               xor              eax, eax
.Lx21_10:               test             rax, rax;                            je    .Lx21_15
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rdx
.Lx21_15:
.Lx21_11:               test             rax, rax;                            jz    .Lx21_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx21_5]
                        push             rcx
                        lea              rcx, [rip + .Lx21_4]
                        push             rcx;                                 jmp   rax
.Lx21_4:                                                                      jmp   n15_match_lit_α
.Lx21_5:                                                                      jmp   n13_match_lit_β
.Lx21_0:                push             r14
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
                        test             eax, eax;                            js    n13_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx21_6]
                        push             rcx
                        push             rax;                                 jmp   n15_match_lit_α
.Lx21_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n13_match_lit_β
n14_match_defer_β:      mov              r11, 7
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx21_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx21_12
                                                                              jmp   rax
.Lx21_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n15_match_lit_α:        mov              r11, 8
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n14_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n14_match_defer_β
                        add              r14d, 1;                             jmp   n12_match_alternate_s1
n15_match_lit_β:        mov              r11, 8
                        sub              r14d, 1;                             jmp   n14_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n16_match_span_α:       sub              rsp, 16
                        mov              r11, 9
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx25_0:                cmp              ecx, r15d;                           jge   .Lx25_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx25_1
                        add              ecx, 1;                              jmp   .Lx25_0
.Lx25_1:                cmp              ecx, r14d;                           jg    .Lx25_240
                        add              rsp, 16;                             jmp   n12_match_alternate_af
.Lx25_240:              mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   n12_match_alternate_s0
n16_match_span_β:       mov              r11, 9
                        mov              r14d, dword ptr [rbp + -60]
                        add              rsp, 16;                             jmp   n12_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_β:
                                                                              jmp   n12_match_alternate_β
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
                        sub              rsp, 56
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n26_match_lit_α:        mov              r11, 10
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    PAT$3_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   PAT$3_ω
                        add              r14d, 1;                             jmp   n27_match_defer_α
n26_match_lit_β:        mov              r11, 10
                        sub              r14d, 1;                             jmp   PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n27_match_defer_α:      sub              rsp, 16
                        mov              r11, 11
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx34_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx34_11
.Lx34_13:               mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx34_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx34_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx34_10
.Lx34_9:                cmp              al, 88;                              jne   .Lx34_21
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
                        test             rax, rax;                            je    .Lx34_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx34_10
.Lx34_21:               xor              eax, eax
.Lx34_10:               test             rax, rax;                            je    .Lx34_15
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rdx
.Lx34_15:
.Lx34_11:               test             rax, rax;                            jz    .Lx34_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx34_5]
                        push             rcx
                        lea              rcx, [rip + .Lx34_4]
                        push             rcx;                                 jmp   rax
.Lx34_4:                                                                      jmp   n28_match_arbno_α
.Lx34_5:                add              rsp, 16;                             jmp   n26_match_lit_β
.Lx34_0:                push             r14
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
                        test             eax, eax;                            jns   .Lx34_240
                        add              rsp, 16;                             jmp   n26_match_lit_β
.Lx34_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx34_6]
                        push             rcx
                        push             rax;                                 jmp   n28_match_arbno_α
.Lx34_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n26_match_lit_β
n27_match_defer_β:      mov              r11, 11
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx34_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx34_12
                                                                              jmp   rax
.Lx34_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n28_match_arbno_α:      mov              r11, 12
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n29_match_lit_α
n28_match_arbno_β:      mov              r11, 12
                        mov              r12, qword ptr [rbp + -40];          jmp   n30_match_lit_α
n28_match_arbno_as:     mov              r11, 12
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n30_match_lit_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n29_match_lit_α
n28_match_arbno_af:     mov              r11, 12
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jne   n31_match_defer_β
                                                                              jmp   n27_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n29_match_lit_α:        mov              r11, 13
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n28_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n28_match_arbno_β
                        add              r14d, 1;                             jmp   PAT$3_γ
n29_match_lit_β:        mov              r11, 13
                        sub              r14d, 1;                             jmp   n28_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n30_match_lit_α:        mov              r11, 14
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n28_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n28_match_arbno_af
                        add              r14d, 1;                             jmp   n31_match_defer_α
n30_match_lit_β:        mov              r11, 14
                        sub              r14d, 1;                             jmp   n28_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n31_match_defer_α:      mov              r11, 15
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx41_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx41_11
.Lx41_13:               mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
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
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx41_10
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
.Lx41_10:               test             rax, rax;                            je    .Lx41_15
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rdx
.Lx41_15:
.Lx41_11:               test             rax, rax;                            jz    .Lx41_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx41_5]
                        push             rcx
                        lea              rcx, [rip + .Lx41_4]
                        push             rcx;                                 jmp   rax
.Lx41_4:                                                                      jmp   n28_match_arbno_as
.Lx41_5:                                                                      jmp   n30_match_lit_β
.Lx41_0:                push             r14
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
                        test             eax, eax;                            js    n30_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx41_6]
                        push             rcx
                        push             rax;                                 jmp   n28_match_arbno_as
.Lx41_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n30_match_lit_β
n31_match_defer_β:      mov              r11, 15
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx41_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx41_12
                                                                              jmp   rax
.Lx41_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_β:
                                                                              jmp   n29_match_lit_β
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
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 12
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 12
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "ITEM"
.Lgvan1:                .string          "ITEM2"
.Lgvan2:                .string          "NEST"
.Lgvan3:                .string          "LISTP"
.Lgvan4:                .string          "S1"
.Lgvan5:                .string          "S2"
.Lgvan6:                .string          "S3"
.Lgvan7:                .string          "S4"
.Lgvan8:                .string          "S5"
.Lgvan9:                .string          "S6"
.Lgvan10:               .string          "S7"
.Lgvan11:               .string          "S8"
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
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         ITEM  = SPAN("0123456789")
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:  mov              r11, 16
                        mov              r10, 1;                              jmp   n43_lit_string_α
n42_statement_begin_β:  mov              r11, 16;                             jmp   n47_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_call_α
.Lx271_0:               .quad            .Lx271_0_s
.Lx271_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n44_call_α:             sub              rsp, 16
                        mov              r11, 18
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd273:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd273]
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
                        cmp              al, 104;                             jne   .Lx272_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n42_statement_begin_β
.Lx272_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_assign_α
n44_call_β:             mov              r11, 18
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n42_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:           mov              r11, 19
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ITEM
                        mov              qword ptr [r9 + 8], rdx;             jmp   n46_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:    mov              r11, 20
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n47_statement_begin_α
#=======================================================================================================================
#         ITEM2 = SPAN("0123456789") | "x"
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_begin_α:  mov              r11, 21
                        mov              r10, 2;                              jmp   n48_lit_string_α
n47_statement_begin_β:  mov              r11, 21;                             jmp   n52_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       sub              rsp, 16
                        mov              r11, 22
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_call_α
.Lx279_0:               .quad            .Lx279_0_s
.Lx279_0_s:             .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n49_call_α:             sub              rsp, 16
                        mov              r11, 23
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd281:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd281]
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
                        cmp              al, 104;                             jne   .Lx280_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n47_statement_begin_β
.Lx280_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n50_assign_α
n49_call_β:             mov              r11, 23
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n47_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:           mov              r11, 24
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # ITEM2
                        mov              qword ptr [r9 + 24], rdx;            jmp   n51_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_end_α:    mov              r11, 25
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n52_statement_begin_α
#=======================================================================================================================
#         NEST  = SPAN("0123456789") | "(" *NEST ")"
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_begin_α:  mov              r11, 26
                        mov              r10, 3;                              jmp   n53_lit_string_α
n52_statement_begin_β:  mov              r11, 26;                             jmp   n57_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       sub              rsp, 16
                        mov              r11, 27
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_call_α
.Lx287_0:               .quad            .Lx287_0_s
.Lx287_0_s:             .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:             sub              rsp, 16
                        mov              r11, 28
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd289:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd289]
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
                        cmp              al, 104;                             jne   .Lx288_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n52_statement_begin_β
.Lx288_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_assign_α
n54_call_β:             mov              r11, 28
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n52_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:           mov              r11, 29
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # NEST
                        mov              qword ptr [r9 + 40], rdx;            jmp   n56_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    mov              r11, 30
                        mov              r10, 3
                        add              rsp, 32;                             jmp   n57_statement_begin_α
#=======================================================================================================================
#         LISTP = "(" *ITEM ARBNO("," *ITEM) ")"
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:  mov              r11, 31
                        mov              r10, 4;                              jmp   n58_lit_string_α
n57_statement_begin_β:  mov              r11, 31;                             jmp   n62_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       sub              rsp, 16
                        mov              r11, 32
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_call_α
.Lx295_0:               .quad            .Lx295_0_s
.Lx295_0_s:             .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n59_call_α:             sub              rsp, 16
                        mov              r11, 33
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd297:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd297]
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
                        cmp              al, 104;                             jne   .Lx296_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n57_statement_begin_β
.Lx296_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n60_assign_α
n59_call_β:             mov              r11, 33
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n57_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:           mov              r11, 34
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # LISTP
                        mov              qword ptr [r9 + 56], rdx;            jmp   n61_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:    mov              r11, 35
                        mov              r10, 4
                        add              rsp, 32;                             jmp   n62_statement_begin_α
#=======================================================================================================================
#         S1 = "(1,22,333)"
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_begin_α:  mov              r11, 36
                        mov              r10, 5;                              jmp   n63_lit_string_α
n62_statement_begin_β:  mov              r11, 36;                             jmp   n66_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       sub              rsp, 16
                        mov              r11, 37
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_assign_α
.Lx303_0:               .quad            .Lx303_0_s
.Lx303_0_s:             .string          "(1,22,333)"
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:           mov              r11, 38
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # S1
                        mov              qword ptr [r9 + 72], rdx;            jmp   n65_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_end_α:    mov              r11, 39
                        mov              r10, 5
                        add              rsp, 16;                             jmp   n66_statement_begin_α
#=======================================================================================================================
#         S2 = "(7)"
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_begin_α:  mov              r11, 40
                        mov              r10, 6;                              jmp   n67_lit_string_α
n66_statement_begin_β:  mov              r11, 40;                             jmp   n70_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       sub              rsp, 16
                        mov              r11, 41
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n68_assign_α
.Lx309_0:               .quad            .Lx309_0_s
.Lx309_0_s:             .string          "(7)"
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:           mov              r11, 42
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # S2
                        mov              qword ptr [r9 + 88], rdx;            jmp   n69_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_end_α:    mov              r11, 43
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n70_statement_begin_α
#=======================================================================================================================
#         S3 = "(1,,2)"
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_begin_α:  mov              r11, 44
                        mov              r10, 7;                              jmp   n71_lit_string_α
n70_statement_begin_β:  mov              r11, 44;                             jmp   n74_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       sub              rsp, 16
                        mov              r11, 45
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_assign_α
.Lx315_0:               .quad            .Lx315_0_s
.Lx315_0_s:             .string          "(1,,2)"
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:           mov              r11, 46
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # S3
                        mov              qword ptr [r9 + 104], rdx;           jmp   n73_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_end_α:    mov              r11, 47
                        mov              r10, 7
                        add              rsp, 16;                             jmp   n74_statement_begin_α
#=======================================================================================================================
#         S4 = "(11,22)"
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_begin_α:  mov              r11, 48
                        mov              r10, 8;                              jmp   n75_lit_string_α
n74_statement_begin_β:  mov              r11, 48;                             jmp   n78_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:       sub              rsp, 16
                        mov              r11, 49
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n76_assign_α
.Lx321_0:               .quad            .Lx321_0_s
.Lx321_0_s:             .string          "(11,22)"
#-----------------------------------------------------------------------------------------------------------------------
n76_assign_α:           mov              r11, 50
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # S4
                        mov              qword ptr [r9 + 120], rdx;           jmp   n77_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_end_α:    mov              r11, 51
                        mov              r10, 8
                        add              rsp, 16;                             jmp   n78_statement_begin_α
#=======================================================================================================================
#         S5 = "a1,2,3z"
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_begin_α:  mov              r11, 52
                        mov              r10, 9;                              jmp   n79_lit_string_α
n78_statement_begin_β:  mov              r11, 52;                             jmp   n82_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n80_assign_α
.Lx327_0:               .quad            .Lx327_0_s
.Lx327_0_s:             .string          "a1,2,3z"
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:           mov              r11, 54
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # S5
                        mov              qword ptr [r9 + 136], rdx;           jmp   n81_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_end_α:    mov              r11, 55
                        mov              r10, 9
                        add              rsp, 16;                             jmp   n82_statement_begin_α
#=======================================================================================================================
#         S6 = "(4,5)"
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_begin_α:  mov              r11, 56
                        mov              r10, 10;                             jmp   n83_lit_string_α
n82_statement_begin_β:  mov              r11, 56;                             jmp   n86_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:       sub              rsp, 16
                        mov              r11, 57
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n84_assign_α
.Lx333_0:               .quad            .Lx333_0_s
.Lx333_0_s:             .string          "(4,5)"
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:           mov              r11, 58
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # S6
                        mov              qword ptr [r9 + 152], rdx;           jmp   n85_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_end_α:    mov              r11, 59
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n86_statement_begin_α
#=======================================================================================================================
#         S7 = "(1,(2),3)"
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_begin_α:  mov              r11, 60
                        mov              r10, 11;                             jmp   n87_lit_string_α
n86_statement_begin_β:  mov              r11, 60;                             jmp   n90_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:       sub              rsp, 16
                        mov              r11, 61
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n88_assign_α
.Lx339_0:               .quad            .Lx339_0_s
.Lx339_0_s:             .string          "(1,(2),3)"
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:           mov              r11, 62
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # S7
                        mov              qword ptr [r9 + 168], rdx;           jmp   n89_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_end_α:    mov              r11, 63
                        mov              r10, 11
                        add              rsp, 16;                             jmp   n90_statement_begin_α
#=======================================================================================================================
#         S8 = "(1,2,3,4,5,6,7,8,9,10,11,12)"
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_begin_α:  mov              r11, 64
                        mov              r10, 12;                             jmp   n91_lit_string_α
n90_statement_begin_β:  mov              r11, 64;                             jmp   n94_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:       sub              rsp, 16
                        mov              r11, 65
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 28
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_assign_α
.Lx345_0:               .quad            .Lx345_0_s
.Lx345_0_s:             .string          "(1,2,3,4,5,6,7,8,9,10,11,12)"
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_α:           mov              r11, 66
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # S8
                        mov              qword ptr [r9 + 184], rdx;           jmp   n93_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_end_α:    mov              r11, 67
                        mov              r10, 12
                        add              rsp, 16;                             jmp   n94_statement_begin_α
#=======================================================================================================================
#         S1 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)   :S(A1)F(B1)
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_begin_α:  mov              r11, 68
                        mov              r10, 13;                             jmp   n95_var_α
n94_statement_begin_β:  mov              r11, 68;                             jmp   n112_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              sub              rsp, 16
                        mov              r11, 69
                        mov              rax, qword ptr [r9 + 64]             # S1
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n96_match_begin_α:      mov              r11, 70
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 40
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
.Lx353_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx353_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n97_match_pos_α
n96_match_begin_β:      mov              r11, 70
.Lx353_13:              lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx353_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx353_1
                                                                              jmp   .Lx353_0
.Lx353_1:
n96_match_begin_af:     mov              r11, 70
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
                        add              rsp, 16;                             jmp   n112_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n97_match_pos_α:        mov              r11, 71
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n96_match_begin_β
                                                                              jmp   n98_match_lit_α
n97_match_pos_β:        mov              r11, 71;                             jmp   n96_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n98_match_lit_α:        mov              r11, 72
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n96_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n96_match_begin_β
                        add              r14d, 1;                             jmp   n99_match_defer_α
n98_match_lit_β:        mov              r11, 72
                        sub              r14d, 1;                             jmp   n96_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n99_match_defer_α:      sub              rsp, 16
                        mov              r11, 73
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx357_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx357_11
.Lx357_13:              mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx357_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx357_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx357_10
.Lx357_9:               cmp              al, 88;                              jne   .Lx357_21
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
                        test             rax, rax;                            je    .Lx357_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx357_10
.Lx357_21:              xor              eax, eax
.Lx357_10:              test             rax, rax;                            je    .Lx357_15
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rdx
.Lx357_15:
.Lx357_11:              test             rax, rax;                            jz    .Lx357_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx357_5]
                        push             rcx
                        lea              rcx, [rip + .Lx357_4]
                        push             rcx;                                 jmp   rax
.Lx357_4:                                                                     jmp   n100_match_arbno_α
.Lx357_5:               add              rsp, 16;                             jmp   n98_match_lit_β
.Lx357_0:               push             r14
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
                        test             eax, eax;                            jns   .Lx357_240
                        add              rsp, 16;                             jmp   n98_match_lit_β
.Lx357_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx357_6]
                        push             rcx
                        push             rax;                                 jmp   n100_match_arbno_α
.Lx357_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n98_match_lit_β
n99_match_defer_β:      mov              r11, 73
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx357_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx357_12
                                                                              jmp   rax
.Lx357_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n100_match_arbno_α:     mov              r11, 74
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n101_match_lit_α
n100_match_arbno_β:     mov              r11, 74
                        mov              r12, qword ptr [rbp + -56];          jmp   n106_match_lit_α
n100_match_arbno_as:    mov              r11, 74
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n106_match_lit_β
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n101_match_lit_α
n100_match_arbno_af:    mov              r11, 74
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n99_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n101_match_lit_α:       mov              r11, 75
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n100_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n100_match_arbno_β
                        add              r14d, 1;                             jmp   n102_match_rpos_α
n101_match_lit_β:       mov              r11, 75
                        sub              r14d, 1;                             jmp   n100_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n102_match_rpos_α:      mov              r11, 76
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n101_match_lit_β
                                                                              jmp   n103_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n103_match_end_α:       mov              r11, 77
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
                        test             rax, rax;                            je    .Lx364_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n96_match_begin_af
.Lx364_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n104_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_end_α:   mov              r11, 78
                        mov              r10, 13
                        add              rsp, 16;                             jmp   n108_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:      mov              r11, 79
                        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 5
                        mov              rax, qword ptr [rip + .Lx367_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   main_γ
n105_lit_string_β:      mov              r11, 79;                             jmp   main_ω
.Lx367_0:               .quad            .Lx367_0_s
.Lx367_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n106_match_lit_α:       mov              r11, 80
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n100_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n100_match_arbno_af
                        add              r14d, 1;                             jmp   n107_match_defer_α
n106_match_lit_β:       mov              r11, 80
                        sub              r14d, 1;                             jmp   n100_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n107_match_defer_α:     mov              r11, 81
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx370_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx370_11
.Lx370_13:              mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx370_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx370_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx370_10
.Lx370_9:               cmp              al, 88;                              jne   .Lx370_21
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
                        test             rax, rax;                            je    .Lx370_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx370_10
.Lx370_21:              xor              eax, eax
.Lx370_10:              test             rax, rax;                            je    .Lx370_15
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rdx
.Lx370_15:
.Lx370_11:              test             rax, rax;                            jz    .Lx370_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx370_5]
                        push             rcx
                        lea              rcx, [rip + .Lx370_4]
                        push             rcx;                                 jmp   rax
.Lx370_4:                                                                     jmp   n100_match_arbno_as
.Lx370_5:                                                                     jmp   n106_match_lit_β
.Lx370_0:               push             r14
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
                        test             eax, eax;                            js    n106_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx370_6]
                        push             rcx
                        push             rax;                                 jmp   n100_match_arbno_as
.Lx370_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n106_match_lit_β
n107_match_defer_β:     mov              r11, 81
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx370_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx370_12
                                                                              jmp   rax
.Lx370_12:                                                                    jmp   qword ptr [rsp]
#=======================================================================================================================
# A1      OUTPUT = "T1 MATCH"             :(N1)
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_begin_α: mov              r11, 82
                        mov              r10, 14;                             jmp   n109_lit_string_α
n108_statement_begin_β: mov              r11, 82;                             jmp   n116_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:      sub              rsp, 16
                        mov              r11, 83
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n110_assign_α
.Lx373_0:               .quad            .Lx373_0_s
.Lx373_0_s:             .string          "T1 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n110_assign_α:          mov              r11, 84
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n111_statement_end_α
.Lx374_0:               .quad            .Lx374_0_s
.Lx374_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_end_α:   mov              r11, 85
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n116_statement_begin_α
#=======================================================================================================================
# B1      OUTPUT = "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_begin_α: mov              r11, 86
                        mov              r10, 15;                             jmp   n113_lit_string_α
n112_statement_begin_β: mov              r11, 86;                             jmp   n116_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:      sub              rsp, 16
                        mov              r11, 87
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n114_assign_α
.Lx379_0:               .quad            .Lx379_0_s
.Lx379_0_s:             .string          "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n114_assign_α:          mov              r11, 88
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n115_statement_end_α
.Lx380_0:               .quad            .Lx380_0_s
.Lx380_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_end_α:   mov              r11, 89
                        mov              r10, 15
                        add              rsp, 16;                             jmp   n116_statement_begin_α
#=======================================================================================================================
# N1      S2 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)  :S(A2)F(B2)
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_begin_α: mov              r11, 90
                        mov              r10, 16;                             jmp   n117_var_α
n116_statement_begin_β: mov              r11, 90;                             jmp   n134_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_α:             sub              rsp, 16
                        mov              r11, 91
                        mov              rax, qword ptr [r9 + 80]             # S2
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n118_match_begin_α:     mov              r11, 92
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 40
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
.Lx387_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx387_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n119_match_pos_α
n118_match_begin_β:     mov              r11, 92
.Lx387_13:              lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx387_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx387_1
                                                                              jmp   .Lx387_0
.Lx387_1:
n118_match_begin_af:    mov              r11, 92
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
                        add              rsp, 16;                             jmp   n134_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n119_match_pos_α:       mov              r11, 93
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n118_match_begin_β
                                                                              jmp   n120_match_lit_α
n119_match_pos_β:       mov              r11, 93;                             jmp   n118_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n120_match_lit_α:       mov              r11, 94
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n118_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n118_match_begin_β
                        add              r14d, 1;                             jmp   n121_match_defer_α
n120_match_lit_β:       mov              r11, 94
                        sub              r14d, 1;                             jmp   n118_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n121_match_defer_α:     sub              rsp, 16
                        mov              r11, 95
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx391_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx391_11
.Lx391_13:              mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx391_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx391_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx391_10
.Lx391_9:               cmp              al, 88;                              jne   .Lx391_21
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
                        test             rax, rax;                            je    .Lx391_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx391_10
.Lx391_21:              xor              eax, eax
.Lx391_10:              test             rax, rax;                            je    .Lx391_15
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rdx
.Lx391_15:
.Lx391_11:              test             rax, rax;                            jz    .Lx391_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx391_5]
                        push             rcx
                        lea              rcx, [rip + .Lx391_4]
                        push             rcx;                                 jmp   rax
.Lx391_4:                                                                     jmp   n122_match_arbno_α
.Lx391_5:               add              rsp, 16;                             jmp   n120_match_lit_β
.Lx391_0:               push             r14
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
                        test             eax, eax;                            jns   .Lx391_240
                        add              rsp, 16;                             jmp   n120_match_lit_β
.Lx391_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx391_6]
                        push             rcx
                        push             rax;                                 jmp   n122_match_arbno_α
.Lx391_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n120_match_lit_β
n121_match_defer_β:     mov              r11, 95
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx391_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx391_12
                                                                              jmp   rax
.Lx391_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n122_match_arbno_α:     mov              r11, 96
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n123_match_lit_α
n122_match_arbno_β:     mov              r11, 96
                        mov              r12, qword ptr [rbp + -56];          jmp   n128_match_lit_α
n122_match_arbno_as:    mov              r11, 96
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n128_match_lit_β
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n123_match_lit_α
n122_match_arbno_af:    mov              r11, 96
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n121_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n123_match_lit_α:       mov              r11, 97
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n122_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n122_match_arbno_β
                        add              r14d, 1;                             jmp   n124_match_rpos_α
n123_match_lit_β:       mov              r11, 97
                        sub              r14d, 1;                             jmp   n122_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n124_match_rpos_α:      mov              r11, 98
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n123_match_lit_β
                                                                              jmp   n125_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n125_match_end_α:       mov              r11, 99
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
                        test             rax, rax;                            je    .Lx398_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n118_match_begin_af
.Lx398_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n126_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_end_α:   mov              r11, 100
                        mov              r10, 16
                        add              rsp, 16;                             jmp   n130_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      mov              r11, 101
                        mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 5
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   main_γ
n127_lit_string_β:      mov              r11, 101;                            jmp   main_ω
.Lx401_0:               .quad            .Lx401_0_s
.Lx401_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n128_match_lit_α:       mov              r11, 102
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n122_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n122_match_arbno_af
                        add              r14d, 1;                             jmp   n129_match_defer_α
n128_match_lit_β:       mov              r11, 102
                        sub              r14d, 1;                             jmp   n122_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n129_match_defer_α:     mov              r11, 103
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx404_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx404_11
.Lx404_13:              mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx404_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx404_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx404_10
.Lx404_9:               cmp              al, 88;                              jne   .Lx404_21
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
                        test             rax, rax;                            je    .Lx404_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx404_10
.Lx404_21:              xor              eax, eax
.Lx404_10:              test             rax, rax;                            je    .Lx404_15
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rdx
.Lx404_15:
.Lx404_11:              test             rax, rax;                            jz    .Lx404_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx404_5]
                        push             rcx
                        lea              rcx, [rip + .Lx404_4]
                        push             rcx;                                 jmp   rax
.Lx404_4:                                                                     jmp   n122_match_arbno_as
.Lx404_5:                                                                     jmp   n128_match_lit_β
.Lx404_0:               push             r14
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
                        test             eax, eax;                            js    n128_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx404_6]
                        push             rcx
                        push             rax;                                 jmp   n122_match_arbno_as
.Lx404_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n128_match_lit_β
n129_match_defer_β:     mov              r11, 103
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx404_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx404_12
                                                                              jmp   rax
.Lx404_12:                                                                    jmp   qword ptr [rsp]
#=======================================================================================================================
# A2      OUTPUT = "T2 MATCH"             :(N2)
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_begin_α: mov              r11, 104
                        mov              r10, 17;                             jmp   n131_lit_string_α
n130_statement_begin_β: mov              r11, 104;                            jmp   n138_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:      sub              rsp, 16
                        mov              r11, 105
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n132_assign_α
.Lx407_0:               .quad            .Lx407_0_s
.Lx407_0_s:             .string          "T2 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n132_assign_α:          mov              r11, 106
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx408_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n133_statement_end_α
.Lx408_0:               .quad            .Lx408_0_s
.Lx408_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n133_statement_end_α:   mov              r11, 107
                        mov              r10, 17
                        add              rsp, 16;                             jmp   n138_statement_begin_α
#=======================================================================================================================
# B2      OUTPUT = "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_begin_α: mov              r11, 108
                        mov              r10, 18;                             jmp   n135_lit_string_α
n134_statement_begin_β: mov              r11, 108;                            jmp   n138_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:      sub              rsp, 16
                        mov              r11, 109
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n136_assign_α
.Lx413_0:               .quad            .Lx413_0_s
.Lx413_0_s:             .string          "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:          mov              r11, 110
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n137_statement_end_α
.Lx414_0:               .quad            .Lx414_0_s
.Lx414_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_end_α:   mov              r11, 111
                        mov              r10, 18
                        add              rsp, 16;                             jmp   n138_statement_begin_α
#=======================================================================================================================
# N2      S3 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)  :S(A3)F(B3)
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_begin_α: mov              r11, 112
                        mov              r10, 19;                             jmp   n139_var_α
n138_statement_begin_β: mov              r11, 112;                            jmp   n156_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:             sub              rsp, 16
                        mov              r11, 113
                        mov              rax, qword ptr [r9 + 96]             # S3
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n140_match_begin_α:     mov              r11, 114
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 40
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
.Lx421_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx421_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n141_match_pos_α
n140_match_begin_β:     mov              r11, 114
.Lx421_13:              lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx421_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx421_1
                                                                              jmp   .Lx421_0
.Lx421_1:
n140_match_begin_af:    mov              r11, 114
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
                        add              rsp, 16;                             jmp   n156_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n141_match_pos_α:       mov              r11, 115
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n140_match_begin_β
                                                                              jmp   n142_match_lit_α
n141_match_pos_β:       mov              r11, 115;                            jmp   n140_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n142_match_lit_α:       mov              r11, 116
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n140_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n140_match_begin_β
                        add              r14d, 1;                             jmp   n143_match_defer_α
n142_match_lit_β:       mov              r11, 116
                        sub              r14d, 1;                             jmp   n140_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n143_match_defer_α:     sub              rsp, 16
                        mov              r11, 117
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx425_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx425_11
.Lx425_13:              mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx425_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx425_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx425_10
.Lx425_9:               cmp              al, 88;                              jne   .Lx425_21
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
                        test             rax, rax;                            je    .Lx425_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx425_10
.Lx425_21:              xor              eax, eax
.Lx425_10:              test             rax, rax;                            je    .Lx425_15
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rdx
.Lx425_15:
.Lx425_11:              test             rax, rax;                            jz    .Lx425_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx425_5]
                        push             rcx
                        lea              rcx, [rip + .Lx425_4]
                        push             rcx;                                 jmp   rax
.Lx425_4:                                                                     jmp   n144_match_arbno_α
.Lx425_5:               add              rsp, 16;                             jmp   n142_match_lit_β
.Lx425_0:               push             r14
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
                        test             eax, eax;                            jns   .Lx425_240
                        add              rsp, 16;                             jmp   n142_match_lit_β
.Lx425_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx425_6]
                        push             rcx
                        push             rax;                                 jmp   n144_match_arbno_α
.Lx425_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n142_match_lit_β
n143_match_defer_β:     mov              r11, 117
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx425_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx425_12
                                                                              jmp   rax
.Lx425_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n144_match_arbno_α:     mov              r11, 118
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n145_match_lit_α
n144_match_arbno_β:     mov              r11, 118
                        mov              r12, qword ptr [rbp + -56];          jmp   n150_match_lit_α
n144_match_arbno_as:    mov              r11, 118
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n150_match_lit_β
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n145_match_lit_α
n144_match_arbno_af:    mov              r11, 118
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n143_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n145_match_lit_α:       mov              r11, 119
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n144_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n144_match_arbno_β
                        add              r14d, 1;                             jmp   n146_match_rpos_α
n145_match_lit_β:       mov              r11, 119
                        sub              r14d, 1;                             jmp   n144_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n146_match_rpos_α:      mov              r11, 120
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n145_match_lit_β
                                                                              jmp   n147_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n147_match_end_α:       mov              r11, 121
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
                        test             rax, rax;                            je    .Lx432_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n140_match_begin_af
.Lx432_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n148_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_end_α:   mov              r11, 122
                        mov              r10, 19
                        add              rsp, 16;                             jmp   n152_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:      mov              r11, 123
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 5
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   main_γ
n149_lit_string_β:      mov              r11, 123;                            jmp   main_ω
.Lx435_0:               .quad            .Lx435_0_s
.Lx435_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n150_match_lit_α:       mov              r11, 124
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n144_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n144_match_arbno_af
                        add              r14d, 1;                             jmp   n151_match_defer_α
n150_match_lit_β:       mov              r11, 124
                        sub              r14d, 1;                             jmp   n144_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n151_match_defer_α:     mov              r11, 125
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx438_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx438_11
.Lx438_13:              mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx438_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx438_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx438_10
.Lx438_9:               cmp              al, 88;                              jne   .Lx438_21
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
                        test             rax, rax;                            je    .Lx438_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx438_10
.Lx438_21:              xor              eax, eax
.Lx438_10:              test             rax, rax;                            je    .Lx438_15
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              qword ptr [rsi + 0], rdx
.Lx438_15:
.Lx438_11:              test             rax, rax;                            jz    .Lx438_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx438_5]
                        push             rcx
                        lea              rcx, [rip + .Lx438_4]
                        push             rcx;                                 jmp   rax
.Lx438_4:                                                                     jmp   n144_match_arbno_as
.Lx438_5:                                                                     jmp   n150_match_lit_β
.Lx438_0:               push             r14
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
                        test             eax, eax;                            js    n150_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx438_6]
                        push             rcx
                        push             rax;                                 jmp   n144_match_arbno_as
.Lx438_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n150_match_lit_β
n151_match_defer_β:     mov              r11, 125
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx438_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx438_12
                                                                              jmp   rax
.Lx438_12:                                                                    jmp   qword ptr [rsp]
#=======================================================================================================================
# A3      OUTPUT = "T3 MATCH"             :(N3)
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_begin_α: mov              r11, 126
                        mov              r10, 20;                             jmp   n153_lit_string_α
n152_statement_begin_β: mov              r11, 126;                            jmp   n160_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:      sub              rsp, 16
                        mov              r11, 127
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n154_assign_α
.Lx441_0:               .quad            .Lx441_0_s
.Lx441_0_s:             .string          "T3 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n154_assign_α:          mov              r11, 128
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n155_statement_end_α
.Lx442_0:               .quad            .Lx442_0_s
.Lx442_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_end_α:   mov              r11, 129
                        mov              r10, 20
                        add              rsp, 16;                             jmp   n160_statement_begin_α
#=======================================================================================================================
# B3      OUTPUT = "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_begin_α: mov              r11, 130
                        mov              r10, 21;                             jmp   n157_lit_string_α
n156_statement_begin_β: mov              r11, 130;                            jmp   n160_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:      sub              rsp, 16
                        mov              r11, 131
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n158_assign_α
.Lx447_0:               .quad            .Lx447_0_s
.Lx447_0_s:             .string          "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n158_assign_α:          mov              r11, 132
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n159_statement_end_α
.Lx448_0:               .quad            .Lx448_0_s
.Lx448_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_end_α:   mov              r11, 133
                        mov              r10, 21
                        add              rsp, 16;                             jmp   n160_statement_begin_α
#=======================================================================================================================
# N3      S4 POS(0) "(" *ITEM ARBNO("," *ITEM) "," *ITEM ")" RPOS(0)  :S(A4)F(B4)
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_begin_α: mov              r11, 134
                        mov              r10, 22;                             jmp   n161_var_α
n160_statement_begin_β: mov              r11, 134;                            jmp   n180_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:             sub              rsp, 16
                        mov              r11, 135
                        mov              rax, qword ptr [r9 + 112]            # S4
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n162_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n162_match_begin_α:     mov              r11, 136
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 40
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
.Lx455_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx455_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n163_match_pos_α
n162_match_begin_β:     mov              r11, 136
.Lx455_13:              lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx455_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx455_1
                                                                              jmp   .Lx455_0
.Lx455_1:
n162_match_begin_af:    mov              r11, 136
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
                        add              rsp, 16;                             jmp   n180_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n163_match_pos_α:       mov              r11, 137
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n162_match_begin_β
                                                                              jmp   n164_match_lit_α
n163_match_pos_β:       mov              r11, 137;                            jmp   n162_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n164_match_lit_α:       mov              r11, 138
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n162_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n162_match_begin_β
                        add              r14d, 1;                             jmp   n165_match_defer_α
n164_match_lit_β:       mov              r11, 138
                        sub              r14d, 1;                             jmp   n162_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n165_match_defer_α:     sub              rsp, 16
                        mov              r11, 139
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx459_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx459_11
.Lx459_13:              mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx459_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx459_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx459_10
.Lx459_9:               cmp              al, 88;                              jne   .Lx459_21
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
                        test             rax, rax;                            je    .Lx459_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx459_10
.Lx459_21:              xor              eax, eax
.Lx459_10:              test             rax, rax;                            je    .Lx459_15
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              qword ptr [rsi + 0], rdx
.Lx459_15:
.Lx459_11:              test             rax, rax;                            jz    .Lx459_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx459_5]
                        push             rcx
                        lea              rcx, [rip + .Lx459_4]
                        push             rcx;                                 jmp   rax
.Lx459_4:                                                                     jmp   n166_match_arbno_α
.Lx459_5:               add              rsp, 16;                             jmp   n164_match_lit_β
.Lx459_0:               push             r14
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
                        test             eax, eax;                            jns   .Lx459_240
                        add              rsp, 16;                             jmp   n164_match_lit_β
.Lx459_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx459_6]
                        push             rcx
                        push             rax;                                 jmp   n166_match_arbno_α
.Lx459_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n164_match_lit_β
n165_match_defer_β:     mov              r11, 139
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx459_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx459_12
                                                                              jmp   rax
.Lx459_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n166_match_arbno_α:     mov              r11, 140
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n167_match_lit_α
n166_match_arbno_β:     mov              r11, 140
                        mov              r12, qword ptr [rbp + -56];          jmp   n174_match_lit_α
n166_match_arbno_as:    mov              r11, 140
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n174_match_lit_β
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n167_match_lit_α
n166_match_arbno_af:    mov              r11, 140
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n165_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n167_match_lit_α:       mov              r11, 141
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n166_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n166_match_arbno_β
                        add              r14d, 1;                             jmp   n168_match_defer_α
n167_match_lit_β:       mov              r11, 141
                        sub              r14d, 1;                             jmp   n166_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n168_match_defer_α:     sub              rsp, 16
                        mov              r11, 142
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx464_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx464_11
.Lx464_13:              mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx464_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx464_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx464_10
.Lx464_9:               cmp              al, 88;                              jne   .Lx464_21
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
                        test             rax, rax;                            je    .Lx464_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx464_10
.Lx464_21:              xor              eax, eax
.Lx464_10:              test             rax, rax;                            je    .Lx464_15
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              qword ptr [rsi + 0], rdx
.Lx464_15:
.Lx464_11:              test             rax, rax;                            jz    .Lx464_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx464_5]
                        push             rcx
                        lea              rcx, [rip + .Lx464_4]
                        push             rcx;                                 jmp   rax
.Lx464_4:                                                                     jmp   n169_match_lit_α
.Lx464_5:               add              rsp, 16;                             jmp   n167_match_lit_β
.Lx464_0:               push             r14
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
                        test             eax, eax;                            jns   .Lx464_240
                        add              rsp, 16;                             jmp   n167_match_lit_β
.Lx464_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx464_6]
                        push             rcx
                        push             rax;                                 jmp   n169_match_lit_α
.Lx464_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n167_match_lit_β
n168_match_defer_β:     mov              r11, 142
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx464_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx464_12
                                                                              jmp   rax
.Lx464_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n169_match_lit_α:       mov              r11, 143
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n168_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n168_match_defer_β
                        add              r14d, 1;                             jmp   n170_match_rpos_α
n169_match_lit_β:       mov              r11, 143
                        sub              r14d, 1;                             jmp   n168_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n170_match_rpos_α:      mov              r11, 144
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n169_match_lit_β
                                                                              jmp   n171_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n171_match_end_α:       mov              r11, 145
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
                        test             rax, rax;                            je    .Lx469_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n162_match_begin_af
.Lx469_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n172_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_end_α:   mov              r11, 146
                        mov              r10, 22
                        add              rsp, 16;                             jmp   n176_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:      mov              r11, 147
                        mov              qword ptr [rsp + 1488], 2            # result
                        mov              dword ptr [rsp + 1492], 5
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   main_γ
n173_lit_string_β:      mov              r11, 147;                            jmp   main_ω
.Lx472_0:               .quad            .Lx472_0_s
.Lx472_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n174_match_lit_α:       mov              r11, 148
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n166_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n166_match_arbno_af
                        add              r14d, 1;                             jmp   n175_match_defer_α
n174_match_lit_β:       mov              r11, 148
                        sub              r14d, 1;                             jmp   n166_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n175_match_defer_α:     mov              r11, 149
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx475_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx475_11
.Lx475_13:              mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx475_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx475_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx475_10
.Lx475_9:               cmp              al, 88;                              jne   .Lx475_21
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
                        test             rax, rax;                            je    .Lx475_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx475_10
.Lx475_21:              xor              eax, eax
.Lx475_10:              test             rax, rax;                            je    .Lx475_15
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              qword ptr [rsi + 0], rdx
.Lx475_15:
.Lx475_11:              test             rax, rax;                            jz    .Lx475_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx475_5]
                        push             rcx
                        lea              rcx, [rip + .Lx475_4]
                        push             rcx;                                 jmp   rax
.Lx475_4:                                                                     jmp   n166_match_arbno_as
.Lx475_5:                                                                     jmp   n174_match_lit_β
.Lx475_0:               push             r14
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
                        test             eax, eax;                            js    n174_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx475_6]
                        push             rcx
                        push             rax;                                 jmp   n166_match_arbno_as
.Lx475_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n174_match_lit_β
n175_match_defer_β:     mov              r11, 149
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx475_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx475_12
                                                                              jmp   rax
.Lx475_12:                                                                    jmp   qword ptr [rsp]
#=======================================================================================================================
# A4      OUTPUT = "T4 MATCH"             :(N4)
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_begin_α: mov              r11, 150
                        mov              r10, 23;                             jmp   n177_lit_string_α
n176_statement_begin_β: mov              r11, 150;                            jmp   n184_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:      sub              rsp, 16
                        mov              r11, 151
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx478_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n178_assign_α
.Lx478_0:               .quad            .Lx478_0_s
.Lx478_0_s:             .string          "T4 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n178_assign_α:          mov              r11, 152
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx479_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n179_statement_end_α
.Lx479_0:               .quad            .Lx479_0_s
.Lx479_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_end_α:   mov              r11, 153
                        mov              r10, 23
                        add              rsp, 16;                             jmp   n184_statement_begin_α
#=======================================================================================================================
# B4      OUTPUT = "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_begin_α: mov              r11, 154
                        mov              r10, 24;                             jmp   n181_lit_string_α
n180_statement_begin_β: mov              r11, 154;                            jmp   n184_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:      sub              rsp, 16
                        mov              r11, 155
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n182_assign_α
.Lx484_0:               .quad            .Lx484_0_s
.Lx484_0_s:             .string          "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n182_assign_α:          mov              r11, 156
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n183_statement_end_α
.Lx485_0:               .quad            .Lx485_0_s
.Lx485_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_end_α:   mov              r11, 157
                        mov              r10, 24
                        add              rsp, 16;                             jmp   n184_statement_begin_α
#=======================================================================================================================
# N4      S5 POS(0) "a" *ITEM2 ARBNO("," *ITEM2) "z" RPOS(0)  :S(A5)F(B5)
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_begin_α: mov              r11, 158
                        mov              r10, 25;                             jmp   n185_var_α
n184_statement_begin_β: mov              r11, 158;                            jmp   n202_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:             sub              rsp, 16
                        mov              r11, 159
                        mov              rax, qword ptr [r9 + 128]            # S5
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n186_match_begin_α:     mov              r11, 160
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 40
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
.Lx492_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx492_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n187_match_pos_α
n186_match_begin_β:     mov              r11, 160
.Lx492_13:              lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx492_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx492_1
                                                                              jmp   .Lx492_0
.Lx492_1:
n186_match_begin_af:    mov              r11, 160
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
                        add              rsp, 16;                             jmp   n202_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n187_match_pos_α:       mov              r11, 161
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n186_match_begin_β
                                                                              jmp   n188_match_lit_α
n187_match_pos_β:       mov              r11, 161;                            jmp   n186_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n188_match_lit_α:       mov              r11, 162
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n186_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97;                             jne   n186_match_begin_β
                        add              r14d, 1;                             jmp   n189_match_defer_α
n188_match_lit_β:       mov              r11, 162
                        sub              r14d, 1;                             jmp   n186_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n189_match_defer_α:     sub              rsp, 16
                        mov              r11, 163
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx496_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx496_11
.Lx496_13:              mov              rax, qword ptr [r9 + 16]             # ITEM2
                        mov              rdx, qword ptr [r9 + 24]
                        cmp              al, 8;                               jne   .Lx496_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx496_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 24];            jmp   .Lx496_10
.Lx496_9:               cmp              al, 88;                              jne   .Lx496_21
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
                        test             rax, rax;                            je    .Lx496_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx496_10
.Lx496_21:              xor              eax, eax
.Lx496_10:              test             rax, rax;                            je    .Lx496_15
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              qword ptr [rsi + 0], rdx
.Lx496_15:
.Lx496_11:              test             rax, rax;                            jz    .Lx496_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx496_5]
                        push             rcx
                        lea              rcx, [rip + .Lx496_4]
                        push             rcx;                                 jmp   rax
.Lx496_4:                                                                     jmp   n190_match_arbno_α
.Lx496_5:               add              rsp, 16;                             jmp   n188_match_lit_β
.Lx496_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
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
                        test             eax, eax;                            jns   .Lx496_240
                        add              rsp, 16;                             jmp   n188_match_lit_β
.Lx496_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx496_6]
                        push             rcx
                        push             rax;                                 jmp   n190_match_arbno_α
.Lx496_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n188_match_lit_β
n189_match_defer_β:     mov              r11, 163
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx496_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx496_12
                                                                              jmp   rax
.Lx496_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n190_match_arbno_α:     mov              r11, 164
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n191_match_lit_α
n190_match_arbno_β:     mov              r11, 164
                        mov              r12, qword ptr [rbp + -56];          jmp   n196_match_lit_α
n190_match_arbno_as:    mov              r11, 164
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n196_match_lit_β
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n191_match_lit_α
n190_match_arbno_af:    mov              r11, 164
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n189_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n191_match_lit_α:       mov              r11, 165
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n190_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 122;                            jne   n190_match_arbno_β
                        add              r14d, 1;                             jmp   n192_match_rpos_α
n191_match_lit_β:       mov              r11, 165
                        sub              r14d, 1;                             jmp   n190_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n192_match_rpos_α:      mov              r11, 166
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n191_match_lit_β
                                                                              jmp   n193_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n193_match_end_α:       mov              r11, 167
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
                        test             rax, rax;                            je    .Lx503_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n186_match_begin_af
.Lx503_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n194_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_end_α:   mov              r11, 168
                        mov              r10, 25
                        add              rsp, 16;                             jmp   n198_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:      mov              r11, 169
                        mov              qword ptr [rsp + 1808], 2            # result
                        mov              dword ptr [rsp + 1812], 5
                        mov              rax, qword ptr [rip + .Lx506_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   main_γ
n195_lit_string_β:      mov              r11, 169;                            jmp   main_ω
.Lx506_0:               .quad            .Lx506_0_s
.Lx506_0_s:             .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n196_match_lit_α:       mov              r11, 170
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n190_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n190_match_arbno_af
                        add              r14d, 1;                             jmp   n197_match_defer_α
n196_match_lit_β:       mov              r11, 170
                        sub              r14d, 1;                             jmp   n190_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n197_match_defer_α:     mov              r11, 171
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx509_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx509_11
.Lx509_13:              mov              rax, qword ptr [r9 + 16]             # ITEM2
                        mov              rdx, qword ptr [r9 + 24]
                        cmp              al, 8;                               jne   .Lx509_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx509_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 24];            jmp   .Lx509_10
.Lx509_9:               cmp              al, 88;                              jne   .Lx509_21
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
                        test             rax, rax;                            je    .Lx509_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx509_10
.Lx509_21:              xor              eax, eax
.Lx509_10:              test             rax, rax;                            je    .Lx509_15
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              qword ptr [rsi + 0], rdx
.Lx509_15:
.Lx509_11:              test             rax, rax;                            jz    .Lx509_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx509_5]
                        push             rcx
                        lea              rcx, [rip + .Lx509_4]
                        push             rcx;                                 jmp   rax
.Lx509_4:                                                                     jmp   n190_match_arbno_as
.Lx509_5:                                                                     jmp   n196_match_lit_β
.Lx509_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
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
                        test             eax, eax;                            js    n196_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx509_6]
                        push             rcx
                        push             rax;                                 jmp   n190_match_arbno_as
.Lx509_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n196_match_lit_β
n197_match_defer_β:     mov              r11, 171
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx509_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx509_12
                                                                              jmp   rax
.Lx509_12:                                                                    jmp   qword ptr [rsp]
#=======================================================================================================================
# A5      OUTPUT = "T5 MATCH"             :(N5)
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_begin_α: mov              r11, 172
                        mov              r10, 26;                             jmp   n199_lit_string_α
n198_statement_begin_β: mov              r11, 172;                            jmp   n206_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:      sub              rsp, 16
                        mov              r11, 173
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx512_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n200_assign_α
.Lx512_0:               .quad            .Lx512_0_s
.Lx512_0_s:             .string          "T5 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n200_assign_α:          mov              r11, 174
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n201_statement_end_α
.Lx513_0:               .quad            .Lx513_0_s
.Lx513_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_end_α:   mov              r11, 175
                        mov              r10, 26
                        add              rsp, 16;                             jmp   n206_statement_begin_α
#=======================================================================================================================
# B5      OUTPUT = "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n202_statement_begin_α: mov              r11, 176
                        mov              r10, 27;                             jmp   n203_lit_string_α
n202_statement_begin_β: mov              r11, 176;                            jmp   n206_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:      sub              rsp, 16
                        mov              r11, 177
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx518_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n204_assign_α
.Lx518_0:               .quad            .Lx518_0_s
.Lx518_0_s:             .string          "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n204_assign_α:          mov              r11, 178
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx519_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n205_statement_end_α
.Lx519_0:               .quad            .Lx519_0_s
.Lx519_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_end_α:   mov              r11, 179
                        mov              r10, 27
                        add              rsp, 16;                             jmp   n206_statement_begin_α
#=======================================================================================================================
# N5      S6 POS(0) LISTP RPOS(0)         :S(A6)F(B6)
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_begin_α: mov              r11, 180
                        mov              r10, 28;                             jmp   n207_var_α
n206_statement_begin_β: mov              r11, 180;                            jmp   n220_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:             sub              rsp, 16
                        mov              r11, 181
                        mov              rax, qword ptr [r9 + 144]            # S6
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n208_var_α
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:             sub              rsp, 16
                        mov              r11, 182
                        mov              rax, qword ptr [r9 + 48]             # LISTP
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n209_assign_α
n208_var_β:             mov              r11, 182
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n220_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n209_assign_α:          mov              r11, 183
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx526_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n210_match_begin_α
n209_assign_β:          mov              r11, 183;                            jmp   n208_var_β
.Lx526_0:               .quad            .Lx526_0_s
.Lx526_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n210_match_begin_α:     mov              r11, 184
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
.Lx528_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx528_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n211_match_pos_α
n210_match_begin_β:     mov              r11, 184
.Lx528_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx528_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx528_1
                                                                              jmp   .Lx528_0
.Lx528_1:
n210_match_begin_af:    mov              r11, 184
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
                        pop              rbp;                                 jmp   n209_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n211_match_pos_α:       mov              r11, 185
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n210_match_begin_β
                                                                              jmp   n212_match_defer_α
n211_match_pos_β:       mov              r11, 185;                            jmp   n210_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n212_match_defer_α:     mov              r11, 186
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S3]
                        cmp              rax, rdx;                            jne   .Lx530_30
                        mov              rax, qword ptr [rcx + 8]
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              jne   .Lx530_30
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lx530_30
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lx530_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lx530_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lx530_0
.Lx530_31:              mov              edx, -1;                             jmp   .Lx530_0
.Lx530_30:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
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
                        test             rax, rax;                            jz    .Lx530_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx530_5]
                        push             rcx
                        lea              rcx, [rip + .Lx530_4]
                        push             rcx;                                 jmp   rax
.Lx530_4:                                                                     jmp   n213_match_rpos_α
.Lx530_5:                                                                     jmp   n210_match_begin_β
.Lx530_0:               mov              eax, edx
                        test             eax, eax;                            js    n210_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx530_6]
                        push             rcx
                        push             rax;                                 jmp   n213_match_rpos_α
.Lx530_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n210_match_begin_β
n212_match_defer_β:     mov              r11, 186
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx530_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx530_12
                                                                              jmp   rax
.Lx530_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n213_match_rpos_α:      mov              r11, 187
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n212_match_defer_β
                                                                              jmp   n214_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n214_match_end_α:       mov              r11, 188
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
                        test             rax, rax;                            je    .Lx533_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n210_match_begin_af
.Lx533_13:              add              rsp, 16
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
#-----------------------------------------------------------------------------------------------------------------------
n215_statement_end_α:   mov              r11, 189
                        mov              r10, 28
                        add              rsp, 32;                             jmp   n216_statement_begin_α
#=======================================================================================================================
# A6      OUTPUT = "T6 MATCH"             :(N6)
#-----------------------------------------------------------------------------------------------------------------------
n216_statement_begin_α: mov              r11, 190
                        mov              r10, 29;                             jmp   n217_lit_string_α
n216_statement_begin_β: mov              r11, 190;                            jmp   n224_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:      sub              rsp, 16
                        mov              r11, 191
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx538_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n218_assign_α
.Lx538_0:               .quad            .Lx538_0_s
.Lx538_0_s:             .string          "T6 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n218_assign_α:          mov              r11, 192
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx539_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n219_statement_end_α
.Lx539_0:               .quad            .Lx539_0_s
.Lx539_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n219_statement_end_α:   mov              r11, 193
                        mov              r10, 29
                        add              rsp, 16;                             jmp   n224_statement_begin_α
#=======================================================================================================================
# B6      OUTPUT = "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n220_statement_begin_α: mov              r11, 194
                        mov              r10, 30;                             jmp   n221_lit_string_α
n220_statement_begin_β: mov              r11, 194;                            jmp   n224_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:      sub              rsp, 16
                        mov              r11, 195
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx544_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n222_assign_α
.Lx544_0:               .quad            .Lx544_0_s
.Lx544_0_s:             .string          "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n222_assign_α:          mov              r11, 196
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n223_statement_end_α
.Lx545_0:               .quad            .Lx545_0_s
.Lx545_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_end_α:   mov              r11, 197
                        mov              r10, 30
                        add              rsp, 16;                             jmp   n224_statement_begin_α
#=======================================================================================================================
# N6      S7 POS(0) "(" *NEST ARBNO("," *NEST) ")" RPOS(0)  :S(A7)F(B7)
#-----------------------------------------------------------------------------------------------------------------------
n224_statement_begin_α: mov              r11, 198
                        mov              r10, 31;                             jmp   n225_var_α
n224_statement_begin_β: mov              r11, 198;                            jmp   n241_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n225_var_α:             sub              rsp, 16
                        mov              r11, 199
                        mov              rax, qword ptr [r9 + 160]            # S7
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n226_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n226_match_begin_α:     mov              r11, 200
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 40
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
.Lx552_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx552_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n227_match_pos_α
n226_match_begin_β:     mov              r11, 200
.Lx552_13:              lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx552_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx552_1
                                                                              jmp   .Lx552_0
.Lx552_1:
n226_match_begin_af:    mov              r11, 200
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
                        add              rsp, 16;                             jmp   n241_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n227_match_pos_α:       mov              r11, 201
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n226_match_begin_β
                                                                              jmp   n228_match_lit_α
n227_match_pos_β:       mov              r11, 201;                            jmp   n226_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n228_match_lit_α:       mov              r11, 202
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n226_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n226_match_begin_β
                        add              r14d, 1;                             jmp   n229_match_defer_α
n228_match_lit_β:       mov              r11, 202
                        sub              r14d, 1;                             jmp   n226_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n229_match_defer_α:     sub              rsp, 16
                        mov              r11, 203
                        lea              rsi, [rip + g_sno_defer_cells+112]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx556_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx556_11
.Lx556_13:              mov              rax, qword ptr [r9 + 32]             # NEST
                        mov              rdx, qword ptr [r9 + 40]
                        cmp              al, 8;                               jne   .Lx556_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx556_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 40];            jmp   .Lx556_10
.Lx556_9:               cmp              al, 88;                              jne   .Lx556_21
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
                        test             rax, rax;                            je    .Lx556_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx556_10
.Lx556_21:              xor              eax, eax
.Lx556_10:              test             rax, rax;                            je    .Lx556_15
                        lea              rsi, [rip + g_sno_defer_cells+112]
                        mov              qword ptr [rsi + 0], rdx
.Lx556_15:
.Lx556_11:              test             rax, rax;                            jz    .Lx556_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx556_5]
                        push             rcx
                        lea              rcx, [rip + .Lx556_4]
                        push             rcx;                                 jmp   rax
.Lx556_4:                                                                     jmp   n230_match_arbno_α
.Lx556_5:               add              rsp, 16;                             jmp   n228_match_lit_β
.Lx556_0:               push             r14
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
                        test             eax, eax;                            jns   .Lx556_240
                        add              rsp, 16;                             jmp   n228_match_lit_β
.Lx556_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx556_6]
                        push             rcx
                        push             rax;                                 jmp   n230_match_arbno_α
.Lx556_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n228_match_lit_β
n229_match_defer_β:     mov              r11, 203
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx556_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx556_12
                                                                              jmp   rax
.Lx556_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n230_match_arbno_α:     mov              r11, 204
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n231_match_lit_α
n230_match_arbno_β:     mov              r11, 204
                        mov              r12, qword ptr [rbp + -56];          jmp   n235_match_lit_α
n230_match_arbno_as:    mov              r11, 204
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n235_match_lit_β
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n231_match_lit_α
n230_match_arbno_af:    mov              r11, 204
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jne   n236_match_defer_β
                                                                              jmp   n229_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n231_match_lit_α:       mov              r11, 205
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n230_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n230_match_arbno_β
                        add              r14d, 1;                             jmp   n232_match_rpos_α
n231_match_lit_β:       mov              r11, 205
                        sub              r14d, 1;                             jmp   n230_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n232_match_rpos_α:      mov              r11, 206
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n231_match_lit_β
                                                                              jmp   n233_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n233_match_end_α:       mov              r11, 207
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
                        test             rax, rax;                            je    .Lx563_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n226_match_begin_af
.Lx563_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n234_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n234_statement_end_α:   mov              r11, 208
                        mov              r10, 31
                        add              rsp, 16;                             jmp   n237_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n235_match_lit_α:       mov              r11, 209
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n230_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n230_match_arbno_af
                        add              r14d, 1;                             jmp   n236_match_defer_α
n235_match_lit_β:       mov              r11, 209
                        sub              r14d, 1;                             jmp   n230_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n236_match_defer_α:     mov              r11, 210
                        lea              rsi, [rip + g_sno_defer_cells+120]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx568_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx568_11
.Lx568_13:              mov              rax, qword ptr [r9 + 32]             # NEST
                        mov              rdx, qword ptr [r9 + 40]
                        cmp              al, 8;                               jne   .Lx568_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx568_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 40];            jmp   .Lx568_10
.Lx568_9:               cmp              al, 88;                              jne   .Lx568_21
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
                        test             rax, rax;                            je    .Lx568_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx568_10
.Lx568_21:              xor              eax, eax
.Lx568_10:              test             rax, rax;                            je    .Lx568_15
                        lea              rsi, [rip + g_sno_defer_cells+120]
                        mov              qword ptr [rsi + 0], rdx
.Lx568_15:
.Lx568_11:              test             rax, rax;                            jz    .Lx568_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx568_5]
                        push             rcx
                        lea              rcx, [rip + .Lx568_4]
                        push             rcx;                                 jmp   rax
.Lx568_4:                                                                     jmp   n230_match_arbno_as
.Lx568_5:                                                                     jmp   n235_match_lit_β
.Lx568_0:               push             r14
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
                        test             eax, eax;                            js    n235_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx568_6]
                        push             rcx
                        push             rax;                                 jmp   n230_match_arbno_as
.Lx568_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n235_match_lit_β
n236_match_defer_β:     mov              r11, 210
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx568_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx568_12
                                                                              jmp   rax
.Lx568_12:                                                                    jmp   qword ptr [rsp]
#=======================================================================================================================
# A7      OUTPUT = "T7 MATCH"             :(N7)
#-----------------------------------------------------------------------------------------------------------------------
n237_statement_begin_α: mov              r11, 211
                        mov              r10, 32;                             jmp   n238_lit_string_α
n237_statement_begin_β: mov              r11, 211;                            jmp   n245_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_string_α:      sub              rsp, 16
                        mov              r11, 212
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx571_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n239_assign_α
.Lx571_0:               .quad            .Lx571_0_s
.Lx571_0_s:             .string          "T7 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n239_assign_α:          mov              r11, 213
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n240_statement_end_α
.Lx572_0:               .quad            .Lx572_0_s
.Lx572_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n240_statement_end_α:   mov              r11, 214
                        mov              r10, 32
                        add              rsp, 16;                             jmp   n245_statement_begin_α
#=======================================================================================================================
# B7      OUTPUT = "T7 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n241_statement_begin_α: mov              r11, 215
                        mov              r10, 33;                             jmp   n242_lit_string_α
n241_statement_begin_β: mov              r11, 215;                            jmp   n245_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_string_α:      sub              rsp, 16
                        mov              r11, 216
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n243_assign_α
.Lx577_0:               .quad            .Lx577_0_s
.Lx577_0_s:             .string          "T7 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n243_assign_α:          mov              r11, 217
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n244_statement_end_α
.Lx578_0:               .quad            .Lx578_0_s
.Lx578_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_end_α:   mov              r11, 218
                        mov              r10, 33
                        add              rsp, 16;                             jmp   n245_statement_begin_α
#=======================================================================================================================
# N7      S8 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)  :S(A8)F(B8)
#-----------------------------------------------------------------------------------------------------------------------
n245_statement_begin_α: mov              r11, 219
                        mov              r10, 34;                             jmp   n246_var_α
n245_statement_begin_β: mov              r11, 219;                            jmp   n263_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:             sub              rsp, 16
                        mov              r11, 220
                        mov              rax, qword ptr [r9 + 176]            # S8
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n247_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n247_match_begin_α:     mov              r11, 221
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 40
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
.Lx585_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx585_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n248_match_pos_α
n247_match_begin_β:     mov              r11, 221
.Lx585_13:              lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx585_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx585_1
                                                                              jmp   .Lx585_0
.Lx585_1:
n247_match_begin_af:    mov              r11, 221
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
                        add              rsp, 16;                             jmp   n263_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n248_match_pos_α:       mov              r11, 222
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n247_match_begin_β
                                                                              jmp   n249_match_lit_α
n248_match_pos_β:       mov              r11, 222;                            jmp   n247_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n249_match_lit_α:       mov              r11, 223
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n247_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n247_match_begin_β
                        add              r14d, 1;                             jmp   n250_match_defer_α
n249_match_lit_β:       mov              r11, 223
                        sub              r14d, 1;                             jmp   n247_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n250_match_defer_α:     sub              rsp, 16
                        mov              r11, 224
                        lea              rsi, [rip + g_sno_defer_cells+128]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx589_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx589_11
.Lx589_13:              mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx589_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx589_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx589_10
.Lx589_9:               cmp              al, 88;                              jne   .Lx589_21
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
                        test             rax, rax;                            je    .Lx589_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx589_10
.Lx589_21:              xor              eax, eax
.Lx589_10:              test             rax, rax;                            je    .Lx589_15
                        lea              rsi, [rip + g_sno_defer_cells+128]
                        mov              qword ptr [rsi + 0], rdx
.Lx589_15:
.Lx589_11:              test             rax, rax;                            jz    .Lx589_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx589_5]
                        push             rcx
                        lea              rcx, [rip + .Lx589_4]
                        push             rcx;                                 jmp   rax
.Lx589_4:                                                                     jmp   n251_match_arbno_α
.Lx589_5:               add              rsp, 16;                             jmp   n249_match_lit_β
.Lx589_0:               push             r14
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
                        test             eax, eax;                            jns   .Lx589_240
                        add              rsp, 16;                             jmp   n249_match_lit_β
.Lx589_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx589_6]
                        push             rcx
                        push             rax;                                 jmp   n251_match_arbno_α
.Lx589_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n249_match_lit_β
n250_match_defer_β:     mov              r11, 224
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx589_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx589_12
                                                                              jmp   rax
.Lx589_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n251_match_arbno_α:     mov              r11, 225
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n252_match_lit_α
n251_match_arbno_β:     mov              r11, 225
                        mov              r12, qword ptr [rbp + -56];          jmp   n257_match_lit_α
n251_match_arbno_as:    mov              r11, 225
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n257_match_lit_β
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n252_match_lit_α
n251_match_arbno_af:    mov              r11, 225
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n250_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n252_match_lit_α:       mov              r11, 226
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n251_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n251_match_arbno_β
                        add              r14d, 1;                             jmp   n253_match_rpos_α
n252_match_lit_β:       mov              r11, 226
                        sub              r14d, 1;                             jmp   n251_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n253_match_rpos_α:      mov              r11, 227
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n252_match_lit_β
                                                                              jmp   n254_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n254_match_end_α:       mov              r11, 228
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
                        test             rax, rax;                            je    .Lx596_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n247_match_begin_af
.Lx596_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n255_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n255_statement_end_α:   mov              r11, 229
                        mov              r10, 34
                        add              rsp, 16;                             jmp   n259_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:      mov              r11, 230
                        mov              qword ptr [rsp + 2544], 2            # result
                        mov              dword ptr [rsp + 2548], 5
                        mov              rax, qword ptr [rip + .Lx599_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   main_γ
n256_lit_string_β:      mov              r11, 230;                            jmp   main_ω
.Lx599_0:               .quad            .Lx599_0_s
.Lx599_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n257_match_lit_α:       mov              r11, 231
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n251_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n251_match_arbno_af
                        add              r14d, 1;                             jmp   n258_match_defer_α
n257_match_lit_β:       mov              r11, 231
                        sub              r14d, 1;                             jmp   n251_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n258_match_defer_α:     mov              r11, 232
                        lea              rsi, [rip + g_sno_defer_cells+136]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx602_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx602_11
.Lx602_13:              mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx602_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx602_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx602_10
.Lx602_9:               cmp              al, 88;                              jne   .Lx602_21
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
                        test             rax, rax;                            je    .Lx602_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx602_10
.Lx602_21:              xor              eax, eax
.Lx602_10:              test             rax, rax;                            je    .Lx602_15
                        lea              rsi, [rip + g_sno_defer_cells+136]
                        mov              qword ptr [rsi + 0], rdx
.Lx602_15:
.Lx602_11:              test             rax, rax;                            jz    .Lx602_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx602_5]
                        push             rcx
                        lea              rcx, [rip + .Lx602_4]
                        push             rcx;                                 jmp   rax
.Lx602_4:                                                                     jmp   n251_match_arbno_as
.Lx602_5:                                                                     jmp   n257_match_lit_β
.Lx602_0:               push             r14
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
                        test             eax, eax;                            js    n257_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx602_6]
                        push             rcx
                        push             rax;                                 jmp   n251_match_arbno_as
.Lx602_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n257_match_lit_β
n258_match_defer_β:     mov              r11, 232
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx602_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx602_12
                                                                              jmp   rax
.Lx602_12:                                                                    jmp   qword ptr [rsp]
#=======================================================================================================================
# A8      OUTPUT = "T8 MATCH"             :(N8)
#-----------------------------------------------------------------------------------------------------------------------
n259_statement_begin_α: mov              r11, 233
                        mov              r10, 35;                             jmp   n260_lit_string_α
n259_statement_begin_β: mov              r11, 233;                            jmp   n267_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:      sub              rsp, 16
                        mov              r11, 234
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx605_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n261_assign_α
.Lx605_0:               .quad            .Lx605_0_s
.Lx605_0_s:             .string          "T8 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n261_assign_α:          mov              r11, 235
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx606_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n262_statement_end_α
.Lx606_0:               .quad            .Lx606_0_s
.Lx606_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n262_statement_end_α:   mov              r11, 236
                        mov              r10, 35
                        add              rsp, 16;                             jmp   n267_statement_begin_α
#=======================================================================================================================
# B8      OUTPUT = "T8 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n263_statement_begin_α: mov              r11, 237
                        mov              r10, 36;                             jmp   n264_lit_string_α
n263_statement_begin_β: mov              r11, 237;                            jmp   n267_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_string_α:      sub              rsp, 16
                        mov              r11, 238
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n265_assign_α
.Lx611_0:               .quad            .Lx611_0_s
.Lx611_0_s:             .string          "T8 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n265_assign_α:          mov              r11, 239
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx612_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n266_statement_end_α
.Lx612_0:               .quad            .Lx612_0_s
.Lx612_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n266_statement_end_α:   mov              r11, 240
                        mov              r10, 36
                        add              rsp, 16;                             jmp   n267_statement_begin_α
#=======================================================================================================================
# N8  <stmt 37, line 44: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n267_statement_begin_α: mov              r11, 241
                        mov              r10, 37;                             jmp   n268_statement_end_α
n267_statement_begin_β: mov              r11, 241;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n268_statement_end_α:   mov              r11, 242
                        mov              r10, 37;                             jmp   main_γ
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
                        .long            96
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
                        .long            96
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
                        .long            176
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "NEST"
.S1:                    .string          "ITEM"
.S2:                    .string          "ITEM2"
.S3:                    .string          "PATV$0"
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
                        .text
                        .section         .note.GNU-stack,"",@progbits
