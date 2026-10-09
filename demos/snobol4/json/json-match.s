                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/json/json-match.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
.LTp0:
.LTp0_α_body:
                        cmp              r14d, r15d
                                                                              jge   .Lfg_none_0
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        lea              rcx, [rip + .C0]
                        movzx            eax, byte ptr [rcx + rax]
                        test             eax, eax
                                                                              jne   .Lfg_ok_0
.Lfg_fire_0:
.Lfg_none_0:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        push             rbp
                        push             rcx
                        push             rax
                        lea              rcx, [rip + .Lfg_stub_0]
                        push             rcx;                                 jmp   rax
.Lfg_stub_0:
                        mov              rbp, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 16]
                        add              rsp, 48;                             jmp   rcx
.Lfg_ok_0:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 120
                        lea              rax, [rip + .Lgcmap_.LTp0]
                        mov              qword ptr [rbp + -112], rax
                        mov              dword ptr [rbp + -120], 160
                        mov              dword ptr [rbp + -116], 120
                        xorps            xmm0, xmm0
                        movups           xmmword ptr [rbp + -104], xmm0
                        movups           xmmword ptr [rbp + -88], xmm0
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n0_match_alternate_bx, @function
n0_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_alternate_α:   mov              dword ptr [rbp + -104], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_4_21]
                        mov              qword ptr [rbp + -88], rax;          jmp   n2_match_span_α
.Lmatch_alternate_α_4_21:
                        lea              rax, [rip + .Lmatch_alternate_α_4_19]
                        mov              qword ptr [rbp + -88], rax;          jmp   n1_match_lit_α
.Lmatch_alternate_γ_0_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_4_40]
                        mov              qword ptr [rbp + -96], rax;          jmp   .Lmatch_alternate_γ_0_as
.Lmatch_alternate_γ_0_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_4_41]
                        mov              qword ptr [rbp + -96], rax;          jmp   .Lmatch_alternate_γ_0_as
.Lmatch_alternate_α_4_40:
                                                                              jmp   n2_match_span_β
.Lmatch_alternate_α_4_41:
                                                                              jmp   n1_match_lit_β
.Lmatch_alternate_γ_0_as:
                                                                              jmp   .LTp0_γ
n0_match_alternate_β:   mov              rax, qword ptr [rbp + -96];          jmp   rax
.Lmatch_alternate_γ_0_af:
.Lmatch_alternate_ω_0_af:
                        mov              r14d, dword ptr [rbp + -104]
                        mov              rax, qword ptr [rbp + -88];          jmp   rax
.Lmatch_alternate_α_4_19:
                                                                              jmp   .LTp0_ω
                        .size            n0_match_alternate_bx, .-n0_match_alternate_bx
                        .type            n1_match_lit_bx, @function
n1_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_match_lit_α:                                                               jmp   .Lmatch_alternate_γ_0_s1
n1_match_lit_β:                                                               jmp   .Lmatch_alternate_ω_0_af
                        .size            n1_match_lit_bx, .-n1_match_lit_bx
                        .type            n2_match_span_bx, @function
n2_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_match_span_α:        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lmatch_span_α_8_0:     cmp              ecx, r15d;                           jge   .Lmatch_span_α_8_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_8_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_8_0
.Lmatch_span_α_8_1:     cmp              ecx, r14d;                           jle   .Lmatch_alternate_ω_0_af
                        mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_alternate_γ_0_s0
n2_match_span_β:        mov              r14d, dword ptr [rbp + -60];         jmp   .Lmatch_alternate_ω_0_af
                        .size            n2_match_span_bx, .-n2_match_span_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_β:
                                                                              jmp   n0_match_alternate_β
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
                        .quad            516742532442
                        .quad            17179869208
                        .quad            0
                        .quad            120
                        .quad            15
                        .quad            8804682956696
                        .quad            8813272891296
                        .quad            8813272891304
                        .quad            8804682956720
                        .quad            8804682956728
                        .quad            17600775978944
                        .quad            8808977924048
                        .quad            8804682956760
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
                        .long            96, 1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.LTp1:
.LTp1_α_body:
                        cmp              r14d, r15d
                                                                              jge   .Lfg_none_1
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        lea              rcx, [rip + .C2]
                        movzx            eax, byte ptr [rcx + rax]
                        test             eax, eax
                                                                              jne   .Lfg_ok_1
.Lfg_fire_1:
.Lfg_none_1:
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
.Lfg_ok_1:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 88
                        lea              rax, [rip + .Lgcmap_.LTp1]
                        mov              qword ptr [rbp + -80], rax
                        mov              dword ptr [rbp + -88], 160
                        mov              dword ptr [rbp + -84], 88
                        xorps            xmm0, xmm0
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n9_match_lit_bx, @function
n9_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_match_lit_α:         mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .LTp1_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 92;                             jne   .LTp1_ω
                        add              r14d, 1;                             jmp   n10_match_alternate_α
n9_match_lit_β:         sub              r14d, 1;                             jmp   .LTp1_ω
                        .size            n9_match_lit_bx, .-n9_match_lit_bx
                        .type            n10_match_alternate_bx, @function
n10_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_match_alternate_α:  cmp              r14d, r15d;                          jge   .Lmatch_alternate_α_20_17
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        lea              rcx, [rip + .C3]
                        movzx            eax, byte ptr [rcx + rax]
                        test             eax, eax;                            je    .Lmatch_alternate_α_20_17
                        mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_20_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n16_match_any_α
.Lmatch_alternate_α_20_21:
                        lea              rax, [rip + .Lmatch_alternate_α_20_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n11_match_lit_α
.Lmatch_alternate_γ_10_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_20_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_10_as
.Lmatch_alternate_γ_10_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_20_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_10_as
.Lmatch_alternate_α_20_40:
                                                                              jmp   n16_match_any_β
.Lmatch_alternate_α_20_41:
                                                                              jmp   n15_match_any_β
.Lmatch_alternate_γ_10_as:
                                                                              jmp   .LTp1_γ
n10_match_alternate_β:  mov              rax, qword ptr [rbp + -64];          jmp   rax
.Lmatch_alternate_γ_10_af:
.Lmatch_alternate_ω_10_af:
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lmatch_alternate_α_20_19:
.Lmatch_alternate_α_20_17:
                                                                              jmp   n9_match_lit_β
                        .size            n10_match_alternate_bx, .-n10_match_alternate_bx
                        .type            n11_match_lit_bx, @function
n11_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_10_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 117;                            jne   .Lmatch_alternate_ω_10_af
                        add              r14d, 1;                             jmp   n12_match_any_α
n11_match_lit_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_10_af
                        .size            n11_match_lit_bx, .-n11_match_lit_bx
                        .type            n12_match_any_bx, @function
n12_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n11_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0;               je    n11_match_lit_β
                        add              r14d, 1;                             jmp   n13_match_any_α
n12_match_any_β:        sub              r14d, 1;                             jmp   n11_match_lit_β
                        .size            n12_match_any_bx, .-n12_match_any_bx
                        .type            n13_match_any_bx, @function
n13_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n12_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0;               je    n12_match_any_β
                        add              r14d, 1;                             jmp   n14_match_any_α
n13_match_any_β:        sub              r14d, 1;                             jmp   n12_match_any_β
                        .size            n13_match_any_bx, .-n13_match_any_bx
                        .type            n14_match_any_bx, @function
n14_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n13_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0;               je    n13_match_any_β
                        add              r14d, 1;                             jmp   n15_match_any_α
n14_match_any_β:        sub              r14d, 1;                             jmp   n13_match_any_β
                        .size            n14_match_any_bx, .-n14_match_any_bx
                        .type            n15_match_any_bx, @function
n15_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n14_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0;               je    n14_match_any_β
                        add              r14d, 1;                             jmp   .Lmatch_alternate_γ_10_s1
n15_match_any_β:        sub              r14d, 1;                             jmp   n14_match_any_β
                        .size            n15_match_any_bx, .-n15_match_any_bx
                        .type            n16_match_any_bx, @function
n16_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_10_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C5]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_alternate_ω_10_af
                        add              r14d, 1;                             jmp   .Lmatch_alternate_γ_10_s0
n16_match_any_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_10_af
                        .size            n16_match_any_bx, .-n16_match_any_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp1_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp1_β:
                                                                              jmp   n10_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
.LTp1_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + .LTp1_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.LTp1_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_.LTp1:
                        .quad            379303578970
                        .quad            17179869208
                        .quad            0
                        .quad            88
                        .quad            12
                        .quad            8804682956728
                        .quad            8813272891328
                        .quad            8813272891336
                        .quad            8804682956752
                        .quad            8804682956760
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcsites_.LTp1_1:      .quad            0
                        .quad            .Lgcmap_.LTp1
                        .quad            0
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp1:            .quad            .LTp1
                        .long            80, 1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.LTp2:
.LTp2_α_body:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], 8
                        mov              qword ptr [rsp + 24], rdx
                        mov              qword ptr [rsp + 0], 3
                        mov              qword ptr [rsp + 8], r12
                        .type            n33_match_break_bx, @function
n33_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_match_break_α:      sub              rsp, 16
                        lea              rdi, [rip + .C6]
                        movsxd           rcx, r14d
.Lmatch_break_α_35_0:   cmp              ecx, r15d;                           jl    .Lmatch_break_α_35_240
                        add              rsp, 16;                             jmp   .LTp2_ω
.Lmatch_break_α_35_240: movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               jnz   .Lmatch_break_α_35_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_35_0
.Lmatch_break_α_35_1:   mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx;                           jmp   .LTp2_γ
n33_match_break_β:      mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   .LTp2_ω
                        .size            n33_match_break_bx, .-n33_match_break_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp2_res:
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp2_β:
                                                                              jmp   n33_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
.LTp2_γ:
                        mov              rdx, qword ptr [rsp + 56]
                        mov              rcx, qword ptr [rsp + 48]
                        sub              rsp, 8
                        push             rdx
                        push             rcx
                        lea              rax, [rip + .LTp2_res]
                        push             rax;                                 jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.LTp2_ω:
                        mov              r12, qword ptr [rsp + 8]
                        add              rsp, 32
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp2:            .quad            .LTp2
                        .long            32, 1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.LTp3:
.LTp3_α_body:
                        cmp              r14d, r15d
                                                                              jge   .Lfg_none_2
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        lea              rcx, [rip + .C7]
                        movzx            eax, byte ptr [rcx + rax]
                        test             eax, eax
                                                                              jne   .Lfg_ok_2
.Lfg_fire_2:
.Lfg_none_2:
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
.Lfg_ok_2:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 88
                        lea              rax, [rip + .Lgcmap_.LTp3]
                        mov              qword ptr [rbp + -80], rax
                        mov              dword ptr [rbp + -88], 160
                        mov              dword ptr [rbp + -84], 88
                        xorps            xmm0, xmm0
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n36_match_lit_bx, @function
n36_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .LTp3_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34;                             jne   .LTp3_ω
                        add              r14d, 1;                             jmp   n37_match_defer_α
n36_match_lit_β:        sub              r14d, 1;                             jmp   .LTp3_ω
                        .size            n36_match_lit_bx, .-n36_match_lit_bx
                        .type            n37_match_defer_bx, @function
n37_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_44_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_44_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_44_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_44_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_44_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_44_18
.Lmatch_defer_α_44_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp3_15:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
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
                        test             rax, rax;                            je    .Lmatch_defer_α_44_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_44_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_14:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_44_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_44_16:
.Lmatch_defer_α_44_18:  test             rax, rax;                            jz    .Lmatch_defer_α_44_0
.Lmatch_defer_α_44_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_44_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_44_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_44_4:                                                         jmp   n38_match_arbno_α
.Lmatch_defer_α_44_5:   add              rsp, 16;                             jmp   n36_match_lit_β
.Lmatch_defer_α_44_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp3_13:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_44_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_44_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_12:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_44_2:   test             rax, rax;                            je    .Lmatch_defer_α_44_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_44_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_44_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_44_141
                        lea              rcx, [rip + .Lmatch_defer_α_44_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_44_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_44_42]
                        lea              rdx, [rip + .Lmatch_defer_α_44_43];  jmp   rax
.Lmatch_defer_α_44_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_44_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_44_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_44_44:
.Lgcsite_.LTp3_11:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_44_46
.Lmatch_defer_α_44_45:
.Lgcsite_.LTp3_10:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_44_47
.Lmatch_defer_α_44_42:
.Lgcsite_.LTp3_9:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_44_46
.Lmatch_defer_α_44_43:
.Lgcsite_.LTp3_8:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_44_47
.Lmatch_defer_α_44_141: lea              rcx, [rip + .Lmatch_defer_α_44_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_44_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_44_142]
                        lea              rdx, [rip + .Lmatch_defer_α_44_143]; jmp   rax
.Lmatch_defer_α_44_142:
.Lgcsite_.LTp3_7:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_44_46
.Lmatch_defer_α_44_143:
.Lgcsite_.LTp3_6:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_44_47
.Lmatch_defer_α_44_46:  mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp3_5:       mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_44_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_44_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_4:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_44_2
.Lmatch_defer_α_44_47:  mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp3_3:       mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_44_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_44_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_2:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_44_2
.Lmatch_defer_α_44_40:  add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_44_48
.Lmatch_defer_α_44_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp3_1:       add              rsp, 32
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
.Lgcsite_.LTp3_0:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_44_49:  test             eax, eax;                            jns   .Lmatch_defer_α_44_240
                        add              rsp, 16;                             jmp   n36_match_lit_β
.Lmatch_defer_α_44_240: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_44_6]
                        push             rcx
                        push             rax;                                 jmp   n38_match_arbno_α
.Lmatch_defer_α_44_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n36_match_lit_β
n37_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_44_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_44_12
                                                                              jmp   rax
.Lmatch_defer_β_44_12:                                                        jmp   qword ptr [rsp]
                        .size            n37_match_defer_bx, .-n37_match_defer_bx
                        .type            n38_match_arbno_bx, @function
n38_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_match_arbno_α:      sub              rsp, 48
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   n39_match_lit_α
n38_match_arbno_β:      mov              rax, qword ptr [rbp + -48]
                        mov              r12, qword ptr [rax + 8];            jmp   n40_match_defer_α
.Lmatch_arbno_γ_38_as:  mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n41_match_defer_β
                        sub              rsp, 48
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rbp + -56]
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   n39_match_lit_α
.Lmatch_arbno_γ_38_af:
.Lmatch_arbno_ω_38_af:  mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -48], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_46_3
                        mov              rax, qword ptr [rcx + 32]
                        mov              qword ptr [rbp + -64], rax
                        mov              rax, qword ptr [rcx + 40]
                        mov              qword ptr [rbp + -56], rax
                        lea              rsp, [rcx + 48];                     jmp   n41_match_defer_β
.Lmatch_arbno_β_46_3:   lea              rsp, [rcx + 48];                     jmp   n37_match_defer_β
                        .size            n38_match_arbno_bx, .-n38_match_arbno_bx
                        .type            n39_match_lit_bx, @function
n39_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n38_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34;                             jne   n38_match_arbno_β
                        add              r14d, 1;                             jmp   .LTp3_γ
n39_match_lit_β:        sub              r14d, 1;                             jmp   n38_match_arbno_β
                        .size            n39_match_lit_bx, .-n39_match_lit_bx
                        .type            n40_match_defer_bx, @function
n40_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_49_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_49_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_49_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_49_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_49_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_49_18
.Lmatch_defer_α_49_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp3_31:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
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
                        test             rax, rax;                            je    .Lmatch_defer_α_49_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_49_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_30:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_49_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_49_16:
.Lmatch_defer_α_49_18:  test             rax, rax;                            jz    .Lmatch_defer_α_49_0
.Lmatch_defer_α_49_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_49_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_49_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_49_4:                                                         jmp   n41_match_defer_α
.Lmatch_defer_α_49_5:   cmp              r14d, -2;                            je    n38_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n38_match_arbno_β
                                                                              jmp   .Lmatch_arbno_ω_38_af
.Lmatch_defer_α_49_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp3_29:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_49_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_49_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_28:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_49_2:   test             rax, rax;                            je    .Lmatch_defer_α_49_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_49_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_49_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_49_141
                        lea              rcx, [rip + .Lmatch_defer_α_49_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_49_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_49_42]
                        lea              rdx, [rip + .Lmatch_defer_α_49_43];  jmp   rax
.Lmatch_defer_α_49_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_49_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_49_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_49_44:
.Lgcsite_.LTp3_27:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_49_46
.Lmatch_defer_α_49_45:
.Lgcsite_.LTp3_26:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_49_47
.Lmatch_defer_α_49_42:
.Lgcsite_.LTp3_25:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_49_46
.Lmatch_defer_α_49_43:
.Lgcsite_.LTp3_24:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_49_47
.Lmatch_defer_α_49_141: lea              rcx, [rip + .Lmatch_defer_α_49_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_49_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_49_142]
                        lea              rdx, [rip + .Lmatch_defer_α_49_143]; jmp   rax
.Lmatch_defer_α_49_142:
.Lgcsite_.LTp3_23:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_49_46
.Lmatch_defer_α_49_143:
.Lgcsite_.LTp3_22:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_49_47
.Lmatch_defer_α_49_46:  mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp3_21:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_49_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_49_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_20:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_49_2
.Lmatch_defer_α_49_47:  mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp3_19:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_49_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_49_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_18:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_49_2
.Lmatch_defer_α_49_40:  add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_49_48
.Lmatch_defer_α_49_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp3_17:      add              rsp, 32
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
.Lgcsite_.LTp3_16:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_49_49:  cmp              r14d, -2;                            je    n38_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n38_match_arbno_β
                        test             eax, eax;                            js    .Lmatch_arbno_ω_38_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_49_6]
                        push             rcx
                        push             rax;                                 jmp   n41_match_defer_α
.Lmatch_defer_α_49_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_arbno_ω_38_af
n40_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_49_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_49_12
                                                                              jmp   rax
.Lmatch_defer_β_49_12:                                                        jmp   qword ptr [rsp]
                        .size            n40_match_defer_bx, .-n40_match_defer_bx
                        .type            n41_match_defer_bx, @function
n41_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_50_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_50_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_50_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_50_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_50_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_50_18
.Lmatch_defer_α_50_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp3_47:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
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
                        test             rax, rax;                            je    .Lmatch_defer_α_50_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_50_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_46:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_50_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_50_16:
.Lmatch_defer_α_50_18:  test             rax, rax;                            jz    .Lmatch_defer_α_50_0
.Lmatch_defer_α_50_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_50_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_50_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_50_4:                                                         jmp   .Lmatch_arbno_γ_38_as
.Lmatch_defer_α_50_5:   cmp              r14d, -2;                            je    n38_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n38_match_arbno_β
                                                                              jmp   n40_match_defer_β
.Lmatch_defer_α_50_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp3_45:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_50_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_50_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_44:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_50_2:   test             rax, rax;                            je    .Lmatch_defer_α_50_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_50_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_50_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_50_141
                        lea              rcx, [rip + .Lmatch_defer_α_50_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_50_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_50_42]
                        lea              rdx, [rip + .Lmatch_defer_α_50_43];  jmp   rax
.Lmatch_defer_α_50_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_50_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_50_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_50_44:
.Lgcsite_.LTp3_43:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_50_46
.Lmatch_defer_α_50_45:
.Lgcsite_.LTp3_42:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_50_47
.Lmatch_defer_α_50_42:
.Lgcsite_.LTp3_41:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_50_46
.Lmatch_defer_α_50_43:
.Lgcsite_.LTp3_40:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_50_47
.Lmatch_defer_α_50_141: lea              rcx, [rip + .Lmatch_defer_α_50_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_50_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_50_142]
                        lea              rdx, [rip + .Lmatch_defer_α_50_143]; jmp   rax
.Lmatch_defer_α_50_142:
.Lgcsite_.LTp3_39:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_50_46
.Lmatch_defer_α_50_143:
.Lgcsite_.LTp3_38:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_50_47
.Lmatch_defer_α_50_46:  mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp3_37:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_50_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_50_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_36:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_50_2
.Lmatch_defer_α_50_47:  mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp3_35:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_50_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_50_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_34:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_50_2
.Lmatch_defer_α_50_40:  add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_50_48
.Lmatch_defer_α_50_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp3_33:      add              rsp, 32
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
.Lgcsite_.LTp3_32:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_50_49:  cmp              r14d, -2;                            je    n38_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n38_match_arbno_β
                        test             eax, eax;                            js    n40_match_defer_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_50_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_arbno_γ_38_as
.Lmatch_defer_α_50_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n40_match_defer_β
n41_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_50_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_50_12
                                                                              jmp   rax
.Lmatch_defer_β_50_12:                                                        jmp   qword ptr [rsp]
                        .size            n41_match_defer_bx, .-n41_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp3_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp3_β:
                                                                              jmp   n39_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
.LTp3_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + .LTp3_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.LTp3_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_.LTp3:
                        .quad            379303578970
                        .quad            17179869208
                        .quad            0
                        .quad            88
                        .quad            10
                        .quad            8804682956728
                        .quad            17596481011648
                        .quad            17600775978960
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcsites_.LTp3_3:      .quad            48
                        .quad            .Lgcmap_.LTp3
                        .quad            0
                        .quad            .Lgcsite_.LTp3_0
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_1
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_7
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_8
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_9
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_10
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_11
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_12
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_13
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_14
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_15
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_16
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_17
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_18
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_19
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_20
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_21
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_22
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_23
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_24
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_25
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_26
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_27
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_28
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_29
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_30
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_31
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_32
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_33
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_34
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_35
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_36
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_37
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_38
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_39
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_40
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_41
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_42
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_43
                        .quad            196610
                        .quad            .Lgcsite_.LTp3_44
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_45
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_46
                        .quad            196609
                        .quad            .Lgcsite_.LTp3_47
                        .quad            196609
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp3:            .quad            .LTp3
                        .long            208, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.LTp4:
.LTp4_α_body:
                        cmp              r14d, r15d
                                                                              jge   .Lfg_none_3
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        lea              rcx, [rip + .C8]
                        movzx            eax, byte ptr [rcx + rax]
                        test             eax, eax
                                                                              jne   .Lfg_ok_3
.Lfg_fire_3:
.Lfg_none_3:
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
.Lfg_ok_3:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 344
                        lea              rax, [rip + .Lgcmap_.LTp4]
                        mov              qword ptr [rbp + -336], rax
                        mov              dword ptr [rbp + -344], 160
                        mov              dword ptr [rbp + -340], 344
                        xorps            xmm0, xmm0
                        movups           xmmword ptr [rbp + -328], xmm0
                        movups           xmmword ptr [rbp + -312], xmm0
                        movups           xmmword ptr [rbp + -296], xmm0
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
                        .type            n51_match_alternate_bx, @function
n51_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_match_alternate_α:  mov              dword ptr [rbp + -64], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_72_21]
                        mov              qword ptr [rbp + -48], rax;          jmp   n70_match_lit_α
.Lmatch_alternate_α_72_21:
                        lea              rax, [rip + .Lmatch_alternate_α_72_19]
                        mov              qword ptr [rbp + -48], rax;          jmp   n69_match_lit_α
.Lmatch_alternate_γ_51_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_72_40]
                        mov              qword ptr [rbp + -56], rax;          jmp   .Lmatch_alternate_γ_51_as
.Lmatch_alternate_γ_51_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_72_41]
                        mov              qword ptr [rbp + -56], rax;          jmp   .Lmatch_alternate_γ_51_as
.Lmatch_alternate_α_72_40:
                                                                              jmp   n70_match_lit_β
.Lmatch_alternate_α_72_41:
                                                                              jmp   n69_match_lit_β
.Lmatch_alternate_γ_51_as:
                                                                              jmp   n52_match_alternate_α
n51_match_alternate_β:  mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lmatch_alternate_γ_51_af:
.Lmatch_alternate_ω_51_af:
                        mov              r14d, dword ptr [rbp + -64]
                        mov              rax, qword ptr [rbp + -48];          jmp   rax
.Lmatch_alternate_α_72_19:
                                                                              jmp   .LTp4_ω
                        .size            n51_match_alternate_bx, .-n51_match_alternate_bx
                        .type            n52_match_alternate_bx, @function
n52_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_match_alternate_α:  cmp              r14d, r15d;                          jge   .Lmatch_alternate_α_74_17
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        lea              rcx, [rip + .C9]
                        movzx            eax, byte ptr [rcx + rax]
                        test             eax, eax;                            je    .Lmatch_alternate_α_74_17
                        mov              dword ptr [rbp + -96], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_74_21]
                        mov              qword ptr [rbp + -80], rax;          jmp   n68_match_lit_α
.Lmatch_alternate_α_74_21:
                        lea              rax, [rip + .Lmatch_alternate_α_74_19]
                        mov              qword ptr [rbp + -80], rax;          jmp   n64_match_any_α
.Lmatch_alternate_γ_52_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_74_40]
                        mov              qword ptr [rbp + -88], rax;          jmp   .Lmatch_alternate_γ_52_as
.Lmatch_alternate_γ_52_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_74_41]
                        mov              qword ptr [rbp + -88], rax;          jmp   .Lmatch_alternate_γ_52_as
.Lmatch_alternate_α_74_40:
                                                                              jmp   n68_match_lit_β
.Lmatch_alternate_α_74_41:
                                                                              jmp   n65_match_alternate_β
.Lmatch_alternate_γ_52_as:
                                                                              jmp   n53_match_alternate_α
n52_match_alternate_β:  mov              rax, qword ptr [rbp + -88];          jmp   rax
.Lmatch_alternate_γ_52_af:
.Lmatch_alternate_ω_52_af:
                        mov              r14d, dword ptr [rbp + -96]
                        mov              rax, qword ptr [rbp + -80];          jmp   rax
.Lmatch_alternate_α_74_19:
.Lmatch_alternate_α_74_17:
                                                                              jmp   n51_match_alternate_β
                        .size            n52_match_alternate_bx, .-n52_match_alternate_bx
                        .type            n53_match_alternate_bx, @function
n53_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_match_alternate_α:  mov              dword ptr [rbp + -192], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_76_21]
                        mov              qword ptr [rbp + -176], rax;         jmp   n62_match_lit_α
.Lmatch_alternate_α_76_21:
                        lea              rax, [rip + .Lmatch_alternate_α_76_19]
                        mov              qword ptr [rbp + -176], rax;         jmp   n61_match_lit_α
.Lmatch_alternate_γ_53_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_76_40]
                        mov              qword ptr [rbp + -184], rax;         jmp   .Lmatch_alternate_γ_53_as
.Lmatch_alternate_γ_53_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_76_41]
                        mov              qword ptr [rbp + -184], rax;         jmp   .Lmatch_alternate_γ_53_as
.Lmatch_alternate_α_76_40:
                                                                              jmp   n63_match_span_β
.Lmatch_alternate_α_76_41:
                                                                              jmp   n61_match_lit_β
.Lmatch_alternate_γ_53_as:
                                                                              jmp   n54_match_alternate_α
n53_match_alternate_β:  mov              rax, qword ptr [rbp + -184];         jmp   rax
.Lmatch_alternate_γ_53_af:
.Lmatch_alternate_ω_53_af:
                        mov              r14d, dword ptr [rbp + -192]
                        mov              rax, qword ptr [rbp + -176];         jmp   rax
.Lmatch_alternate_α_76_19:
                                                                              jmp   n52_match_alternate_β
                        .size            n53_match_alternate_bx, .-n53_match_alternate_bx
                        .type            n54_match_alternate_bx, @function
n54_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_match_alternate_α:  mov              dword ptr [rbp + -256], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_78_21]
                        mov              qword ptr [rbp + -240], rax;         jmp   n56_match_any_α
.Lmatch_alternate_α_78_21:
                        lea              rax, [rip + .Lmatch_alternate_α_78_19]
                        mov              qword ptr [rbp + -240], rax;         jmp   n55_match_lit_α
.Lmatch_alternate_γ_54_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_78_40]
                        mov              qword ptr [rbp + -248], rax;         jmp   .Lmatch_alternate_γ_54_as
.Lmatch_alternate_γ_54_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_78_41]
                        mov              qword ptr [rbp + -248], rax;         jmp   .Lmatch_alternate_γ_54_as
.Lmatch_alternate_α_78_40:
                                                                              jmp   n58_match_span_β
.Lmatch_alternate_α_78_41:
                                                                              jmp   n55_match_lit_β
.Lmatch_alternate_γ_54_as:
                                                                              jmp   .LTp4_γ
n54_match_alternate_β:  mov              rax, qword ptr [rbp + -248];         jmp   rax
.Lmatch_alternate_γ_54_af:
.Lmatch_alternate_ω_54_af:
                        mov              r14d, dword ptr [rbp + -256]
                        mov              rax, qword ptr [rbp + -240];         jmp   rax
.Lmatch_alternate_α_78_19:
                                                                              jmp   n53_match_alternate_β
                        .size            n54_match_alternate_bx, .-n54_match_alternate_bx
                        .type            n55_match_lit_bx, @function
n55_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_match_lit_α:                                                              jmp   .Lmatch_alternate_γ_54_s1
n55_match_lit_β:                                                              jmp   .Lmatch_alternate_ω_54_af
                        .size            n55_match_lit_bx, .-n55_match_lit_bx
                        .type            n56_match_any_bx, @function
n56_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_54_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 101;                            je    .Lmatch_any_α_82_0
                        cmp              esi, 69;                             je    .Lmatch_any_α_82_0
                                                                              jmp   .Lmatch_alternate_ω_54_af
.Lmatch_any_α_82_0:     add              r14d, 1;                             jmp   n57_match_alternate_α
n56_match_any_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_54_af
                        .size            n56_match_any_bx, .-n56_match_any_bx
                        .type            n57_match_alternate_bx, @function
n57_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_match_alternate_α:  mov              dword ptr [rbp + -288], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_84_21]
                        mov              qword ptr [rbp + -272], rax;         jmp   n60_match_any_α
.Lmatch_alternate_α_84_21:
                        lea              rax, [rip + .Lmatch_alternate_α_84_19]
                        mov              qword ptr [rbp + -272], rax;         jmp   n59_match_lit_α
.Lmatch_alternate_γ_57_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_84_40]
                        mov              qword ptr [rbp + -280], rax;         jmp   .Lmatch_alternate_γ_57_as
.Lmatch_alternate_γ_57_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_84_41]
                        mov              qword ptr [rbp + -280], rax;         jmp   .Lmatch_alternate_γ_57_as
.Lmatch_alternate_α_84_40:
                                                                              jmp   n60_match_any_β
.Lmatch_alternate_α_84_41:
                                                                              jmp   n59_match_lit_β
.Lmatch_alternate_γ_57_as:
                                                                              jmp   n58_match_span_α
n57_match_alternate_β:  mov              rax, qword ptr [rbp + -280];         jmp   rax
.Lmatch_alternate_γ_57_af:
.Lmatch_alternate_ω_57_af:
                        mov              r14d, dword ptr [rbp + -288]
                        mov              rax, qword ptr [rbp + -272];         jmp   rax
.Lmatch_alternate_α_84_19:
                                                                              jmp   n56_match_any_β
                        .size            n57_match_alternate_bx, .-n57_match_alternate_bx
                        .type            n58_match_span_bx, @function
n58_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_match_span_α:       lea              rdi, [rip + .C9]
                        movsxd           rcx, r14d
.Lmatch_span_α_86_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_86_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_86_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_86_0
.Lmatch_span_α_86_1:    cmp              ecx, r14d;                           jle   n57_match_alternate_β
                        mov              dword ptr [rbp + -316], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_alternate_γ_54_s0
n58_match_span_β:       mov              r14d, dword ptr [rbp + -316];        jmp   n57_match_alternate_β
                        .size            n58_match_span_bx, .-n58_match_span_bx
                        .type            n59_match_lit_bx, @function
n59_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_match_lit_α:                                                              jmp   .Lmatch_alternate_γ_57_s1
n59_match_lit_β:                                                              jmp   .Lmatch_alternate_ω_57_af
                        .size            n59_match_lit_bx, .-n59_match_lit_bx
                        .type            n60_match_any_bx, @function
n60_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_57_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43;                             je    .Lmatch_any_α_90_0
                        cmp              esi, 45;                             je    .Lmatch_any_α_90_0
                                                                              jmp   .Lmatch_alternate_ω_57_af
.Lmatch_any_α_90_0:     add              r14d, 1;                             jmp   .Lmatch_alternate_γ_57_s0
n60_match_any_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_57_af
                        .size            n60_match_any_bx, .-n60_match_any_bx
                        .type            n61_match_lit_bx, @function
n61_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_match_lit_α:                                                              jmp   .Lmatch_alternate_γ_53_s1
n61_match_lit_β:                                                              jmp   .Lmatch_alternate_ω_53_af
                        .size            n61_match_lit_bx, .-n61_match_lit_bx
                        .type            n62_match_lit_bx, @function
n62_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_53_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 46;                             jne   .Lmatch_alternate_ω_53_af
                        add              r14d, 1;                             jmp   n63_match_span_α
n62_match_lit_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_53_af
                        .size            n62_match_lit_bx, .-n62_match_lit_bx
                        .type            n63_match_span_bx, @function
n63_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_match_span_α:       lea              rdi, [rip + .C9]
                        movsxd           rcx, r14d
.Lmatch_span_α_96_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_96_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_96_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_96_0
.Lmatch_span_α_96_1:    cmp              ecx, r14d;                           jle   n62_match_lit_β
                        mov              dword ptr [rbp + -220], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_alternate_γ_53_s0
n63_match_span_β:       mov              r14d, dword ptr [rbp + -220];        jmp   n62_match_lit_β
                        .size            n63_match_span_bx, .-n63_match_span_bx
                        .type            n64_match_any_bx, @function
n64_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_52_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C10]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_alternate_ω_52_af
                        add              r14d, 1;                             jmp   n65_match_alternate_α
n64_match_any_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_52_af
                        .size            n64_match_any_bx, .-n64_match_any_bx
                        .type            n65_match_alternate_bx, @function
n65_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_match_alternate_α:  mov              dword ptr [rbp + -128], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_100_21]
                        mov              qword ptr [rbp + -112], rax;         jmp   n67_match_span_α
.Lmatch_alternate_α_100_21:
                        lea              rax, [rip + .Lmatch_alternate_α_100_19]
                        mov              qword ptr [rbp + -112], rax;         jmp   n66_match_lit_α
.Lmatch_alternate_γ_65_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_100_40]
                        mov              qword ptr [rbp + -120], rax;         jmp   .Lmatch_alternate_γ_65_as
.Lmatch_alternate_γ_65_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_100_41]
                        mov              qword ptr [rbp + -120], rax;         jmp   .Lmatch_alternate_γ_65_as
.Lmatch_alternate_α_100_40:
                                                                              jmp   n67_match_span_β
.Lmatch_alternate_α_100_41:
                                                                              jmp   n66_match_lit_β
.Lmatch_alternate_γ_65_as:
                                                                              jmp   .Lmatch_alternate_γ_52_s1
n65_match_alternate_β:  mov              rax, qword ptr [rbp + -120];         jmp   rax
.Lmatch_alternate_γ_65_af:
.Lmatch_alternate_ω_65_af:
                        mov              r14d, dword ptr [rbp + -128]
                        mov              rax, qword ptr [rbp + -112];         jmp   rax
.Lmatch_alternate_α_100_19:
                                                                              jmp   n64_match_any_β
                        .size            n65_match_alternate_bx, .-n65_match_alternate_bx
                        .type            n66_match_lit_bx, @function
n66_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_match_lit_α:                                                              jmp   .Lmatch_alternate_γ_65_s1
n66_match_lit_β:                                                              jmp   .Lmatch_alternate_ω_65_af
                        .size            n66_match_lit_bx, .-n66_match_lit_bx
                        .type            n67_match_span_bx, @function
n67_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_match_span_α:       lea              rdi, [rip + .C9]
                        movsxd           rcx, r14d
.Lmatch_span_α_104_0:   cmp              ecx, r15d;                           jge   .Lmatch_span_α_104_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_104_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_104_0
.Lmatch_span_α_104_1:   cmp              ecx, r14d;                           jle   .Lmatch_alternate_ω_65_af
                        mov              dword ptr [rbp + -156], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_alternate_γ_65_s0
n67_match_span_β:       mov              r14d, dword ptr [rbp + -156];        jmp   .Lmatch_alternate_ω_65_af
                        .size            n67_match_span_bx, .-n67_match_span_bx
                        .type            n68_match_lit_bx, @function
n68_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_52_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 48;                             jne   .Lmatch_alternate_ω_52_af
                        add              r14d, 1;                             jmp   .Lmatch_alternate_γ_52_s0
n68_match_lit_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_52_af
                        .size            n68_match_lit_bx, .-n68_match_lit_bx
                        .type            n69_match_lit_bx, @function
n69_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_match_lit_α:                                                              jmp   .Lmatch_alternate_γ_51_s1
n69_match_lit_β:                                                              jmp   .Lmatch_alternate_ω_51_af
                        .size            n69_match_lit_bx, .-n69_match_lit_bx
                        .type            n70_match_lit_bx, @function
n70_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_51_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   .Lmatch_alternate_ω_51_af
                        add              r14d, 1;                             jmp   .Lmatch_alternate_γ_51_s0
n70_match_lit_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_51_af
                        .size            n70_match_lit_bx, .-n70_match_lit_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp4_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp4_β:
                                                                              jmp   n54_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
.LTp4_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + .LTp4_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.LTp4_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_.LTp4:
                        .quad            1478815206746
                        .quad            17179869208
                        .quad            0
                        .quad            344
                        .quad            41
                        .quad            8804682956472
                        .quad            17600775978688
                        .quad            8808977923792
                        .quad            8804682956504
                        .quad            8804682956512
                        .quad            8813272891112
                        .quad            8813272891120
                        .quad            8804682956536
                        .quad            8804682956544
                        .quad            8813272891144
                        .quad            8813272891152
                        .quad            8804682956568
                        .quad            17600775978784
                        .quad            8808977923888
                        .quad            8804682956600
                        .quad            8804682956608
                        .quad            8813272891208
                        .quad            8813272891216
                        .quad            8804682956632
                        .quad            17600775978848
                        .quad            8808977923952
                        .quad            8804682956664
                        .quad            8804682956672
                        .quad            8813272891272
                        .quad            8813272891280
                        .quad            8804682956696
                        .quad            8804682956704
                        .quad            8813272891304
                        .quad            8813272891312
                        .quad            8804682956728
                        .quad            8804682956736
                        .quad            8813272891336
                        .quad            8813272891344
                        .quad            8804682956760
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcsites_.LTp4_4:      .quad            0
                        .quad            .Lgcmap_.LTp4
                        .quad            0
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp4:            .quad            .LTp4
                        .long            288, 1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.LTp5:
.LTp5_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 56
                        lea              rax, [rip + .Lgcmap_.LTp5]
                        mov              qword ptr [rbp + -48], rax
                        mov              dword ptr [rbp + -56], 160
                        mov              dword ptr [rbp + -52], 56
                        xorps            xmm0, xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n111_match_defer_bx, @function
n111_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_match_defer_α:     sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_116_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_116_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_116_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_116_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_116_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_116_18
.Lmatch_defer_α_116_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp5_15:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
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
                        test             rax, rax;                            je    .Lmatch_defer_α_116_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_116_54: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_14:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_116_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_116_16:
.Lmatch_defer_α_116_18: test             rax, rax;                            jz    .Lmatch_defer_α_116_0
.Lmatch_defer_α_116_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_116_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_116_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_116_4:                                                        jmp   n112_match_defer_α
.Lmatch_defer_α_116_5:  add              rsp, 16;                             jmp   .LTp5_ω
.Lmatch_defer_α_116_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp5_13:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_116_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_116_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_12:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_116_2:  test             rax, rax;                            je    .Lmatch_defer_α_116_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_116_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_116_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_116_141
                        lea              rcx, [rip + .Lmatch_defer_α_116_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_116_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_116_42]
                        lea              rdx, [rip + .Lmatch_defer_α_116_43]; jmp   rax
.Lmatch_defer_α_116_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_116_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_116_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_116_44:
.Lgcsite_.LTp5_11:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_116_46
.Lmatch_defer_α_116_45:
.Lgcsite_.LTp5_10:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_116_47
.Lmatch_defer_α_116_42:
.Lgcsite_.LTp5_9:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_116_46
.Lmatch_defer_α_116_43:
.Lgcsite_.LTp5_8:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_116_47
.Lmatch_defer_α_116_141:
                        lea              rcx, [rip + .Lmatch_defer_α_116_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_116_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_116_142]
                        lea              rdx, [rip + .Lmatch_defer_α_116_143]
                                                                              jmp   rax
.Lmatch_defer_α_116_142:
.Lgcsite_.LTp5_7:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_116_46
.Lmatch_defer_α_116_143:
.Lgcsite_.LTp5_6:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_116_47
.Lmatch_defer_α_116_46: mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp5_5:       mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_116_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_116_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_4:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_116_2
.Lmatch_defer_α_116_47: mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp5_3:       mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_116_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_116_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_2:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_116_2
.Lmatch_defer_α_116_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_116_48
.Lmatch_defer_α_116_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp5_1:       add              rsp, 32
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
.Lgcsite_.LTp5_0:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_116_49: test             eax, eax;                            jns   .Lmatch_defer_α_116_240
                        add              rsp, 16;                             jmp   .LTp5_ω
.Lmatch_defer_α_116_240:
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_116_6]
                        push             rcx
                        push             rax;                                 jmp   n112_match_defer_α
.Lmatch_defer_α_116_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .LTp5_ω
n111_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_116_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_116_12
                                                                              jmp   rax
.Lmatch_defer_β_116_12:                                                       jmp   qword ptr [rsp]
                        .size            n111_match_defer_bx, .-n111_match_defer_bx
                        .type            n112_match_defer_bx, @function
n112_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_match_defer_α:     sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_117_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_117_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_117_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_117_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_117_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_117_18
.Lmatch_defer_α_117_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp5_31:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
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
                        test             rax, rax;                            je    .Lmatch_defer_α_117_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_117_54: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_30:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_117_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_117_16:
.Lmatch_defer_α_117_18: test             rax, rax;                            jz    .Lmatch_defer_α_117_0
.Lmatch_defer_α_117_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_117_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_117_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_117_4:                                                        jmp   n113_match_defer_α
.Lmatch_defer_α_117_5:  add              rsp, 16;                             jmp   n111_match_defer_β
.Lmatch_defer_α_117_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp5_29:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_117_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_117_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_28:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_117_2:  test             rax, rax;                            je    .Lmatch_defer_α_117_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_117_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_117_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_117_141
                        lea              rcx, [rip + .Lmatch_defer_α_117_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_117_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_117_42]
                        lea              rdx, [rip + .Lmatch_defer_α_117_43]; jmp   rax
.Lmatch_defer_α_117_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_117_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_117_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_117_44:
.Lgcsite_.LTp5_27:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_117_46
.Lmatch_defer_α_117_45:
.Lgcsite_.LTp5_26:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_117_47
.Lmatch_defer_α_117_42:
.Lgcsite_.LTp5_25:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_117_46
.Lmatch_defer_α_117_43:
.Lgcsite_.LTp5_24:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_117_47
.Lmatch_defer_α_117_141:
                        lea              rcx, [rip + .Lmatch_defer_α_117_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_117_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_117_142]
                        lea              rdx, [rip + .Lmatch_defer_α_117_143]
                                                                              jmp   rax
.Lmatch_defer_α_117_142:
.Lgcsite_.LTp5_23:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_117_46
.Lmatch_defer_α_117_143:
.Lgcsite_.LTp5_22:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_117_47
.Lmatch_defer_α_117_46: mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp5_21:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_117_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_117_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_20:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_117_2
.Lmatch_defer_α_117_47: mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp5_19:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_117_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_117_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_18:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_117_2
.Lmatch_defer_α_117_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_117_48
.Lmatch_defer_α_117_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp5_17:      add              rsp, 32
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
.Lgcsite_.LTp5_16:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_117_49: test             eax, eax;                            jns   .Lmatch_defer_α_117_240
                        add              rsp, 16;                             jmp   n111_match_defer_β
.Lmatch_defer_α_117_240:
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_117_6]
                        push             rcx
                        push             rax;                                 jmp   n113_match_defer_α
.Lmatch_defer_α_117_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n111_match_defer_β
n112_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_117_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_117_12
                                                                              jmp   rax
.Lmatch_defer_β_117_12:                                                       jmp   qword ptr [rsp]
                        .size            n112_match_defer_bx, .-n112_match_defer_bx
                        .type            n113_match_defer_bx, @function
n113_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_match_defer_α:     sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_118_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_118_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_118_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_118_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_118_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_118_18
.Lmatch_defer_α_118_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp5_47:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
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
                        test             rax, rax;                            je    .Lmatch_defer_α_118_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_118_54: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_46:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_118_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_118_16:
.Lmatch_defer_α_118_18: test             rax, rax;                            jz    .Lmatch_defer_α_118_0
.Lmatch_defer_α_118_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_118_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_118_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_118_4:                                                        jmp   n114_match_lit_α
.Lmatch_defer_α_118_5:  add              rsp, 16;                             jmp   n112_match_defer_β
.Lmatch_defer_α_118_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp5_45:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_118_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_118_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_44:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_118_2:  test             rax, rax;                            je    .Lmatch_defer_α_118_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_118_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_118_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_118_141
                        lea              rcx, [rip + .Lmatch_defer_α_118_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_118_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_118_42]
                        lea              rdx, [rip + .Lmatch_defer_α_118_43]; jmp   rax
.Lmatch_defer_α_118_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_118_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_118_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_118_44:
.Lgcsite_.LTp5_43:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_118_46
.Lmatch_defer_α_118_45:
.Lgcsite_.LTp5_42:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_118_47
.Lmatch_defer_α_118_42:
.Lgcsite_.LTp5_41:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_118_46
.Lmatch_defer_α_118_43:
.Lgcsite_.LTp5_40:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_118_47
.Lmatch_defer_α_118_141:
                        lea              rcx, [rip + .Lmatch_defer_α_118_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_118_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_118_142]
                        lea              rdx, [rip + .Lmatch_defer_α_118_143]
                                                                              jmp   rax
.Lmatch_defer_α_118_142:
.Lgcsite_.LTp5_39:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_118_46
.Lmatch_defer_α_118_143:
.Lgcsite_.LTp5_38:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_118_47
.Lmatch_defer_α_118_46: mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp5_37:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_118_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_118_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_36:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_118_2
.Lmatch_defer_α_118_47: mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp5_35:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_118_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_118_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_34:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_118_2
.Lmatch_defer_α_118_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_118_48
.Lmatch_defer_α_118_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp5_33:      add              rsp, 32
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
.Lgcsite_.LTp5_32:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_118_49: test             eax, eax;                            jns   .Lmatch_defer_α_118_240
                        add              rsp, 16;                             jmp   n112_match_defer_β
.Lmatch_defer_α_118_240:
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_118_6]
                        push             rcx
                        push             rax;                                 jmp   n114_match_lit_α
.Lmatch_defer_α_118_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n112_match_defer_β
n113_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_118_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_118_12
                                                                              jmp   rax
.Lmatch_defer_β_118_12:                                                       jmp   qword ptr [rsp]
                        .size            n113_match_defer_bx, .-n113_match_defer_bx
                        .type            n114_match_lit_bx, @function
n114_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n113_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 58;                             jne   n113_match_defer_β
                        add              r14d, 1;                             jmp   n115_match_defer_α
n114_match_lit_β:       sub              r14d, 1;                             jmp   n113_match_defer_β
                        .size            n114_match_lit_bx, .-n114_match_lit_bx
                        .type            n115_match_defer_bx, @function
n115_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # jelement
                        mov              rdx, qword ptr [r9 + 152]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_121_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_121_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp5_63:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_match_defer.cpp:151
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp5_62:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdx, qword ptr [r9 + 152];           jmp   .Lmatch_defer_α_121_10
.Lmatch_defer_α_121_9:  xor              eax, eax
.Lmatch_defer_α_121_10: test             rax, rax;                            jz    .Lmatch_defer_α_121_0
.Lmatch_defer_α_121_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_121_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_121_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_121_4:                                                        jmp   .LTp5_γ
.Lmatch_defer_α_121_5:  add              rsp, 16;                             jmp   n114_match_lit_β
.Lmatch_defer_α_121_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        lea              rdi, [r9 + 144]                      # jelement
                        xor              esi, esi
                        mov              rdx, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open_cell@PLT
.Lgcsite_.LTp5_61:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_121_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_121_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_60:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_121_2:  test             rax, rax;                            je    .Lmatch_defer_α_121_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_121_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_121_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_121_141
                        lea              rcx, [rip + .Lmatch_defer_α_121_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_121_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_121_42]
                        lea              rdx, [rip + .Lmatch_defer_α_121_43]; jmp   rax
.Lmatch_defer_α_121_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_121_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_121_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_121_44:
.Lgcsite_.LTp5_59:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_121_46
.Lmatch_defer_α_121_45:
.Lgcsite_.LTp5_58:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_121_47
.Lmatch_defer_α_121_42:
.Lgcsite_.LTp5_57:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_121_46
.Lmatch_defer_α_121_43:
.Lgcsite_.LTp5_56:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_121_47
.Lmatch_defer_α_121_141:
                        lea              rcx, [rip + .Lmatch_defer_α_121_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_121_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_121_142]
                        lea              rdx, [rip + .Lmatch_defer_α_121_143]
                                                                              jmp   rax
.Lmatch_defer_α_121_142:
.Lgcsite_.LTp5_55:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_121_46
.Lmatch_defer_α_121_143:
.Lgcsite_.LTp5_54:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_121_47
.Lmatch_defer_α_121_46: mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp5_53:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_121_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_121_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_52:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_121_2
.Lmatch_defer_α_121_47: mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp5_51:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_121_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_121_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_50:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_121_2
.Lmatch_defer_α_121_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_121_48
.Lmatch_defer_α_121_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp5_49:      add              rsp, 32
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
.Lgcsite_.LTp5_48:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_121_49: test             eax, eax;                            jns   .Lmatch_defer_α_121_240
                        add              rsp, 16;                             jmp   n114_match_lit_β
.Lmatch_defer_α_121_240:
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_121_6]
                        push             rcx
                        push             rax;                                 jmp   .LTp5_γ
.Lmatch_defer_α_121_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n114_match_lit_β
n115_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_121_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_121_12
                                                                              jmp   rax
.Lmatch_defer_β_121_12:                                                       jmp   qword ptr [rsp]
                        .size            n115_match_defer_bx, .-n115_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp5_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp5_β:
                                                                              jmp   n115_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
.LTp5_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + .LTp5_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.LTp5_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_.LTp5:
                        .quad            241864625498
                        .quad            17179869208
                        .quad            0
                        .quad            56
                        .quad            8
                        .quad            8804682956760
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcsites_.LTp5_5:      .quad            64
                        .quad            .Lgcmap_.LTp5
                        .quad            0
                        .quad            .Lgcsite_.LTp5_0
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_1
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_7
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_8
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_9
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_10
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_11
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_12
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_13
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_14
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_15
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_16
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_17
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_18
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_19
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_20
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_21
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_22
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_23
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_24
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_25
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_26
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_27
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_28
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_29
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_30
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_31
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_32
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_33
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_34
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_35
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_36
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_37
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_38
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_39
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_40
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_41
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_42
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_43
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_44
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_45
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_46
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_47
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_48
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_49
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_50
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_51
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_52
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_53
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_54
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_55
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_56
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_57
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_58
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_59
                        .quad            196610
                        .quad            .Lgcsite_.LTp5_60
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_61
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_62
                        .quad            196609
                        .quad            .Lgcsite_.LTp5_63
                        .quad            196609
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp5:            .quad            .LTp5
                        .long            128, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.LTp6:
.LTp6_α_body:
                        cmp              r14d, r15d
                                                                              jge   .Lfg_none_4
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        lea              rcx, [rip + .C11]
                        movzx            eax, byte ptr [rcx + rax]
                        test             eax, eax
                                                                              jne   .Lfg_ok_4
.Lfg_fire_4:
.Lfg_none_4:
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
.Lfg_ok_4:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 152
                        lea              rax, [rip + .Lgcmap_.LTp6]
                        mov              qword ptr [rbp + -144], rax
                        mov              dword ptr [rbp + -152], 160
                        mov              dword ptr [rbp + -148], 152
                        xorps            xmm0, xmm0
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
                        .type            n122_match_lit_bx, @function
n122_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .LTp6_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 123;                            jne   .LTp6_ω
                        add              r14d, 1;                             jmp   n123_match_alternate_α
n122_match_lit_β:       sub              r14d, 1;                             jmp   .LTp6_ω
                        .size            n122_match_lit_bx, .-n122_match_lit_bx
                        .type            n123_match_alternate_bx, @function
n123_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_match_alternate_α: mov              dword ptr [rbp + -136], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_134_21]
                        mov              qword ptr [rbp + -120], rax;         jmp   n126_match_defer_α
.Lmatch_alternate_α_134_21:
                        lea              rax, [rip + .Lmatch_alternate_α_134_19]
                        mov              qword ptr [rbp + -120], rax;         jmp   n125_match_defer_α
.Lmatch_alternate_γ_123_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_134_40]
                        mov              qword ptr [rbp + -128], rax;         jmp   .Lmatch_alternate_γ_123_as
.Lmatch_alternate_γ_123_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_134_41]
                        mov              qword ptr [rbp + -128], rax;         jmp   .Lmatch_alternate_γ_123_as
.Lmatch_alternate_α_134_40:
                                                                              jmp   n127_match_arbno_β
.Lmatch_alternate_α_134_41:
                                                                              jmp   n125_match_defer_β
.Lmatch_alternate_γ_123_as:
                                                                              jmp   n124_match_lit_α
n123_match_alternate_β: mov              rax, qword ptr [rbp + -128];         jmp   rax
.Lmatch_alternate_γ_123_af:
.Lmatch_alternate_ω_123_af:
                        mov              r14d, dword ptr [rbp + -136]
                        mov              rax, qword ptr [rbp + -120];         jmp   rax
.Lmatch_alternate_α_134_19:
                                                                              jmp   n122_match_lit_β
                        .size            n123_match_alternate_bx, .-n123_match_alternate_bx
                        .type            n124_match_lit_bx, @function
n124_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n123_match_alternate_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 125;                            jne   n123_match_alternate_β
                        add              r14d, 1;                             jmp   .LTp6_γ
n124_match_lit_β:       sub              r14d, 1;                             jmp   n123_match_alternate_β
                        .size            n124_match_lit_bx, .-n124_match_lit_bx
                        .type            n125_match_defer_bx, @function
n125_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_137_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_137_17
                        cmp              qword ptr [rdi + 40], 4;             jl    .Lmatch_defer_α_137_17
                        mov              rax, qword ptr [rsi + 48]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_137_17
                        mov              rdx, qword ptr [rsi + 56]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_137_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_137_18
.Lmatch_defer_α_137_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp6_15:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
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
                        test             rax, rax;                            je    .Lmatch_defer_α_137_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_137_54: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_14:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_137_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_137_16:
.Lmatch_defer_α_137_18: test             rax, rax;                            jz    .Lmatch_defer_α_137_0
.Lmatch_defer_α_137_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_137_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_137_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_137_4:                                                        jmp   .Lmatch_alternate_γ_123_s1
.Lmatch_defer_α_137_5:                                                        jmp   .Lmatch_alternate_ω_123_af
.Lmatch_defer_α_137_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp6_13:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_137_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_137_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_12:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_137_2:  test             rax, rax;                            je    .Lmatch_defer_α_137_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_137_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_137_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_137_141
                        lea              rcx, [rip + .Lmatch_defer_α_137_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_137_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_137_42]
                        lea              rdx, [rip + .Lmatch_defer_α_137_43]; jmp   rax
.Lmatch_defer_α_137_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_137_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_137_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_137_44:
.Lgcsite_.LTp6_11:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_137_46
.Lmatch_defer_α_137_45:
.Lgcsite_.LTp6_10:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_137_47
.Lmatch_defer_α_137_42:
.Lgcsite_.LTp6_9:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_137_46
.Lmatch_defer_α_137_43:
.Lgcsite_.LTp6_8:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_137_47
.Lmatch_defer_α_137_141:
                        lea              rcx, [rip + .Lmatch_defer_α_137_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_137_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_137_142]
                        lea              rdx, [rip + .Lmatch_defer_α_137_143]
                                                                              jmp   rax
.Lmatch_defer_α_137_142:
.Lgcsite_.LTp6_7:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_137_46
.Lmatch_defer_α_137_143:
.Lgcsite_.LTp6_6:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_137_47
.Lmatch_defer_α_137_46: mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp6_5:       mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_137_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_137_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_4:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_137_2
.Lmatch_defer_α_137_47: mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp6_3:       mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_137_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_137_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_2:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_137_2
.Lmatch_defer_α_137_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_137_48
.Lmatch_defer_α_137_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp6_1:       add              rsp, 32
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
.Lgcsite_.LTp6_0:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_137_49: test             eax, eax;                            js    .Lmatch_alternate_ω_123_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_137_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_123_s1
.Lmatch_defer_α_137_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_123_af
n125_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_137_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_137_12
                                                                              jmp   rax
.Lmatch_defer_β_137_12:                                                       jmp   qword ptr [rsp]
                        .size            n125_match_defer_bx, .-n125_match_defer_bx
                        .type            n126_match_defer_bx, @function
n126_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_138_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_138_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_138_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_138_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_138_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_138_18
.Lmatch_defer_α_138_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp6_31:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
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
                        test             rax, rax;                            je    .Lmatch_defer_α_138_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_138_54: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_30:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_138_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_138_16:
.Lmatch_defer_α_138_18: test             rax, rax;                            jz    .Lmatch_defer_α_138_0
.Lmatch_defer_α_138_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_138_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_138_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_138_4:                                                        jmp   n127_match_arbno_α
.Lmatch_defer_α_138_5:                                                        jmp   .Lmatch_alternate_ω_123_af
.Lmatch_defer_α_138_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp6_29:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_138_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_138_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_28:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_138_2:  test             rax, rax;                            je    .Lmatch_defer_α_138_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_138_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_138_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_138_141
                        lea              rcx, [rip + .Lmatch_defer_α_138_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_138_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_138_42]
                        lea              rdx, [rip + .Lmatch_defer_α_138_43]; jmp   rax
.Lmatch_defer_α_138_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_138_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_138_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_138_44:
.Lgcsite_.LTp6_27:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_138_46
.Lmatch_defer_α_138_45:
.Lgcsite_.LTp6_26:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_138_47
.Lmatch_defer_α_138_42:
.Lgcsite_.LTp6_25:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_138_46
.Lmatch_defer_α_138_43:
.Lgcsite_.LTp6_24:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_138_47
.Lmatch_defer_α_138_141:
                        lea              rcx, [rip + .Lmatch_defer_α_138_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_138_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_138_142]
                        lea              rdx, [rip + .Lmatch_defer_α_138_143]
                                                                              jmp   rax
.Lmatch_defer_α_138_142:
.Lgcsite_.LTp6_23:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_138_46
.Lmatch_defer_α_138_143:
.Lgcsite_.LTp6_22:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_138_47
.Lmatch_defer_α_138_46: mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp6_21:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_138_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_138_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_20:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_138_2
.Lmatch_defer_α_138_47: mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp6_19:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_138_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_138_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_18:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_138_2
.Lmatch_defer_α_138_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_138_48
.Lmatch_defer_α_138_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp6_17:      add              rsp, 32
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
.Lgcsite_.LTp6_16:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_138_49: test             eax, eax;                            js    .Lmatch_alternate_ω_123_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_138_6]
                        push             rcx
                        push             rax;                                 jmp   n127_match_arbno_α
.Lmatch_defer_α_138_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_123_af
n126_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_138_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_138_12
                                                                              jmp   rax
.Lmatch_defer_β_138_12:                                                       jmp   qword ptr [rsp]
                        .size            n126_match_defer_bx, .-n126_match_defer_bx
                        .type            n127_match_arbno_bx, @function
n127_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_match_arbno_α:     sub              rsp, 64
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -64], rsp;          jmp   .Lmatch_alternate_γ_123_s0
n127_match_arbno_β:     mov              rax, qword ptr [rbp + -64]
                        mov              r12, qword ptr [rax + 8];            jmp   n128_match_defer_α
.Lmatch_arbno_γ_127_as: mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n130_match_defer_β
                        sub              rsp, 64
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              rax, qword ptr [rbp + -96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rbp + -88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rbp + -80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rbp + -72]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [rbp + -64], rsp;          jmp   .Lmatch_alternate_γ_123_s0
.Lmatch_arbno_γ_127_af:
.Lmatch_arbno_ω_127_af: mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -64], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_140_3
                        mov              rax, qword ptr [rcx + 32]
                        mov              qword ptr [rbp + -96], rax
                        mov              rax, qword ptr [rcx + 40]
                        mov              qword ptr [rbp + -88], rax
                        mov              rax, qword ptr [rcx + 48]
                        mov              qword ptr [rbp + -80], rax
                        mov              rax, qword ptr [rcx + 56]
                        mov              qword ptr [rbp + -72], rax
                        lea              rsp, [rcx + 64];                     jmp   n130_match_defer_β
.Lmatch_arbno_β_140_3:  lea              rsp, [rcx + 64];                     jmp   n126_match_defer_β
                        .size            n127_match_arbno_bx, .-n127_match_arbno_bx
                        .type            n128_match_defer_bx, @function
n128_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_141_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_141_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_141_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_141_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_141_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_141_18
.Lmatch_defer_α_141_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp6_47:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
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
                        test             rax, rax;                            je    .Lmatch_defer_α_141_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_141_54: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_46:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_141_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_141_16:
.Lmatch_defer_α_141_18: test             rax, rax;                            jz    .Lmatch_defer_α_141_0
.Lmatch_defer_α_141_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_141_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_141_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_141_4:                                                        jmp   n129_match_lit_α
.Lmatch_defer_α_141_5:  cmp              r14d, -2;                            je    n127_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n127_match_arbno_β
                                                                              jmp   .Lmatch_arbno_ω_127_af
.Lmatch_defer_α_141_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp6_45:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_141_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_141_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_44:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_141_2:  test             rax, rax;                            je    .Lmatch_defer_α_141_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_141_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_141_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_141_141
                        lea              rcx, [rip + .Lmatch_defer_α_141_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_141_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_141_42]
                        lea              rdx, [rip + .Lmatch_defer_α_141_43]; jmp   rax
.Lmatch_defer_α_141_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_141_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_141_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_141_44:
.Lgcsite_.LTp6_43:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_141_46
.Lmatch_defer_α_141_45:
.Lgcsite_.LTp6_42:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_141_47
.Lmatch_defer_α_141_42:
.Lgcsite_.LTp6_41:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_141_46
.Lmatch_defer_α_141_43:
.Lgcsite_.LTp6_40:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_141_47
.Lmatch_defer_α_141_141:
                        lea              rcx, [rip + .Lmatch_defer_α_141_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_141_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_141_142]
                        lea              rdx, [rip + .Lmatch_defer_α_141_143]
                                                                              jmp   rax
.Lmatch_defer_α_141_142:
.Lgcsite_.LTp6_39:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_141_46
.Lmatch_defer_α_141_143:
.Lgcsite_.LTp6_38:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_141_47
.Lmatch_defer_α_141_46: mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp6_37:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_141_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_141_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_36:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_141_2
.Lmatch_defer_α_141_47: mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp6_35:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_141_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_141_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_34:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_141_2
.Lmatch_defer_α_141_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_141_48
.Lmatch_defer_α_141_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp6_33:      add              rsp, 32
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
.Lgcsite_.LTp6_32:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_141_49: cmp              r14d, -2;                            je    n127_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n127_match_arbno_β
                        test             eax, eax;                            js    .Lmatch_arbno_ω_127_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_141_6]
                        push             rcx
                        push             rax;                                 jmp   n129_match_lit_α
.Lmatch_defer_α_141_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_arbno_ω_127_af
n128_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_141_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_141_12
                                                                              jmp   rax
.Lmatch_defer_β_141_12:                                                       jmp   qword ptr [rsp]
                        .size            n128_match_defer_bx, .-n128_match_defer_bx
                        .type            n129_match_lit_bx, @function
n129_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n128_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n128_match_defer_β
                        add              r14d, 1;                             jmp   n130_match_defer_α
n129_match_lit_β:       sub              r14d, 1;                             jmp   n128_match_defer_β
                        .size            n129_match_lit_bx, .-n129_match_lit_bx
                        .type            n130_match_defer_bx, @function
n130_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_144_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_144_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_144_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_144_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_144_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_144_18
.Lmatch_defer_α_144_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp6_63:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
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
                        test             rax, rax;                            je    .Lmatch_defer_α_144_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_144_54: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_62:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_144_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_144_16:
.Lmatch_defer_α_144_18: test             rax, rax;                            jz    .Lmatch_defer_α_144_0
.Lmatch_defer_α_144_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_144_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_144_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_144_4:                                                        jmp   .Lmatch_arbno_γ_127_as
.Lmatch_defer_α_144_5:  cmp              r14d, -2;                            je    n127_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n127_match_arbno_β
                                                                              jmp   n129_match_lit_β
.Lmatch_defer_α_144_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp6_61:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_144_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_144_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_60:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_144_2:  test             rax, rax;                            je    .Lmatch_defer_α_144_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_144_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_144_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_144_141
                        lea              rcx, [rip + .Lmatch_defer_α_144_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_144_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_144_42]
                        lea              rdx, [rip + .Lmatch_defer_α_144_43]; jmp   rax
.Lmatch_defer_α_144_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_144_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_144_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_144_44:
.Lgcsite_.LTp6_59:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_144_46
.Lmatch_defer_α_144_45:
.Lgcsite_.LTp6_58:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_144_47
.Lmatch_defer_α_144_42:
.Lgcsite_.LTp6_57:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_144_46
.Lmatch_defer_α_144_43:
.Lgcsite_.LTp6_56:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_144_47
.Lmatch_defer_α_144_141:
                        lea              rcx, [rip + .Lmatch_defer_α_144_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_144_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_144_142]
                        lea              rdx, [rip + .Lmatch_defer_α_144_143]
                                                                              jmp   rax
.Lmatch_defer_α_144_142:
.Lgcsite_.LTp6_55:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_144_46
.Lmatch_defer_α_144_143:
.Lgcsite_.LTp6_54:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_144_47
.Lmatch_defer_α_144_46: mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp6_53:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_144_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_144_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_52:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_144_2
.Lmatch_defer_α_144_47: mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp6_51:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_144_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_144_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_50:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_144_2
.Lmatch_defer_α_144_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_144_48
.Lmatch_defer_α_144_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp6_49:      add              rsp, 32
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
.Lgcsite_.LTp6_48:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_144_49: cmp              r14d, -2;                            je    n127_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n127_match_arbno_β
                        test             eax, eax;                            js    n129_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_144_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_arbno_γ_127_as
.Lmatch_defer_α_144_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n129_match_lit_β
n130_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_144_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_144_12
                                                                              jmp   rax
.Lmatch_defer_β_144_12:                                                       jmp   qword ptr [rsp]
                        .size            n130_match_defer_bx, .-n130_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp6_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp6_β:
                                                                              jmp   n124_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
.LTp6_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + .LTp6_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.LTp6_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_.LTp6:
                        .quad            654181485914
                        .quad            17179869208
                        .quad            0
                        .quad            152
                        .quad            16
                        .quad            8804682956664
                        .quad            8813272891264
                        .quad            8813272891272
                        .quad            8804682956688
                        .quad            8804682956696
                        .quad            17596481011616
                        .quad            17596481011632
                        .quad            17600775978944
                        .quad            17596481011664
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcsites_.LTp6_6:      .quad            64
                        .quad            .Lgcmap_.LTp6
                        .quad            0
                        .quad            .Lgcsite_.LTp6_0
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_1
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_7
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_8
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_9
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_10
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_11
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_12
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_13
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_14
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_15
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_16
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_17
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_18
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_19
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_20
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_21
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_22
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_23
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_24
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_25
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_26
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_27
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_28
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_29
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_30
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_31
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_32
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_33
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_34
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_35
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_36
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_37
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_38
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_39
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_40
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_41
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_42
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_43
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_44
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_45
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_46
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_47
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_48
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_49
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_50
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_51
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_52
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_53
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_54
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_55
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_56
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_57
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_58
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_59
                        .quad            196610
                        .quad            .Lgcsite_.LTp6_60
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_61
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_62
                        .quad            196609
                        .quad            .Lgcsite_.LTp6_63
                        .quad            196609
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp6:            .quad            .LTp6
                        .long            256, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.LTp7:
.LTp7_α_body:
                        cmp              r14d, r15d
                                                                              jge   .Lfg_none_5
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        lea              rcx, [rip + .C12]
                        movzx            eax, byte ptr [rcx + rax]
                        test             eax, eax
                                                                              jne   .Lfg_ok_5
.Lfg_fire_5:
.Lfg_none_5:
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
.Lfg_ok_5:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 152
                        lea              rax, [rip + .Lgcmap_.LTp7]
                        mov              qword ptr [rbp + -144], rax
                        mov              dword ptr [rbp + -152], 160
                        mov              dword ptr [rbp + -148], 152
                        xorps            xmm0, xmm0
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
                        .type            n145_match_lit_bx, @function
n145_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .LTp7_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 91;                             jne   .LTp7_ω
                        add              r14d, 1;                             jmp   n146_match_alternate_α
n145_match_lit_β:       sub              r14d, 1;                             jmp   .LTp7_ω
                        .size            n145_match_lit_bx, .-n145_match_lit_bx
                        .type            n146_match_alternate_bx, @function
n146_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_match_alternate_α: mov              dword ptr [rbp + -136], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_157_21]
                        mov              qword ptr [rbp + -120], rax;         jmp   n149_match_defer_α
.Lmatch_alternate_α_157_21:
                        lea              rax, [rip + .Lmatch_alternate_α_157_19]
                        mov              qword ptr [rbp + -120], rax;         jmp   n148_match_defer_α
.Lmatch_alternate_γ_146_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_157_40]
                        mov              qword ptr [rbp + -128], rax;         jmp   .Lmatch_alternate_γ_146_as
.Lmatch_alternate_γ_146_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_157_41]
                        mov              qword ptr [rbp + -128], rax;         jmp   .Lmatch_alternate_γ_146_as
.Lmatch_alternate_α_157_40:
                                                                              jmp   n150_match_arbno_β
.Lmatch_alternate_α_157_41:
                                                                              jmp   n148_match_defer_β
.Lmatch_alternate_γ_146_as:
                                                                              jmp   n147_match_lit_α
n146_match_alternate_β: mov              rax, qword ptr [rbp + -128];         jmp   rax
.Lmatch_alternate_γ_146_af:
.Lmatch_alternate_ω_146_af:
                        mov              r14d, dword ptr [rbp + -136]
                        mov              rax, qword ptr [rbp + -120];         jmp   rax
.Lmatch_alternate_α_157_19:
                                                                              jmp   n145_match_lit_β
                        .size            n146_match_alternate_bx, .-n146_match_alternate_bx
                        .type            n147_match_lit_bx, @function
n147_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n146_match_alternate_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 93;                             jne   n146_match_alternate_β
                        add              r14d, 1;                             jmp   .LTp7_γ
n147_match_lit_β:       sub              r14d, 1;                             jmp   n146_match_alternate_β
                        .size            n147_match_lit_bx, .-n147_match_lit_bx
                        .type            n148_match_defer_bx, @function
n148_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_160_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_160_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_160_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_160_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_160_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_160_18
.Lmatch_defer_α_160_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp7_15:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
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
                        test             rax, rax;                            je    .Lmatch_defer_α_160_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_160_54: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp7_14:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_160_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_160_16:
.Lmatch_defer_α_160_18: test             rax, rax;                            jz    .Lmatch_defer_α_160_0
.Lmatch_defer_α_160_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_160_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_160_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_160_4:                                                        jmp   .Lmatch_alternate_γ_146_s1
.Lmatch_defer_α_160_5:                                                        jmp   .Lmatch_alternate_ω_146_af
.Lmatch_defer_α_160_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp7_13:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_160_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_160_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp7_12:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_160_2:  test             rax, rax;                            je    .Lmatch_defer_α_160_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_160_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_160_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_160_141
                        lea              rcx, [rip + .Lmatch_defer_α_160_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_160_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_160_42]
                        lea              rdx, [rip + .Lmatch_defer_α_160_43]; jmp   rax
.Lmatch_defer_α_160_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_160_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_160_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_160_44:
.Lgcsite_.LTp7_11:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_160_46
.Lmatch_defer_α_160_45:
.Lgcsite_.LTp7_10:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_160_47
.Lmatch_defer_α_160_42:
.Lgcsite_.LTp7_9:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_160_46
.Lmatch_defer_α_160_43:
.Lgcsite_.LTp7_8:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_160_47
.Lmatch_defer_α_160_141:
                        lea              rcx, [rip + .Lmatch_defer_α_160_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_160_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_160_142]
                        lea              rdx, [rip + .Lmatch_defer_α_160_143]
                                                                              jmp   rax
.Lmatch_defer_α_160_142:
.Lgcsite_.LTp7_7:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_160_46
.Lmatch_defer_α_160_143:
.Lgcsite_.LTp7_6:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_160_47
.Lmatch_defer_α_160_46: mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp7_5:       mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_160_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_160_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp7_4:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_160_2
.Lmatch_defer_α_160_47: mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp7_3:       mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_160_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_160_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp7_2:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_160_2
.Lmatch_defer_α_160_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_160_48
.Lmatch_defer_α_160_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp7_1:       add              rsp, 32
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
.Lgcsite_.LTp7_0:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_160_49: test             eax, eax;                            js    .Lmatch_alternate_ω_146_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_160_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_146_s1
.Lmatch_defer_α_160_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_146_af
n148_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_160_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_160_12
                                                                              jmp   rax
.Lmatch_defer_β_160_12:                                                       jmp   qword ptr [rsp]
                        .size            n148_match_defer_bx, .-n148_match_defer_bx
                        .type            n149_match_defer_bx, @function
n149_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_match_defer_α:     mov              rax, qword ptr [r9 + 144]            # jelement
                        mov              rdx, qword ptr [r9 + 152]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_161_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_161_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp7_31:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_match_defer.cpp:151
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp7_30:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdx, qword ptr [r9 + 152];           jmp   .Lmatch_defer_α_161_10
.Lmatch_defer_α_161_9:  xor              eax, eax
.Lmatch_defer_α_161_10: test             rax, rax;                            jz    .Lmatch_defer_α_161_0
.Lmatch_defer_α_161_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_161_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_161_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_161_4:                                                        jmp   n150_match_arbno_α
.Lmatch_defer_α_161_5:                                                        jmp   .Lmatch_alternate_ω_146_af
.Lmatch_defer_α_161_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        lea              rdi, [r9 + 144]                      # jelement
                        xor              esi, esi
                        mov              rdx, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open_cell@PLT
.Lgcsite_.LTp7_29:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_161_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_161_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp7_28:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_161_2:  test             rax, rax;                            je    .Lmatch_defer_α_161_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_161_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_161_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_161_141
                        lea              rcx, [rip + .Lmatch_defer_α_161_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_161_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_161_42]
                        lea              rdx, [rip + .Lmatch_defer_α_161_43]; jmp   rax
.Lmatch_defer_α_161_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_161_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_161_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_161_44:
.Lgcsite_.LTp7_27:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_161_46
.Lmatch_defer_α_161_45:
.Lgcsite_.LTp7_26:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_161_47
.Lmatch_defer_α_161_42:
.Lgcsite_.LTp7_25:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_161_46
.Lmatch_defer_α_161_43:
.Lgcsite_.LTp7_24:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_161_47
.Lmatch_defer_α_161_141:
                        lea              rcx, [rip + .Lmatch_defer_α_161_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_161_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_161_142]
                        lea              rdx, [rip + .Lmatch_defer_α_161_143]
                                                                              jmp   rax
.Lmatch_defer_α_161_142:
.Lgcsite_.LTp7_23:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_161_46
.Lmatch_defer_α_161_143:
.Lgcsite_.LTp7_22:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_161_47
.Lmatch_defer_α_161_46: mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp7_21:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_161_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_161_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp7_20:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_161_2
.Lmatch_defer_α_161_47: mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp7_19:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_161_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_161_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp7_18:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_161_2
.Lmatch_defer_α_161_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_161_48
.Lmatch_defer_α_161_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp7_17:      add              rsp, 32
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
.Lgcsite_.LTp7_16:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_161_49: test             eax, eax;                            js    .Lmatch_alternate_ω_146_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_161_6]
                        push             rcx
                        push             rax;                                 jmp   n150_match_arbno_α
.Lmatch_defer_α_161_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_146_af
n149_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_161_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_161_12
                                                                              jmp   rax
.Lmatch_defer_β_161_12:                                                       jmp   qword ptr [rsp]
                        .size            n149_match_defer_bx, .-n149_match_defer_bx
                        .type            n150_match_arbno_bx, @function
n150_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_match_arbno_α:     sub              rsp, 64
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -64], rsp;          jmp   .Lmatch_alternate_γ_146_s0
n150_match_arbno_β:     mov              rax, qword ptr [rbp + -64]
                        mov              r12, qword ptr [rax + 8];            jmp   n151_match_defer_α
.Lmatch_arbno_γ_150_as: mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n153_match_defer_β
                        sub              rsp, 64
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              rax, qword ptr [rbp + -96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rbp + -88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rbp + -80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rbp + -72]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [rbp + -64], rsp;          jmp   .Lmatch_alternate_γ_146_s0
.Lmatch_arbno_γ_150_af:
.Lmatch_arbno_ω_150_af: mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -64], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_163_3
                        mov              rax, qword ptr [rcx + 32]
                        mov              qword ptr [rbp + -96], rax
                        mov              rax, qword ptr [rcx + 40]
                        mov              qword ptr [rbp + -88], rax
                        mov              rax, qword ptr [rcx + 48]
                        mov              qword ptr [rbp + -80], rax
                        mov              rax, qword ptr [rcx + 56]
                        mov              qword ptr [rbp + -72], rax
                        lea              rsp, [rcx + 64];                     jmp   n153_match_defer_β
.Lmatch_arbno_β_163_3:  lea              rsp, [rcx + 64];                     jmp   n149_match_defer_β
                        .size            n150_match_arbno_bx, .-n150_match_arbno_bx
                        .type            n151_match_defer_bx, @function
n151_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_164_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_164_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_164_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_164_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_164_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_164_18
.Lmatch_defer_α_164_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp7_47:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
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
                        test             rax, rax;                            je    .Lmatch_defer_α_164_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_164_54: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp7_46:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_164_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_164_16:
.Lmatch_defer_α_164_18: test             rax, rax;                            jz    .Lmatch_defer_α_164_0
.Lmatch_defer_α_164_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_164_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_164_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_164_4:                                                        jmp   n152_match_lit_α
.Lmatch_defer_α_164_5:  cmp              r14d, -2;                            je    n150_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n150_match_arbno_β
                                                                              jmp   .Lmatch_arbno_ω_150_af
.Lmatch_defer_α_164_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp7_45:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_164_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_164_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp7_44:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_164_2:  test             rax, rax;                            je    .Lmatch_defer_α_164_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_164_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_164_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_164_141
                        lea              rcx, [rip + .Lmatch_defer_α_164_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_164_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_164_42]
                        lea              rdx, [rip + .Lmatch_defer_α_164_43]; jmp   rax
.Lmatch_defer_α_164_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_164_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_164_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_164_44:
.Lgcsite_.LTp7_43:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_164_46
.Lmatch_defer_α_164_45:
.Lgcsite_.LTp7_42:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_164_47
.Lmatch_defer_α_164_42:
.Lgcsite_.LTp7_41:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_164_46
.Lmatch_defer_α_164_43:
.Lgcsite_.LTp7_40:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_164_47
.Lmatch_defer_α_164_141:
                        lea              rcx, [rip + .Lmatch_defer_α_164_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_164_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_164_142]
                        lea              rdx, [rip + .Lmatch_defer_α_164_143]
                                                                              jmp   rax
.Lmatch_defer_α_164_142:
.Lgcsite_.LTp7_39:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_164_46
.Lmatch_defer_α_164_143:
.Lgcsite_.LTp7_38:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_164_47
.Lmatch_defer_α_164_46: mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp7_37:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_164_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_164_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp7_36:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_164_2
.Lmatch_defer_α_164_47: mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp7_35:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_164_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_164_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp7_34:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_164_2
.Lmatch_defer_α_164_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_164_48
.Lmatch_defer_α_164_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp7_33:      add              rsp, 32
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
.Lgcsite_.LTp7_32:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_164_49: cmp              r14d, -2;                            je    n150_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n150_match_arbno_β
                        test             eax, eax;                            js    .Lmatch_arbno_ω_150_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_164_6]
                        push             rcx
                        push             rax;                                 jmp   n152_match_lit_α
.Lmatch_defer_α_164_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_arbno_ω_150_af
n151_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_164_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_164_12
                                                                              jmp   rax
.Lmatch_defer_β_164_12:                                                       jmp   qword ptr [rsp]
                        .size            n151_match_defer_bx, .-n151_match_defer_bx
                        .type            n152_match_lit_bx, @function
n152_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n151_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n151_match_defer_β
                        add              r14d, 1;                             jmp   n153_match_defer_α
n152_match_lit_β:       sub              r14d, 1;                             jmp   n151_match_defer_β
                        .size            n152_match_lit_bx, .-n152_match_lit_bx
                        .type            n153_match_defer_bx, @function
n153_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_match_defer_α:     mov              rax, qword ptr [r9 + 144]            # jelement
                        mov              rdx, qword ptr [r9 + 152]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_167_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_167_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp7_63:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_match_defer.cpp:151
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp7_62:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdx, qword ptr [r9 + 152];           jmp   .Lmatch_defer_α_167_10
.Lmatch_defer_α_167_9:  xor              eax, eax
.Lmatch_defer_α_167_10: test             rax, rax;                            jz    .Lmatch_defer_α_167_0
.Lmatch_defer_α_167_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_167_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_167_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_167_4:                                                        jmp   .Lmatch_arbno_γ_150_as
.Lmatch_defer_α_167_5:  cmp              r14d, -2;                            je    n150_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n150_match_arbno_β
                                                                              jmp   n152_match_lit_β
.Lmatch_defer_α_167_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        lea              rdi, [r9 + 144]                      # jelement
                        xor              esi, esi
                        mov              rdx, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open_cell@PLT
.Lgcsite_.LTp7_61:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_167_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_167_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp7_60:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_167_2:  test             rax, rax;                            je    .Lmatch_defer_α_167_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_167_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_167_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_167_141
                        lea              rcx, [rip + .Lmatch_defer_α_167_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_167_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_167_42]
                        lea              rdx, [rip + .Lmatch_defer_α_167_43]; jmp   rax
.Lmatch_defer_α_167_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_167_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_167_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_167_44:
.Lgcsite_.LTp7_59:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_167_46
.Lmatch_defer_α_167_45:
.Lgcsite_.LTp7_58:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_167_47
.Lmatch_defer_α_167_42:
.Lgcsite_.LTp7_57:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_167_46
.Lmatch_defer_α_167_43:
.Lgcsite_.LTp7_56:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_167_47
.Lmatch_defer_α_167_141:
                        lea              rcx, [rip + .Lmatch_defer_α_167_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_167_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_167_142]
                        lea              rdx, [rip + .Lmatch_defer_α_167_143]
                                                                              jmp   rax
.Lmatch_defer_α_167_142:
.Lgcsite_.LTp7_55:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_167_46
.Lmatch_defer_α_167_143:
.Lgcsite_.LTp7_54:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_167_47
.Lmatch_defer_α_167_46: mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp7_53:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_167_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_167_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp7_52:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_167_2
.Lmatch_defer_α_167_47: mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp7_51:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_167_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_167_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp7_50:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_167_2
.Lmatch_defer_α_167_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_167_48
.Lmatch_defer_α_167_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp7_49:      add              rsp, 32
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
.Lgcsite_.LTp7_48:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_167_49: cmp              r14d, -2;                            je    n150_match_arbno_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n150_match_arbno_β
                        test             eax, eax;                            js    n152_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_167_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_arbno_γ_150_as
.Lmatch_defer_α_167_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n152_match_lit_β
n153_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_167_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_167_12
                                                                              jmp   rax
.Lmatch_defer_β_167_12:                                                       jmp   qword ptr [rsp]
                        .size            n153_match_defer_bx, .-n153_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp7_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp7_β:
                                                                              jmp   n147_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
.LTp7_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + .LTp7_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.LTp7_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_.LTp7:
                        .quad            654181485914
                        .quad            17179869208
                        .quad            0
                        .quad            152
                        .quad            16
                        .quad            8804682956664
                        .quad            8813272891264
                        .quad            8813272891272
                        .quad            8804682956688
                        .quad            8804682956696
                        .quad            17596481011616
                        .quad            17596481011632
                        .quad            17600775978944
                        .quad            17596481011664
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcsites_.LTp7_7:      .quad            64
                        .quad            .Lgcmap_.LTp7
                        .quad            0
                        .quad            .Lgcsite_.LTp7_0
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_1
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_7
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_8
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_9
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_10
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_11
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_12
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_13
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_14
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_15
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_16
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_17
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_18
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_19
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_20
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_21
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_22
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_23
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_24
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_25
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_26
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_27
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_28
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_29
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_30
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_31
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_32
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_33
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_34
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_35
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_36
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_37
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_38
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_39
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_40
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_41
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_42
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_43
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_44
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_45
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_46
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_47
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_48
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_49
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_50
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_51
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_52
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_53
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_54
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_55
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_56
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_57
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_58
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_59
                        .quad            196610
                        .quad            .Lgcsite_.LTp7_60
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_61
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_62
                        .quad            196609
                        .quad            .Lgcsite_.LTp7_63
                        .quad            196609
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp7:            .quad            .LTp7
                        .long            256, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.LTp8:
.LTp8_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 88
                        lea              rax, [rip + .Lgcmap_.LTp8]
                        mov              qword ptr [rbp + -80], rax
                        mov              dword ptr [rbp + -88], 160
                        mov              dword ptr [rbp + -84], 88
                        xorps            xmm0, xmm0
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n168_match_alternate_bx, @function
n168_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_match_alternate_α: mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_177_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n175_match_defer_α
.Lmatch_alternate_α_177_21:
                        lea              rax, [rip + .Lmatch_alternate_α_177_22]
                        mov              qword ptr [rbp + -56], rax;          jmp   n174_match_defer_α
.Lmatch_alternate_α_177_22:
                        lea              rax, [rip + .Lmatch_alternate_α_177_23]
                        mov              qword ptr [rbp + -56], rax;          jmp   n173_match_defer_α
.Lmatch_alternate_α_177_23:
                        lea              rax, [rip + .Lmatch_alternate_α_177_24]
                        mov              qword ptr [rbp + -56], rax;          jmp   n172_match_defer_α
.Lmatch_alternate_α_177_24:
                        lea              rax, [rip + .Lmatch_alternate_α_177_25]
                        mov              qword ptr [rbp + -56], rax;          jmp   n171_match_lit_α
.Lmatch_alternate_α_177_25:
                        lea              rax, [rip + .Lmatch_alternate_α_177_26]
                        mov              qword ptr [rbp + -56], rax;          jmp   n170_match_lit_α
.Lmatch_alternate_α_177_26:
                        lea              rax, [rip + .Lmatch_alternate_α_177_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n169_match_lit_α
.Lmatch_alternate_γ_168_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_177_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_168_as
.Lmatch_alternate_γ_168_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_177_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_168_as
.Lmatch_alternate_γ_168_s2:
                        lea              rax, [rip + .Lmatch_alternate_α_177_42]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_168_as
.Lmatch_alternate_γ_168_s3:
                        lea              rax, [rip + .Lmatch_alternate_α_177_43]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_168_as
.Lmatch_alternate_γ_168_s4:
                        lea              rax, [rip + .Lmatch_alternate_α_177_44]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_168_as
.Lmatch_alternate_γ_168_s5:
                        lea              rax, [rip + .Lmatch_alternate_α_177_45]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_168_as
.Lmatch_alternate_γ_168_s6:
                        lea              rax, [rip + .Lmatch_alternate_α_177_46]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_168_as
.Lmatch_alternate_α_177_40:
                                                                              jmp   n175_match_defer_β
.Lmatch_alternate_α_177_41:
                                                                              jmp   n174_match_defer_β
.Lmatch_alternate_α_177_42:
                                                                              jmp   n173_match_defer_β
.Lmatch_alternate_α_177_43:
                                                                              jmp   n172_match_defer_β
.Lmatch_alternate_α_177_44:
                                                                              jmp   n171_match_lit_β
.Lmatch_alternate_α_177_45:
                                                                              jmp   n170_match_lit_β
.Lmatch_alternate_α_177_46:
                                                                              jmp   n169_match_lit_β
.Lmatch_alternate_γ_168_as:
                                                                              jmp   .LTp8_γ
n168_match_alternate_β: mov              rax, qword ptr [rbp + -64];          jmp   rax
.Lmatch_alternate_γ_168_af:
.Lmatch_alternate_ω_168_af:
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lmatch_alternate_α_177_19:
                                                                              jmp   .LTp8_ω
                        .size            n168_match_alternate_bx, .-n168_match_alternate_bx
                        .type            n169_match_lit_bx, @function
n169_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_match_lit_α:       mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_168_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1819047278;                     jne   .Lmatch_alternate_ω_168_af
                        add              r14d, 4;                             jmp   .Lmatch_alternate_γ_168_s6
n169_match_lit_β:       sub              r14d, 4;                             jmp   .Lmatch_alternate_ω_168_af
                        .size            n169_match_lit_bx, .-n169_match_lit_bx
                        .type            n170_match_lit_bx, @function
n170_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_match_lit_α:       mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_168_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1936482662;                     jne   .Lmatch_alternate_ω_168_af
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 101;                            jne   .Lmatch_alternate_ω_168_af
                        add              r14d, 5;                             jmp   .Lmatch_alternate_γ_168_s5
n170_match_lit_β:       sub              r14d, 5;                             jmp   .Lmatch_alternate_ω_168_af
                        .size            n170_match_lit_bx, .-n170_match_lit_bx
                        .type            n171_match_lit_bx, @function
n171_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_match_lit_α:       mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_168_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1702195828;                     jne   .Lmatch_alternate_ω_168_af
                        add              r14d, 4;                             jmp   .Lmatch_alternate_γ_168_s4
n171_match_lit_β:       sub              r14d, 4;                             jmp   .Lmatch_alternate_ω_168_af
                        .size            n171_match_lit_bx, .-n171_match_lit_bx
                        .type            n172_match_defer_bx, @function
n172_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_184_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_184_17
                        cmp              qword ptr [rdi + 40], 4;             jl    .Lmatch_defer_α_184_17
                        mov              rax, qword ptr [rsi + 48]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_184_17
                        mov              rdx, qword ptr [rsi + 56]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_184_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_184_18
.Lmatch_defer_α_184_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp8_15:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
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
                        test             rax, rax;                            je    .Lmatch_defer_α_184_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_184_54: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp8_14:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_184_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_184_16:
.Lmatch_defer_α_184_18: test             rax, rax;                            jz    .Lmatch_defer_α_184_0
.Lmatch_defer_α_184_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_184_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_184_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_184_4:                                                        jmp   .Lmatch_alternate_γ_168_s3
.Lmatch_defer_α_184_5:                                                        jmp   .Lmatch_alternate_ω_168_af
.Lmatch_defer_α_184_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp8_13:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_184_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_184_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp8_12:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_184_2:  test             rax, rax;                            je    .Lmatch_defer_α_184_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_184_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_184_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_184_141
                        lea              rcx, [rip + .Lmatch_defer_α_184_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_184_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_184_42]
                        lea              rdx, [rip + .Lmatch_defer_α_184_43]; jmp   rax
.Lmatch_defer_α_184_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_184_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_184_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_184_44:
.Lgcsite_.LTp8_11:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_184_46
.Lmatch_defer_α_184_45:
.Lgcsite_.LTp8_10:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_184_47
.Lmatch_defer_α_184_42:
.Lgcsite_.LTp8_9:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_184_46
.Lmatch_defer_α_184_43:
.Lgcsite_.LTp8_8:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_184_47
.Lmatch_defer_α_184_141:
                        lea              rcx, [rip + .Lmatch_defer_α_184_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_184_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_184_142]
                        lea              rdx, [rip + .Lmatch_defer_α_184_143]
                                                                              jmp   rax
.Lmatch_defer_α_184_142:
.Lgcsite_.LTp8_7:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_184_46
.Lmatch_defer_α_184_143:
.Lgcsite_.LTp8_6:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_184_47
.Lmatch_defer_α_184_46: mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp8_5:       mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_184_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_184_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp8_4:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_184_2
.Lmatch_defer_α_184_47: mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp8_3:       mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_184_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_184_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp8_2:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_184_2
.Lmatch_defer_α_184_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_184_48
.Lmatch_defer_α_184_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp8_1:       add              rsp, 32
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
.Lgcsite_.LTp8_0:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_184_49: test             eax, eax;                            js    .Lmatch_alternate_ω_168_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_184_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_168_s3
.Lmatch_defer_α_184_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_168_af
n172_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_184_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_184_12
                                                                              jmp   rax
.Lmatch_defer_β_184_12:                                                       jmp   qword ptr [rsp]
                        .size            n172_match_defer_bx, .-n172_match_defer_bx
                        .type            n173_match_defer_bx, @function
n173_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_185_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_185_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_185_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_185_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_185_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_185_18
.Lmatch_defer_α_185_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp8_31:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
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
                        test             rax, rax;                            je    .Lmatch_defer_α_185_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_185_54: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp8_30:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_185_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_185_16:
.Lmatch_defer_α_185_18: test             rax, rax;                            jz    .Lmatch_defer_α_185_0
.Lmatch_defer_α_185_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_185_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_185_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_185_4:                                                        jmp   .Lmatch_alternate_γ_168_s2
.Lmatch_defer_α_185_5:                                                        jmp   .Lmatch_alternate_ω_168_af
.Lmatch_defer_α_185_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp8_29:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_185_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_185_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp8_28:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_185_2:  test             rax, rax;                            je    .Lmatch_defer_α_185_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_185_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_185_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_185_141
                        lea              rcx, [rip + .Lmatch_defer_α_185_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_185_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_185_42]
                        lea              rdx, [rip + .Lmatch_defer_α_185_43]; jmp   rax
.Lmatch_defer_α_185_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_185_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_185_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_185_44:
.Lgcsite_.LTp8_27:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_185_46
.Lmatch_defer_α_185_45:
.Lgcsite_.LTp8_26:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_185_47
.Lmatch_defer_α_185_42:
.Lgcsite_.LTp8_25:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_185_46
.Lmatch_defer_α_185_43:
.Lgcsite_.LTp8_24:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_185_47
.Lmatch_defer_α_185_141:
                        lea              rcx, [rip + .Lmatch_defer_α_185_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_185_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_185_142]
                        lea              rdx, [rip + .Lmatch_defer_α_185_143]
                                                                              jmp   rax
.Lmatch_defer_α_185_142:
.Lgcsite_.LTp8_23:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_185_46
.Lmatch_defer_α_185_143:
.Lgcsite_.LTp8_22:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_185_47
.Lmatch_defer_α_185_46: mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp8_21:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_185_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_185_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp8_20:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_185_2
.Lmatch_defer_α_185_47: mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp8_19:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_185_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_185_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp8_18:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_185_2
.Lmatch_defer_α_185_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_185_48
.Lmatch_defer_α_185_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp8_17:      add              rsp, 32
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
.Lgcsite_.LTp8_16:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_185_49: test             eax, eax;                            js    .Lmatch_alternate_ω_168_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_185_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_168_s2
.Lmatch_defer_α_185_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_168_af
n173_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_185_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_185_12
                                                                              jmp   rax
.Lmatch_defer_β_185_12:                                                       jmp   qword ptr [rsp]
                        .size            n173_match_defer_bx, .-n173_match_defer_bx
                        .type            n174_match_defer_bx, @function
n174_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_186_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_186_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_186_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_186_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_186_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_186_18
.Lmatch_defer_α_186_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp8_47:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
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
                        test             rax, rax;                            je    .Lmatch_defer_α_186_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_186_54: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp8_46:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_186_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_186_16:
.Lmatch_defer_α_186_18: test             rax, rax;                            jz    .Lmatch_defer_α_186_0
.Lmatch_defer_α_186_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_186_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_186_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_186_4:                                                        jmp   .Lmatch_alternate_γ_168_s1
.Lmatch_defer_α_186_5:                                                        jmp   .Lmatch_alternate_ω_168_af
.Lmatch_defer_α_186_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp8_45:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_186_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_186_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp8_44:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_186_2:  test             rax, rax;                            je    .Lmatch_defer_α_186_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_186_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_186_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_186_141
                        lea              rcx, [rip + .Lmatch_defer_α_186_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_186_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_186_42]
                        lea              rdx, [rip + .Lmatch_defer_α_186_43]; jmp   rax
.Lmatch_defer_α_186_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_186_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_186_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_186_44:
.Lgcsite_.LTp8_43:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_186_46
.Lmatch_defer_α_186_45:
.Lgcsite_.LTp8_42:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_186_47
.Lmatch_defer_α_186_42:
.Lgcsite_.LTp8_41:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_186_46
.Lmatch_defer_α_186_43:
.Lgcsite_.LTp8_40:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_186_47
.Lmatch_defer_α_186_141:
                        lea              rcx, [rip + .Lmatch_defer_α_186_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_186_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_186_142]
                        lea              rdx, [rip + .Lmatch_defer_α_186_143]
                                                                              jmp   rax
.Lmatch_defer_α_186_142:
.Lgcsite_.LTp8_39:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_186_46
.Lmatch_defer_α_186_143:
.Lgcsite_.LTp8_38:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_186_47
.Lmatch_defer_α_186_46: mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp8_37:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_186_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_186_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp8_36:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_186_2
.Lmatch_defer_α_186_47: mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp8_35:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_186_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_186_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp8_34:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_186_2
.Lmatch_defer_α_186_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_186_48
.Lmatch_defer_α_186_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp8_33:      add              rsp, 32
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
.Lgcsite_.LTp8_32:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_186_49: test             eax, eax;                            js    .Lmatch_alternate_ω_168_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_186_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_168_s1
.Lmatch_defer_α_186_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_168_af
n174_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_186_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_186_12
                                                                              jmp   rax
.Lmatch_defer_β_186_12:                                                       jmp   qword ptr [rsp]
                        .size            n174_match_defer_bx, .-n174_match_defer_bx
                        .type            n175_match_defer_bx, @function
n175_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_187_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_187_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_187_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_187_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_187_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_187_18
.Lmatch_defer_α_187_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp8_63:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
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
                        test             rax, rax;                            je    .Lmatch_defer_α_187_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_187_54: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp8_62:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_187_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_187_16:
.Lmatch_defer_α_187_18: test             rax, rax;                            jz    .Lmatch_defer_α_187_0
.Lmatch_defer_α_187_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_187_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_187_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_187_4:                                                        jmp   .Lmatch_alternate_γ_168_s0
.Lmatch_defer_α_187_5:                                                        jmp   .Lmatch_alternate_ω_168_af
.Lmatch_defer_α_187_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp8_61:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_187_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_187_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp8_60:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_187_2:  test             rax, rax;                            je    .Lmatch_defer_α_187_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_187_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_187_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_187_141
                        lea              rcx, [rip + .Lmatch_defer_α_187_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_187_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_187_42]
                        lea              rdx, [rip + .Lmatch_defer_α_187_43]; jmp   rax
.Lmatch_defer_α_187_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_187_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_187_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_187_44:
.Lgcsite_.LTp8_59:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_187_46
.Lmatch_defer_α_187_45:
.Lgcsite_.LTp8_58:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_187_47
.Lmatch_defer_α_187_42:
.Lgcsite_.LTp8_57:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_187_46
.Lmatch_defer_α_187_43:
.Lgcsite_.LTp8_56:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_187_47
.Lmatch_defer_α_187_141:
                        lea              rcx, [rip + .Lmatch_defer_α_187_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_187_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_187_142]
                        lea              rdx, [rip + .Lmatch_defer_α_187_143]
                                                                              jmp   rax
.Lmatch_defer_α_187_142:
.Lgcsite_.LTp8_55:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_187_46
.Lmatch_defer_α_187_143:
.Lgcsite_.LTp8_54:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_187_47
.Lmatch_defer_α_187_46: mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp8_53:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_187_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_187_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp8_52:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_187_2
.Lmatch_defer_α_187_47: mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp8_51:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_187_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_187_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp8_50:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_187_2
.Lmatch_defer_α_187_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_187_48
.Lmatch_defer_α_187_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp8_49:      add              rsp, 32
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
.Lgcsite_.LTp8_48:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_187_49: test             eax, eax;                            js    .Lmatch_alternate_ω_168_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_187_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_168_s0
.Lmatch_defer_α_187_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_168_af
n175_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_187_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_187_12
                                                                              jmp   rax
.Lmatch_defer_β_187_12:                                                       jmp   qword ptr [rsp]
                        .size            n175_match_defer_bx, .-n175_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp8_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp8_β:
                                                                              jmp   n168_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
.LTp8_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + .LTp8_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.LTp8_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_.LTp8:
                        .quad            379303578970
                        .quad            17179869208
                        .quad            0
                        .quad            88
                        .quad            12
                        .quad            8804682956728
                        .quad            8813272891328
                        .quad            8813272891336
                        .quad            8804682956752
                        .quad            8804682956760
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcsites_.LTp8_8:      .quad            64
                        .quad            .Lgcmap_.LTp8
                        .quad            0
                        .quad            .Lgcsite_.LTp8_0
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_1
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_7
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_8
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_9
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_10
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_11
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_12
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_13
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_14
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_15
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_16
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_17
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_18
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_19
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_20
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_21
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_22
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_23
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_24
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_25
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_26
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_27
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_28
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_29
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_30
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_31
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_32
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_33
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_34
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_35
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_36
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_37
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_38
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_39
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_40
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_41
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_42
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_43
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_44
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_45
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_46
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_47
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_48
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_49
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_50
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_51
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_52
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_53
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_54
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_55
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_56
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_57
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_58
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_59
                        .quad            196610
                        .quad            .Lgcsite_.LTp8_60
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_61
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_62
                        .quad            196609
                        .quad            .Lgcsite_.LTp8_63
                        .quad            196609
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp8:            .quad            .LTp8
                        .long            160, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.LTp9:
.LTp9_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 56
                        lea              rax, [rip + .Lgcmap_.LTp9]
                        mov              qword ptr [rbp + -48], rax
                        mov              dword ptr [rbp + -56], 160
                        mov              dword ptr [rbp + -52], 56
                        xorps            xmm0, xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n188_match_defer_bx, @function
n188_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_match_defer_α:     sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_191_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_191_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_191_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_191_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_191_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_191_18
.Lmatch_defer_α_191_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp9_15:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
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
                        test             rax, rax;                            je    .Lmatch_defer_α_191_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_191_54: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp9_14:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_191_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_191_16:
.Lmatch_defer_α_191_18: test             rax, rax;                            jz    .Lmatch_defer_α_191_0
.Lmatch_defer_α_191_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_191_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_191_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_191_4:                                                        jmp   n189_match_defer_α
.Lmatch_defer_α_191_5:  add              rsp, 16;                             jmp   .LTp9_ω
.Lmatch_defer_α_191_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp9_13:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_191_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_191_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp9_12:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_191_2:  test             rax, rax;                            je    .Lmatch_defer_α_191_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_191_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_191_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_191_141
                        lea              rcx, [rip + .Lmatch_defer_α_191_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_191_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_191_42]
                        lea              rdx, [rip + .Lmatch_defer_α_191_43]; jmp   rax
.Lmatch_defer_α_191_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_191_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_191_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_191_44:
.Lgcsite_.LTp9_11:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_191_46
.Lmatch_defer_α_191_45:
.Lgcsite_.LTp9_10:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_191_47
.Lmatch_defer_α_191_42:
.Lgcsite_.LTp9_9:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_191_46
.Lmatch_defer_α_191_43:
.Lgcsite_.LTp9_8:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_191_47
.Lmatch_defer_α_191_141:
                        lea              rcx, [rip + .Lmatch_defer_α_191_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_191_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_191_142]
                        lea              rdx, [rip + .Lmatch_defer_α_191_143]
                                                                              jmp   rax
.Lmatch_defer_α_191_142:
.Lgcsite_.LTp9_7:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_191_46
.Lmatch_defer_α_191_143:
.Lgcsite_.LTp9_6:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_191_47
.Lmatch_defer_α_191_46: mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp9_5:       mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_191_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_191_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp9_4:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_191_2
.Lmatch_defer_α_191_47: mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp9_3:       mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_191_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_191_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp9_2:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_191_2
.Lmatch_defer_α_191_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_191_48
.Lmatch_defer_α_191_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp9_1:       add              rsp, 32
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
.Lgcsite_.LTp9_0:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_191_49: test             eax, eax;                            jns   .Lmatch_defer_α_191_240
                        add              rsp, 16;                             jmp   .LTp9_ω
.Lmatch_defer_α_191_240:
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_191_6]
                        push             rcx
                        push             rax;                                 jmp   n189_match_defer_α
.Lmatch_defer_α_191_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .LTp9_ω
n188_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_191_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_191_12
                                                                              jmp   rax
.Lmatch_defer_β_191_12:                                                       jmp   qword ptr [rsp]
                        .size            n188_match_defer_bx, .-n188_match_defer_bx
                        .type            n189_match_defer_bx, @function
n189_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # jvalue
                        mov              rdx, qword ptr [r9 + 136]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_192_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_192_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp9_31:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_match_defer.cpp:151
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp9_30:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdx, qword ptr [r9 + 136];           jmp   .Lmatch_defer_α_192_10
.Lmatch_defer_α_192_9:  xor              eax, eax
.Lmatch_defer_α_192_10: test             rax, rax;                            jz    .Lmatch_defer_α_192_0
.Lmatch_defer_α_192_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_192_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_192_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_192_4:                                                        jmp   n190_match_defer_α
.Lmatch_defer_α_192_5:  add              rsp, 16;                             jmp   n188_match_defer_β
.Lmatch_defer_α_192_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        lea              rdi, [r9 + 128]                      # jvalue
                        xor              esi, esi
                        mov              rdx, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open_cell@PLT
.Lgcsite_.LTp9_29:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_192_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_192_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp9_28:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_192_2:  test             rax, rax;                            je    .Lmatch_defer_α_192_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_192_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_192_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_192_141
                        lea              rcx, [rip + .Lmatch_defer_α_192_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_192_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_192_42]
                        lea              rdx, [rip + .Lmatch_defer_α_192_43]; jmp   rax
.Lmatch_defer_α_192_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_192_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_192_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_192_44:
.Lgcsite_.LTp9_27:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_192_46
.Lmatch_defer_α_192_45:
.Lgcsite_.LTp9_26:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_192_47
.Lmatch_defer_α_192_42:
.Lgcsite_.LTp9_25:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_192_46
.Lmatch_defer_α_192_43:
.Lgcsite_.LTp9_24:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_192_47
.Lmatch_defer_α_192_141:
                        lea              rcx, [rip + .Lmatch_defer_α_192_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_192_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_192_142]
                        lea              rdx, [rip + .Lmatch_defer_α_192_143]
                                                                              jmp   rax
.Lmatch_defer_α_192_142:
.Lgcsite_.LTp9_23:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_192_46
.Lmatch_defer_α_192_143:
.Lgcsite_.LTp9_22:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_192_47
.Lmatch_defer_α_192_46: mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp9_21:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_192_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_192_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp9_20:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_192_2
.Lmatch_defer_α_192_47: mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp9_19:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_192_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_192_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp9_18:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_192_2
.Lmatch_defer_α_192_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_192_48
.Lmatch_defer_α_192_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp9_17:      add              rsp, 32
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
.Lgcsite_.LTp9_16:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_192_49: test             eax, eax;                            jns   .Lmatch_defer_α_192_240
                        add              rsp, 16;                             jmp   n188_match_defer_β
.Lmatch_defer_α_192_240:
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_192_6]
                        push             rcx
                        push             rax;                                 jmp   n190_match_defer_α
.Lmatch_defer_α_192_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n188_match_defer_β
n189_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_192_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_192_12
                                                                              jmp   rax
.Lmatch_defer_β_192_12:                                                       jmp   qword ptr [rsp]
                        .size            n189_match_defer_bx, .-n189_match_defer_bx
                        .type            n190_match_defer_bx, @function
n190_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_match_defer_α:     sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_193_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_193_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_193_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_193_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_193_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_193_18
.Lmatch_defer_α_193_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp9_47:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
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
                        test             rax, rax;                            je    .Lmatch_defer_α_193_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_193_54: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp9_46:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_193_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_193_16:
.Lmatch_defer_α_193_18: test             rax, rax;                            jz    .Lmatch_defer_α_193_0
.Lmatch_defer_α_193_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_193_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_193_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_193_4:                                                        jmp   .LTp9_γ
.Lmatch_defer_α_193_5:  add              rsp, 16;                             jmp   n189_match_defer_β
.Lmatch_defer_α_193_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp9_45:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_193_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_193_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp9_44:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_193_2:  test             rax, rax;                            je    .Lmatch_defer_α_193_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_193_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_193_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_193_141
                        lea              rcx, [rip + .Lmatch_defer_α_193_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_193_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_193_42]
                        lea              rdx, [rip + .Lmatch_defer_α_193_43]; jmp   rax
.Lmatch_defer_α_193_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_193_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_193_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_193_44:
.Lgcsite_.LTp9_43:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_193_46
.Lmatch_defer_α_193_45:
.Lgcsite_.LTp9_42:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_193_47
.Lmatch_defer_α_193_42:
.Lgcsite_.LTp9_41:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_193_46
.Lmatch_defer_α_193_43:
.Lgcsite_.LTp9_40:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_193_47
.Lmatch_defer_α_193_141:
                        lea              rcx, [rip + .Lmatch_defer_α_193_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_193_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_193_142]
                        lea              rdx, [rip + .Lmatch_defer_α_193_143]
                                                                              jmp   rax
.Lmatch_defer_α_193_142:
.Lgcsite_.LTp9_39:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_193_46
.Lmatch_defer_α_193_143:
.Lgcsite_.LTp9_38:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_193_47
.Lmatch_defer_α_193_46: mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp9_37:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_193_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_193_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp9_36:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_193_2
.Lmatch_defer_α_193_47: mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp9_35:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_193_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_193_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp9_34:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_193_2
.Lmatch_defer_α_193_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_193_48
.Lmatch_defer_α_193_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp9_33:      add              rsp, 32
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
.Lgcsite_.LTp9_32:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_193_49: test             eax, eax;                            jns   .Lmatch_defer_α_193_240
                        add              rsp, 16;                             jmp   n189_match_defer_β
.Lmatch_defer_α_193_240:
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_193_6]
                        push             rcx
                        push             rax;                                 jmp   .LTp9_γ
.Lmatch_defer_α_193_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n189_match_defer_β
n190_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_193_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_193_12
                                                                              jmp   rax
.Lmatch_defer_β_193_12:                                                       jmp   qword ptr [rsp]
                        .size            n190_match_defer_bx, .-n190_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp9_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp9_β:
                                                                              jmp   n190_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
.LTp9_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + .LTp9_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.LTp9_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_.LTp9:
                        .quad            241864625498
                        .quad            17179869208
                        .quad            0
                        .quad            56
                        .quad            8
                        .quad            8804682956760
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcsites_.LTp9_9:      .quad            48
                        .quad            .Lgcmap_.LTp9
                        .quad            0
                        .quad            .Lgcsite_.LTp9_0
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_1
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp9_7
                        .quad            196610
                        .quad            .Lgcsite_.LTp9_8
                        .quad            196610
                        .quad            .Lgcsite_.LTp9_9
                        .quad            196610
                        .quad            .Lgcsite_.LTp9_10
                        .quad            196610
                        .quad            .Lgcsite_.LTp9_11
                        .quad            196610
                        .quad            .Lgcsite_.LTp9_12
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_13
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_14
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_15
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_16
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_17
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_18
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_19
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_20
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_21
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_22
                        .quad            196610
                        .quad            .Lgcsite_.LTp9_23
                        .quad            196610
                        .quad            .Lgcsite_.LTp9_24
                        .quad            196610
                        .quad            .Lgcsite_.LTp9_25
                        .quad            196610
                        .quad            .Lgcsite_.LTp9_26
                        .quad            196610
                        .quad            .Lgcsite_.LTp9_27
                        .quad            196610
                        .quad            .Lgcsite_.LTp9_28
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_29
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_30
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_31
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_32
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_33
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_34
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_35
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_36
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_37
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_38
                        .quad            196610
                        .quad            .Lgcsite_.LTp9_39
                        .quad            196610
                        .quad            .Lgcsite_.LTp9_40
                        .quad            196610
                        .quad            .Lgcsite_.LTp9_41
                        .quad            196610
                        .quad            .Lgcsite_.LTp9_42
                        .quad            196610
                        .quad            .Lgcsite_.LTp9_43
                        .quad            196610
                        .quad            .Lgcsite_.LTp9_44
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_45
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_46
                        .quad            196609
                        .quad            .Lgcsite_.LTp9_47
                        .quad            196609
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp9:            .quad            .LTp9
                        .long            96, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.LTp10:
.LTp10_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 56
                        lea              rax, [rip + .Lgcmap_.LTp10]
                        mov              qword ptr [rbp + -48], rax
                        mov              dword ptr [rbp + -56], 160
                        mov              dword ptr [rbp + -52], 56
                        xorps            xmm0, xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n194_match_pos_bx, @function
n194_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_match_pos_α:       mov              rax, 0
                        cmp              r14d, eax;                           jne   .LTp10_ω
                                                                              jmp   n195_match_defer_α
n194_match_pos_β:                                                             jmp   .LTp10_ω
                        .size            n194_match_pos_bx, .-n194_match_pos_bx
                        .type            n195_match_defer_bx, @function
n195_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_match_defer_α:     sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_198_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_198_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_198_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_198_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_198_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_198_18
.Lmatch_defer_α_198_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp10_15:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
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
                        test             rax, rax;                            je    .Lmatch_defer_α_198_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_198_54: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp10_14:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_198_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_198_16:
.Lmatch_defer_α_198_18: test             rax, rax;                            jz    .Lmatch_defer_α_198_0
.Lmatch_defer_α_198_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_198_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_198_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_198_4:                                                        jmp   n196_match_rpos_α
.Lmatch_defer_α_198_5:  add              rsp, 16;                             jmp   .LTp10_ω
.Lmatch_defer_α_198_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              r8, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
.Lgcsite_.LTp10_13:     mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_198_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_198_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp10_12:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_198_2:  test             rax, rax;                            je    .Lmatch_defer_α_198_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_198_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_198_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_198_141
                        lea              rcx, [rip + .Lmatch_defer_α_198_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_198_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_198_42]
                        lea              rdx, [rip + .Lmatch_defer_α_198_43]; jmp   rax
.Lmatch_defer_α_198_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_198_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_198_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_198_44:
.Lgcsite_.LTp10_11:     add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_198_46
.Lmatch_defer_α_198_45:
.Lgcsite_.LTp10_10:     add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_198_47
.Lmatch_defer_α_198_42:
.Lgcsite_.LTp10_9:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_198_46
.Lmatch_defer_α_198_43:
.Lgcsite_.LTp10_8:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_198_47
.Lmatch_defer_α_198_141:
                        lea              rcx, [rip + .Lmatch_defer_α_198_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_198_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_198_142]
                        lea              rdx, [rip + .Lmatch_defer_α_198_143]
                                                                              jmp   rax
.Lmatch_defer_α_198_142:
.Lgcsite_.LTp10_7:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_198_46
.Lmatch_defer_α_198_143:
.Lgcsite_.LTp10_6:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_198_47
.Lmatch_defer_α_198_46: mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp10_5:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_198_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_198_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp10_4:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_198_2
.Lmatch_defer_α_198_47: mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp10_3:      mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_198_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_198_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp10_2:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_198_2
.Lmatch_defer_α_198_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_198_48
.Lmatch_defer_α_198_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp10_1:      add              rsp, 32
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
.Lgcsite_.LTp10_0:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_198_49: test             eax, eax;                            jns   .Lmatch_defer_α_198_240
                        add              rsp, 16;                             jmp   .LTp10_ω
.Lmatch_defer_α_198_240:
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_198_6]
                        push             rcx
                        push             rax;                                 jmp   n196_match_rpos_α
.Lmatch_defer_α_198_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .LTp10_ω
n195_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_198_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_198_12
                                                                              jmp   rax
.Lmatch_defer_β_198_12:                                                       jmp   qword ptr [rsp]
                        .size            n195_match_defer_bx, .-n195_match_defer_bx
                        .type            n196_match_rpos_bx, @function
n196_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_match_rpos_α:      mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n195_match_defer_β
                                                                              jmp   .LTp10_γ
n196_match_rpos_β:                                                            jmp   n195_match_defer_β
                        .size            n196_match_rpos_bx, .-n196_match_rpos_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp10_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp10_β:
                                                                              jmp   n196_match_rpos_β
#-----------------------------------------------------------------------------------------------------------------------
.LTp10_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + .LTp10_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.LTp10_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_.LTp10:
                        .quad            241864625498
                        .quad            17179869208
                        .quad            0
                        .quad            56
                        .quad            8
                        .quad            8804682956760
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcsites_.LTp10_10:    .quad            16
                        .quad            .Lgcmap_.LTp10
                        .quad            0
                        .quad            .Lgcsite_.LTp10_0
                        .quad            196609
                        .quad            .Lgcsite_.LTp10_1
                        .quad            196609
                        .quad            .Lgcsite_.LTp10_2
                        .quad            196609
                        .quad            .Lgcsite_.LTp10_3
                        .quad            196609
                        .quad            .Lgcsite_.LTp10_4
                        .quad            196609
                        .quad            .Lgcsite_.LTp10_5
                        .quad            196609
                        .quad            .Lgcsite_.LTp10_6
                        .quad            196610
                        .quad            .Lgcsite_.LTp10_7
                        .quad            196610
                        .quad            .Lgcsite_.LTp10_8
                        .quad            196610
                        .quad            .Lgcsite_.LTp10_9
                        .quad            196610
                        .quad            .Lgcsite_.LTp10_10
                        .quad            196610
                        .quad            .Lgcsite_.LTp10_11
                        .quad            196610
                        .quad            .Lgcsite_.LTp10_12
                        .quad            196609
                        .quad            .Lgcsite_.LTp10_13
                        .quad            196609
                        .quad            .Lgcsite_.LTp10_14
                        .quad            196609
                        .quad            .Lgcsite_.LTp10_15
                        .quad            196609
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp10:           .quad            .LTp10
                        .long            80, 0
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
                        mov              edi, 32
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 32
                        call             gva_register@PLT
                        lea              rdi, [rip + __alpha_cellp_tab]
                        call             rt_ab_cell_bind_table@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 2
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
.Lgvan0:                .string          " "
.Lgvan1:                .string          "jescape"
.Lgvan2:                .string          "jchunk"
.Lgvan3:                .string          "jstring"
.Lgvan4:                .string          "jnumber"
.Lgvan5:                .string          "jmember"
.Lgvan6:                .string          "jobject"
.Lgvan7:                .string          "jarray"
.Lgvan8:                .string          "jvalue"
.Lgvan9:                .string          "jelement"
.Lgvan10:               .string          "json"
.Lgvan11:               .string          "src"
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
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "error"
.Llbln1:                .string          "END"
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 1864], rax
                        mov              dword ptr [rsp + 1856], 160
                        mov              dword ptr [rsp + 1860], 1872
                        mov              eax, 0
main_α_body:
                        sub              rsp, 0
                        .type            n200_call_bx, @function
n200_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_call_α:            sub              rsp, 16
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
1:                      cmp              al, 104;                             jne   .Lcall_α_327_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n201_call_α
.Lcall_α_327_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n201_call_α
n200_call_β:            add              rsp, 16
                        add              rsp, -16;                            jmp   n201_call_α
                        .size            n200_call_bx, .-n200_call_bx
                        .type            n201_call_bx, @function
n201_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_call_α:            sub              rsp, 16
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
1:                      cmp              al, 104;                             jne   .Lcall_α_328_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n202_statement_begin_α
.Lcall_α_328_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n202_statement_begin_α
n201_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n202_statement_begin_α
                        .size            n201_call_bx, .-n201_call_bx
                        .type            n202_statement_begin_bx, @function
n202_statement_begin_bx:
                        .pushsection     .rodata
.Lstnof1:               .string          "snobol4/json/json-match.sno"
                        .popsection
.Lstatement_begin_α_329_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_329_stno
                        .long            1
                        .long            2
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n202_statement_begin_α:                                                       jmp   n203_lit_integer_α
n202_statement_begin_β:                                                       jmp   n206_setexit_test_α
                        .size            n202_statement_begin_bx, .-n202_statement_begin_bx
                        .type            n203_lit_integer_bx, @function
n203_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_331_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n204_kw_assign_snobol4_α
.Llit_integer_α_331_0:  .quad            0
                        .size            n203_lit_integer_bx, .-n203_lit_integer_bx
                        .type            n204_kw_assign_snobol4_bx, @function
n204_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_332_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_write_idx@PLT
.Lgcsite_main_5:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_332_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n202_statement_begin_β
.Lkw_assign_snobol4_α_332_240:
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
.Lgcsite_main_4:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n205_statement_end_α
.Lkw_assign_snobol4_α_332_0:
                        .quad            1
                        .size            n204_kw_assign_snobol4_bx, .-n204_kw_assign_snobol4_bx
                        .type            n205_statement_end_bx, @function
n205_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_end_α:   add              rsp, 32;                             jmp   n207_statement_begin_α
                        .size            n205_statement_end_bx, .-n205_statement_end_bx
                        .type            n206_setexit_test_bx, @function
n206_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_335_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_335_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_335_61:
.Lsetexit_test_α_335_1:                                                       jmp   n207_statement_begin_α
                        .size            n206_setexit_test_bx, .-n206_setexit_test_bx
                        .type            n207_statement_begin_bx, @function
n207_statement_begin_bx:
.Lstatement_begin_α_336_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_336_stno
                        .long            2
                        .long            3
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 $' '           =  SPAN(' ' CHAR(9) CHAR(10) CHAR(13)) | ''
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n207_statement_begin_α:                                                       jmp   n208_lit_string_α
n207_statement_begin_β:                                                       jmp   n212_setexit_test_α
                        .size            n207_statement_begin_bx, .-n207_statement_begin_bx
                        .type            n208_lit_string_bx, @function
n208_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_338_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n209_call_α
.Llit_string_α_338_0:   .quad            .Lthk_.LTp0
                        .size            n208_lit_string_bx, .-n208_lit_string_bx
                        .type            n209_call_bx, @function
n209_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_call_α:            sub              rsp, 16
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
.Lgcsite_main_6:        mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_7:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_339_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n207_statement_begin_β
.Lcall_α_339_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n210_assign_α
n209_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n207_statement_begin_β
                        .size            n209_call_bx, .-n209_call_bx
                        .type            n210_assign_bx, @function
n210_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              #  
                        mov              qword ptr [r9 + 8], rdx;             jmp   n211_statement_end_α
                        .size            n210_assign_bx, .-n210_assign_bx
                        .type            n211_statement_end_bx, @function
n211_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_statement_end_α:   add              rsp, 32;                             jmp   n213_statement_begin_α
                        .size            n211_statement_end_bx, .-n211_statement_end_bx
                        .type            n212_setexit_test_bx, @function
n212_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_343_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_343_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_343_61:
.Lsetexit_test_α_343_1:                                                       jmp   n213_statement_begin_α
                        .size            n212_setexit_test_bx, .-n212_setexit_test_bx
                        .type            n213_statement_begin_bx, @function
n213_statement_begin_bx:
.Lstatement_begin_α_344_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_344_stno
                        .long            3
                        .long            5
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 jescape        =  '\'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n213_statement_begin_α:                                                       jmp   n214_lit_string_α
n213_statement_begin_β:                                                       jmp   n218_setexit_test_α
                        .size            n213_statement_begin_bx, .-n213_statement_begin_bx
                        .type            n214_lit_string_bx, @function
n214_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_346_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n215_call_α
.Llit_string_α_346_0:   .quad            .Lthk_.LTp1
                        .size            n214_lit_string_bx, .-n214_lit_string_bx
                        .type            n215_call_bx, @function
n215_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_call_α:            sub              rsp, 16
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
.Lgcsite_main_8:        mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_9:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_347_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n213_statement_begin_β
.Lcall_α_347_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n216_assign_α
n215_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n213_statement_begin_β
                        .size            n215_call_bx, .-n215_call_bx
                        .type            n216_assign_bx, @function
n216_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # jescape
                        mov              qword ptr [r9 + 24], rdx;            jmp   n217_statement_end_α
                        .size            n216_assign_bx, .-n216_assign_bx
                        .type            n217_statement_end_bx, @function
n217_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_end_α:   add              rsp, 32;                             jmp   n219_statement_begin_α
                        .size            n217_statement_end_bx, .-n217_statement_end_bx
                        .type            n218_setexit_test_bx, @function
n218_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_351_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_351_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_351_61:
.Lsetexit_test_α_351_1:                                                       jmp   n219_statement_begin_α
                        .size            n218_setexit_test_bx, .-n218_setexit_test_bx
                        .type            n219_statement_begin_bx, @function
n219_statement_begin_bx:
.Lstatement_begin_α_352_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_352_stno
                        .long            4
                        .long            13
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 jchunk         =  BREAK('"\' CHAR(10) CHAR(13))
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n219_statement_begin_α:                                                       jmp   n220_lit_string_α
n219_statement_begin_β:                                                       jmp   n224_setexit_test_α
                        .size            n219_statement_begin_bx, .-n219_statement_begin_bx
                        .type            n220_lit_string_bx, @function
n220_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_354_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n221_call_α
.Llit_string_α_354_0:   .quad            .Lthk_.LTp2
                        .size            n220_lit_string_bx, .-n220_lit_string_bx
                        .type            n221_call_bx, @function
n221_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_call_α:            sub              rsp, 16
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
.Lgcsite_main_10:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_11:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_355_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n219_statement_begin_β
.Lcall_α_355_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n222_assign_α
n221_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n219_statement_begin_β
                        .size            n221_call_bx, .-n221_call_bx
                        .type            n222_assign_bx, @function
n222_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # jchunk
                        mov              qword ptr [r9 + 40], rdx;            jmp   n223_statement_end_α
                        .size            n222_assign_bx, .-n222_assign_bx
                        .type            n223_statement_end_bx, @function
n223_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_end_α:   add              rsp, 32;                             jmp   n225_statement_begin_α
                        .size            n223_statement_end_bx, .-n223_statement_end_bx
                        .type            n224_setexit_test_bx, @function
n224_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_359_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_359_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_359_61:
.Lsetexit_test_α_359_1:                                                       jmp   n225_statement_begin_α
                        .size            n224_setexit_test_bx, .-n224_setexit_test_bx
                        .type            n225_statement_begin_bx, @function
n225_statement_begin_bx:
.Lstatement_begin_α_360_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_360_stno
                        .long            5
                        .long            14
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 jstring        =  '"' jchunk ARBNO(jescape jchunk) '"'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n225_statement_begin_α:                                                       jmp   n226_lit_string_α
n225_statement_begin_β:                                                       jmp   n233_setexit_test_α
                        .size            n225_statement_begin_bx, .-n225_statement_begin_bx
                        .type            n226_lit_string_bx, @function
n226_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_362_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n227_var_α
.Llit_string_α_362_0:   .quad            .Lthk_.LTp3
                        .size            n226_lit_string_bx, .-n226_lit_string_bx
                        .type            n227_var_bx, @function
n227_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # jchunk
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n228_var_α
n227_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n225_statement_begin_β
                        .size            n227_var_bx, .-n227_var_bx
                        .type            n228_var_bx, @function
n228_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # jescape
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n229_var_α
n228_var_β:             add              rsp, 16;                             jmp   n227_var_β
                        .size            n228_var_bx, .-n228_var_bx
                        .type            n229_var_bx, @function
n229_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # jchunk
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n230_call_α
n229_var_β:             add              rsp, 16;                             jmp   n228_var_β
                        .size            n229_var_bx, .-n229_var_bx
                        .type            n230_call_bx, @function
n230_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_call_α:            sub              rsp, 16
                        sub              rsp, 64
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_12:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_13:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 64
                        cmp              al, 104;                             jne   .Lcall_α_366_240
                        add              rsp, 16;                             jmp   n229_var_β
.Lcall_α_366_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n231_assign_α
n230_call_β:            add              rsp, 16;                             jmp   n229_var_β
                        .size            n230_call_bx, .-n230_call_bx
                        .type            n231_assign_bx, @function
n231_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # jstring
                        mov              qword ptr [r9 + 56], rdx;            jmp   n232_statement_end_α
                        .size            n231_assign_bx, .-n231_assign_bx
                        .type            n232_statement_end_bx, @function
n232_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_statement_end_α:   add              rsp, 80;                             jmp   n234_statement_begin_α
                        .size            n232_statement_end_bx, .-n232_statement_end_bx
                        .type            n233_setexit_test_bx, @function
n233_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_370_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_370_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_370_61:
.Lsetexit_test_α_370_1:                                                       jmp   n234_statement_begin_α
                        .size            n233_setexit_test_bx, .-n233_setexit_test_bx
                        .type            n234_statement_begin_bx, @function
n234_statement_begin_bx:
.Lstatement_begin_α_371_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_371_stno
                        .long            6
                        .long            16
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 jnumber        =  ('-' | '')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n234_statement_begin_α:                                                       jmp   n235_lit_string_α
n234_statement_begin_β:                                                       jmp   n239_setexit_test_α
                        .size            n234_statement_begin_bx, .-n234_statement_begin_bx
                        .type            n235_lit_string_bx, @function
n235_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_373_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n236_call_α
.Llit_string_α_373_0:   .quad            .Lthk_.LTp4
                        .size            n235_lit_string_bx, .-n235_lit_string_bx
                        .type            n236_call_bx, @function
n236_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_call_α:            sub              rsp, 16
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
.Lgcsite_main_14:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_15:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_374_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n234_statement_begin_β
.Lcall_α_374_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n237_assign_α
n236_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n234_statement_begin_β
                        .size            n236_call_bx, .-n236_call_bx
                        .type            n237_assign_bx, @function
n237_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # jnumber
                        mov              qword ptr [r9 + 72], rdx;            jmp   n238_statement_end_α
                        .size            n237_assign_bx, .-n237_assign_bx
                        .type            n238_statement_end_bx, @function
n238_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_end_α:   add              rsp, 32;                             jmp   n240_statement_begin_α
                        .size            n238_statement_end_bx, .-n238_statement_end_bx
                        .type            n239_setexit_test_bx, @function
n239_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_378_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_378_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_378_61:
.Lsetexit_test_α_378_1:                                                       jmp   n240_statement_begin_α
                        .size            n239_setexit_test_bx, .-n239_setexit_test_bx
                        .type            n240_statement_begin_bx, @function
n240_statement_begin_bx:
.Lstatement_begin_α_379_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_379_stno
                        .long            7
                        .long            23
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 jmember        =  $' ' jstring $' ' ':' *jelement
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 23 0
n240_statement_begin_α:                                                       jmp   n241_lit_string_α
n240_statement_begin_β:                                                       jmp   n248_setexit_test_α
                        .size            n240_statement_begin_bx, .-n240_statement_begin_bx
                        .type            n241_lit_string_bx, @function
n241_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_381_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n242_var_α
.Llit_string_α_381_0:   .quad            .Lthk_.LTp5
                        .size            n241_lit_string_bx, .-n241_lit_string_bx
                        .type            n242_var_bx, @function
n242_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              #  
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n243_var_α
n242_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n240_statement_begin_β
                        .size            n242_var_bx, .-n242_var_bx
                        .type            n243_var_bx, @function
n243_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # jstring
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n244_var_α
n243_var_β:             add              rsp, 16;                             jmp   n242_var_β
                        .size            n243_var_bx, .-n243_var_bx
                        .type            n244_var_bx, @function
n244_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              #  
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n245_call_α
n244_var_β:             add              rsp, 16;                             jmp   n243_var_β
                        .size            n244_var_bx, .-n244_var_bx
                        .type            n245_call_bx, @function
n245_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_call_α:            sub              rsp, 16
                        sub              rsp, 64
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_16:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_17:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 64
                        cmp              al, 104;                             jne   .Lcall_α_385_240
                        add              rsp, 16;                             jmp   n244_var_β
.Lcall_α_385_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n246_assign_α
n245_call_β:            add              rsp, 16;                             jmp   n244_var_β
                        .size            n245_call_bx, .-n245_call_bx
                        .type            n246_assign_bx, @function
n246_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # jmember
                        mov              qword ptr [r9 + 88], rdx;            jmp   n247_statement_end_α
                        .size            n246_assign_bx, .-n246_assign_bx
                        .type            n247_statement_end_bx, @function
n247_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_end_α:   add              rsp, 80;                             jmp   n249_statement_begin_α
                        .size            n247_statement_end_bx, .-n247_statement_end_bx
                        .type            n248_setexit_test_bx, @function
n248_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_389_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_389_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_389_61:
.Lsetexit_test_α_389_1:                                                       jmp   n249_statement_begin_α
                        .size            n248_setexit_test_bx, .-n248_setexit_test_bx
                        .type            n249_statement_begin_bx, @function
n249_statement_begin_bx:
.Lstatement_begin_α_390_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_390_stno
                        .long            8
                        .long            24
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 jobject        =  '{' ( jmember ARBNO($' ' ',' jmember) | $' ' ) '}'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n249_statement_begin_α:                                                       jmp   n250_lit_string_α
n249_statement_begin_β:                                                       jmp   n258_setexit_test_α
                        .size            n249_statement_begin_bx, .-n249_statement_begin_bx
                        .type            n250_lit_string_bx, @function
n250_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_392_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n251_var_α
.Llit_string_α_392_0:   .quad            .Lthk_.LTp6
                        .size            n250_lit_string_bx, .-n250_lit_string_bx
                        .type            n251_var_bx, @function
n251_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # jmember
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n252_var_α
n251_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n249_statement_begin_β
                        .size            n251_var_bx, .-n251_var_bx
                        .type            n252_var_bx, @function
n252_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              #  
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n253_var_α
n252_var_β:             add              rsp, 16;                             jmp   n251_var_β
                        .size            n252_var_bx, .-n252_var_bx
                        .type            n253_var_bx, @function
n253_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # jmember
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n254_var_α
n253_var_β:             add              rsp, 16;                             jmp   n252_var_β
                        .size            n253_var_bx, .-n253_var_bx
                        .type            n254_var_bx, @function
n254_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              #  
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n255_call_α
n254_var_β:             add              rsp, 16;                             jmp   n253_var_β
                        .size            n254_var_bx, .-n254_var_bx
                        .type            n255_call_bx, @function
n255_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_call_α:            sub              rsp, 16
                        sub              rsp, 80
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_18:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_19:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 80
                        cmp              al, 104;                             jne   .Lcall_α_397_240
                        add              rsp, 16;                             jmp   n254_var_β
.Lcall_α_397_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n256_assign_α
n255_call_β:            add              rsp, 16;                             jmp   n254_var_β
                        .size            n255_call_bx, .-n255_call_bx
                        .type            n256_assign_bx, @function
n256_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # jobject
                        mov              qword ptr [r9 + 104], rdx;           jmp   n257_statement_end_α
                        .size            n256_assign_bx, .-n256_assign_bx
                        .type            n257_statement_end_bx, @function
n257_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_statement_end_α:   add              rsp, 96;                             jmp   n259_statement_begin_α
                        .size            n257_statement_end_bx, .-n257_statement_end_bx
                        .type            n258_setexit_test_bx, @function
n258_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_401_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_401_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_401_61:
.Lsetexit_test_α_401_1:                                                       jmp   n259_statement_begin_α
                        .size            n258_setexit_test_bx, .-n258_setexit_test_bx
                        .type            n259_statement_begin_bx, @function
n259_statement_begin_bx:
.Lstatement_begin_α_402_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_402_stno
                        .long            9
                        .long            25
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 jarray         =  '[' ( *jelement ARBNO($' ' ',' *jelement) | $' ' ) ']'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n259_statement_begin_α:                                                       jmp   n260_lit_string_α
n259_statement_begin_β:                                                       jmp   n266_setexit_test_α
                        .size            n259_statement_begin_bx, .-n259_statement_begin_bx
                        .type            n260_lit_string_bx, @function
n260_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_404_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n261_var_α
.Llit_string_α_404_0:   .quad            .Lthk_.LTp7
                        .size            n260_lit_string_bx, .-n260_lit_string_bx
                        .type            n261_var_bx, @function
n261_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              #  
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n262_var_α
n261_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n259_statement_begin_β
                        .size            n261_var_bx, .-n261_var_bx
                        .type            n262_var_bx, @function
n262_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              #  
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n263_call_α
n262_var_β:             add              rsp, 16;                             jmp   n261_var_β
                        .size            n262_var_bx, .-n262_var_bx
                        .type            n263_call_bx, @function
n263_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_call_α:            sub              rsp, 16
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
                        lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_20:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_21:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_407_240
                        add              rsp, 16;                             jmp   n262_var_β
.Lcall_α_407_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n264_assign_α
n263_call_β:            add              rsp, 16;                             jmp   n262_var_β
                        .size            n263_call_bx, .-n263_call_bx
                        .type            n264_assign_bx, @function
n264_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # jarray
                        mov              qword ptr [r9 + 120], rdx;           jmp   n265_statement_end_α
                        .size            n264_assign_bx, .-n264_assign_bx
                        .type            n265_statement_end_bx, @function
n265_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_statement_end_α:   add              rsp, 64;                             jmp   n267_statement_begin_α
                        .size            n265_statement_end_bx, .-n265_statement_end_bx
                        .type            n266_setexit_test_bx, @function
n266_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_411_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_411_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_411_61:
.Lsetexit_test_α_411_1:                                                       jmp   n267_statement_begin_α
                        .size            n266_setexit_test_bx, .-n266_setexit_test_bx
                        .type            n267_statement_begin_bx, @function
n267_statement_begin_bx:
.Lstatement_begin_α_412_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_412_stno
                        .long            10
                        .long            26
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 jvalue         =  ( jstring
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 26 0
n267_statement_begin_α:                                                       jmp   n268_lit_string_α
n267_statement_begin_β:                                                       jmp   n276_setexit_test_α
                        .size            n267_statement_begin_bx, .-n267_statement_begin_bx
                        .type            n268_lit_string_bx, @function
n268_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_414_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n269_var_α
.Llit_string_α_414_0:   .quad            .Lthk_.LTp8
                        .size            n268_lit_string_bx, .-n268_lit_string_bx
                        .type            n269_var_bx, @function
n269_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # jstring
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n270_var_α
n269_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n267_statement_begin_β
                        .size            n269_var_bx, .-n269_var_bx
                        .type            n270_var_bx, @function
n270_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # jnumber
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n271_var_α
n270_var_β:             add              rsp, 16;                             jmp   n269_var_β
                        .size            n270_var_bx, .-n270_var_bx
                        .type            n271_var_bx, @function
n271_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # jobject
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n272_var_α
n271_var_β:             add              rsp, 16;                             jmp   n270_var_β
                        .size            n271_var_bx, .-n271_var_bx
                        .type            n272_var_bx, @function
n272_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # jarray
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n273_call_α
n272_var_β:             add              rsp, 16;                             jmp   n271_var_β
                        .size            n272_var_bx, .-n272_var_bx
                        .type            n273_call_bx, @function
n273_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_call_α:            sub              rsp, 16
                        sub              rsp, 80
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_22:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_23:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 80
                        cmp              al, 104;                             jne   .Lcall_α_419_240
                        add              rsp, 16;                             jmp   n272_var_β
.Lcall_α_419_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n274_assign_α
n273_call_β:            add              rsp, 16;                             jmp   n272_var_β
                        .size            n273_call_bx, .-n273_call_bx
                        .type            n274_assign_bx, @function
n274_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # jvalue
                        mov              qword ptr [r9 + 136], rdx;           jmp   n275_statement_end_α
                        .size            n274_assign_bx, .-n274_assign_bx
                        .type            n275_statement_end_bx, @function
n275_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_statement_end_α:   add              rsp, 96;                             jmp   n277_statement_begin_α
                        .size            n275_statement_end_bx, .-n275_statement_end_bx
                        .type            n276_setexit_test_bx, @function
n276_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_423_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_423_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_423_61:
.Lsetexit_test_α_423_1:                                                       jmp   n277_statement_begin_α
                        .size            n276_setexit_test_bx, .-n276_setexit_test_bx
                        .type            n277_statement_begin_bx, @function
n277_statement_begin_bx:
.Lstatement_begin_α_424_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_424_stno
                        .long            11
                        .long            34
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 jelement       =  $' ' *jvalue $' '
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n277_statement_begin_α:                                                       jmp   n278_lit_string_α
n277_statement_begin_β:                                                       jmp   n284_setexit_test_α
                        .size            n277_statement_begin_bx, .-n277_statement_begin_bx
                        .type            n278_lit_string_bx, @function
n278_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_426_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n279_var_α
.Llit_string_α_426_0:   .quad            .Lthk_.LTp9
                        .size            n278_lit_string_bx, .-n278_lit_string_bx
                        .type            n279_var_bx, @function
n279_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              #  
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n280_var_α
n279_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n277_statement_begin_β
                        .size            n279_var_bx, .-n279_var_bx
                        .type            n280_var_bx, @function
n280_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              #  
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n281_call_α
n280_var_β:             add              rsp, 16;                             jmp   n279_var_β
                        .size            n280_var_bx, .-n280_var_bx
                        .type            n281_call_bx, @function
n281_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_call_α:            sub              rsp, 16
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
                        lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_24:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_25:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_429_240
                        add              rsp, 16;                             jmp   n280_var_β
.Lcall_α_429_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n282_assign_α
n281_call_β:            add              rsp, 16;                             jmp   n280_var_β
                        .size            n281_call_bx, .-n281_call_bx
                        .type            n282_assign_bx, @function
n282_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # jelement
                        mov              qword ptr [r9 + 152], rdx;           jmp   n283_statement_end_α
                        .size            n282_assign_bx, .-n282_assign_bx
                        .type            n283_statement_end_bx, @function
n283_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_statement_end_α:   add              rsp, 64;                             jmp   n285_statement_begin_α
                        .size            n283_statement_end_bx, .-n283_statement_end_bx
                        .type            n284_setexit_test_bx, @function
n284_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_433_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_433_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_433_61:
.Lsetexit_test_α_433_1:                                                       jmp   n285_statement_begin_α
                        .size            n284_setexit_test_bx, .-n284_setexit_test_bx
                        .type            n285_statement_begin_bx, @function
n285_statement_begin_bx:
.Lstatement_begin_α_434_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_434_stno
                        .long            12
                        .long            35
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 json           =  POS(0) jelement RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n285_statement_begin_α:                                                       jmp   n286_lit_string_α
n285_statement_begin_β:                                                       jmp   n291_setexit_test_α
                        .size            n285_statement_begin_bx, .-n285_statement_begin_bx
                        .type            n286_lit_string_bx, @function
n286_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_436_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n287_var_α
.Llit_string_α_436_0:   .quad            .Lthk_.LTp10
                        .size            n286_lit_string_bx, .-n286_lit_string_bx
                        .type            n287_var_bx, @function
n287_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # jelement
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n288_call_α
n287_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n285_statement_begin_β
                        .size            n287_var_bx, .-n287_var_bx
                        .type            n288_call_bx, @function
n288_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_call_α:            sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_26:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_27:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_438_240
                        add              rsp, 16;                             jmp   n287_var_β
.Lcall_α_438_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n289_assign_α
n288_call_β:            add              rsp, 16;                             jmp   n287_var_β
                        .size            n288_call_bx, .-n288_call_bx
                        .type            n289_assign_bx, @function
n289_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # json
                        mov              qword ptr [r9 + 168], rdx;           jmp   n290_statement_end_α
                        .size            n289_assign_bx, .-n289_assign_bx
                        .type            n290_statement_end_bx, @function
n290_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_statement_end_α:   add              rsp, 48;                             jmp   n292_statement_begin_α
                        .size            n290_statement_end_bx, .-n290_statement_end_bx
                        .type            n291_setexit_test_bx, @function
n291_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_442_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_442_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_442_61:
.Lsetexit_test_α_442_1:                                                       jmp   n292_statement_begin_α
                        .size            n291_setexit_test_bx, .-n291_setexit_test_bx
                        .type            n292_statement_begin_bx, @function
n292_statement_begin_bx:
.Lstatement_begin_α_443_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_443_stno
                        .long            13
                        .long            37
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n292_statement_begin_α:                                                       jmp   n293_lit_name_α
n292_statement_begin_β:                                                       jmp   n298_setexit_test_α
                        .size            n292_statement_begin_bx, .-n292_statement_begin_bx
                        .type            n293_lit_name_bx, @function
n293_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_name_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_445_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n294_lit_integer_α
.Llit_name_α_445_0:     .quad            .Llit_name_α_445_0_s
.Llit_name_α_445_0_s:   .string          "INPUT"
                        .size            n293_lit_name_bx, .-n293_lit_name_bx
                        .type            n294_lit_integer_bx, @function
n294_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_446_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n295_lit_string_α
n294_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n292_statement_begin_β
.Llit_integer_α_446_0:  .quad            9
                        .size            n294_lit_integer_bx, .-n294_lit_integer_bx
                        .type            n295_lit_string_bx, @function
n295_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_447_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n296_call_α
n295_lit_string_β:      add              rsp, 16;                             jmp   n294_lit_integer_β
.Llit_string_α_447_0:   .quad            .Llit_string_α_447_0_s
.Llit_string_α_447_0_s: .string          "[-f0 -r4194304]"
                        .size            n295_lit_string_bx, .-n295_lit_string_bx
                        .type            n296_call_bx, @function
n296_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_call_α:            sub              rsp, 16
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
.Lcall_α_bynamefnzd172: .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd172]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 360448
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl_sn4@PLT
.Lgcsite_main_28:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_29:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_448_240
                        add              rsp, 16;                             jmp   n295_lit_string_β
.Lcall_α_448_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n297_statement_end_α
n296_call_β:            add              rsp, 16;                             jmp   n295_lit_string_β
                        .size            n296_call_bx, .-n296_call_bx
                        .type            n297_statement_end_bx, @function
n297_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_statement_end_α:   add              rsp, 64;                             jmp   n299_statement_begin_α
                        .size            n297_statement_end_bx, .-n297_statement_end_bx
                        .type            n298_setexit_test_bx, @function
n298_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_451_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_451_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_451_61:
.Lsetexit_test_α_451_1:                                                       jmp   n299_statement_begin_α
                        .size            n298_setexit_test_bx, .-n298_setexit_test_bx
                        .type            n299_statement_begin_bx, @function
n299_statement_begin_bx:
.Lstatement_begin_α_452_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_452_stno
                        .long            14
                        .long            38
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 src             =   INPUT                       :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 38 0
n299_statement_begin_α:                                                       jmp   n300_var_α
n299_statement_begin_β:                                                       jmp   n303_setexit_test_α
                        .size            n299_statement_begin_bx, .-n299_statement_begin_bx
                        .type            n300_var_bx, @function
n300_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lvar_α_454_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
.Lgcsite_main_31:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_454_240
                        add              rsp, 16;                             jmp   n299_statement_begin_β
.Lvar_α_454_240:        mov              qword ptr [rsp + 0], rax             # result
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
.Lgcsite_main_30:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n301_assign_α
.Lvar_α_454_0:          .quad            .Lvar_α_454_0_s
.Lvar_α_454_0_s:        .string          "INPUT"
                        .size            n300_var_bx, .-n300_var_bx
                        .type            n301_assign_bx, @function
n301_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # src
                        mov              qword ptr [r9 + 184], rdx;           jmp   n302_statement_end_α
                        .size            n301_assign_bx, .-n301_assign_bx
                        .type            n302_statement_end_bx, @function
n302_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_statement_end_α:   add              rsp, 16;                             jmp   n304_statement_begin_α
                        .size            n302_statement_end_bx, .-n302_statement_end_bx
                        .type            n303_setexit_test_bx, @function
n303_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_458_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_458_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_458_61:
.Lsetexit_test_α_458_1:                                                       jmp   n321_statement_begin_α
                        .size            n303_setexit_test_bx, .-n303_setexit_test_bx
                        .type            n304_statement_begin_bx, @function
n304_statement_begin_bx:
.Lstatement_begin_α_459_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_459_stno
                        .long            15
                        .long            39
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 src             json                            :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 39 0
n304_statement_begin_α:                                                       jmp   n305_var_α
n304_statement_begin_β:                                                       jmp   n312_setexit_test_α
                        .size            n304_statement_begin_bx, .-n304_statement_begin_bx
                        .type            n305_var_bx, @function
n305_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # src
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n306_var_α
                        .size            n305_var_bx, .-n305_var_bx
                        .type            n306_var_bx, @function
n306_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # json
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n307_assign_α
n306_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n312_setexit_test_α
                        .size            n306_var_bx, .-n306_var_bx
                        .type            n307_assign_bx, @function
n307_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # PATV$0
                        mov              qword ptr [r9 + 200], rdx;           jmp   n308_match_begin_α
n307_assign_β:                                                                jmp   n306_var_β
                        .size            n307_assign_bx, .-n307_assign_bx
                        .type            n308_match_begin_bx, @function
n308_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_match_begin_α:     mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
.Lgcsite_main_35:       push             rbp
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
.Lgcsite_main_34:       push             rax
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
.Lgcsite_main_33:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lmatch_begin_α_465_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_465_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n309_match_defer_α
n308_match_begin_β:
.Lmatch_begin_α_465_13: lea              rsp, [rbp + -88]                     # retry_whack
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_β_465_1
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_465_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_465_1
                                                                              jmp   .Lmatch_begin_α_465_0
.Lmatch_begin_β_465_1:
.Lmatch_begin_γ_308_af:
.Lmatch_begin_ω_308_af: mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
.Lgcsite_main_32:       mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              r13, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n307_assign_β
                        .size            n308_match_begin_bx, .-n308_match_begin_bx
                        .type            n309_match_defer_bx, @function
n309_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_match_defer_α:     mov              rax, qword ptr [r9 + 192]            # PATV$0
                        mov              rdx, qword ptr [r9 + 200]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_466_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_466_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
.Lgcsite_main_51:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_match_defer.cpp:151
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_50:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdx, qword ptr [r9 + 200];           jmp   .Lmatch_defer_α_466_10
.Lmatch_defer_α_466_9:  xor              eax, eax
.Lmatch_defer_α_466_10: test             rax, rax;                            jz    .Lmatch_defer_α_466_0
.Lmatch_defer_α_466_48: mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_466_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_466_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_466_4:                                                        jmp   n310_match_end_α
.Lmatch_defer_α_466_5:  cmp              r14d, -2;                            je    .Lmatch_begin_ω_308_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_308_af
                                                                              jmp   n308_match_begin_β
.Lmatch_defer_α_466_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 32
                        lea              rdi, [r9 + 192]                      # PATV$0
                        xor              esi, esi
                        mov              rdx, rsp
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open_cell@PLT
.Lgcsite_main_49:       mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_466_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_466_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_48:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_466_2:  test             rax, rax;                            je    .Lmatch_defer_α_466_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_466_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_466_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_466_141
                        lea              rcx, [rip + .Lmatch_defer_α_466_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_466_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_466_42]
                        lea              rdx, [rip + .Lmatch_defer_α_466_43]; jmp   rax
.Lmatch_defer_α_466_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_466_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_466_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_466_44:
.Lgcsite_main_47:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_466_46
.Lmatch_defer_α_466_45:
.Lgcsite_main_46:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_466_47
.Lmatch_defer_α_466_42:
.Lgcsite_main_45:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_466_46
.Lmatch_defer_α_466_43:
.Lgcsite_main_44:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_466_47
.Lmatch_defer_α_466_141:
                        lea              rcx, [rip + .Lmatch_defer_α_466_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_466_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_466_142]
                        lea              rdx, [rip + .Lmatch_defer_α_466_143]
                                                                              jmp   rax
.Lmatch_defer_α_466_142:
.Lgcsite_main_43:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_466_46
.Lmatch_defer_α_466_143:
.Lgcsite_main_42:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_466_47
.Lmatch_defer_α_466_46: mov              rcx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
.Lgcsite_main_41:       mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_466_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_466_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_40:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_466_2
.Lmatch_defer_α_466_47: mov              rsi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
.Lgcsite_main_39:       mov              r8,  qword ptr [rip + rtccb+40]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_466_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_466_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_38:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_466_2
.Lmatch_defer_α_466_40: add              rsp, 32
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_466_48
.Lmatch_defer_α_466_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_main_37:       add              rsp, 32
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
.Lgcsite_main_36:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_466_49: cmp              r14d, -2;                            je    .Lmatch_begin_ω_308_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_308_af
                        test             eax, eax;                            js    n308_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_466_6]
                        push             rcx
                        push             rax;                                 jmp   n310_match_end_α
.Lmatch_defer_α_466_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n308_match_begin_β
n309_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_466_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_466_12
                                                                              jmp   rax
.Lmatch_defer_β_466_12:                                                       jmp   qword ptr [rsp]
                        .size            n309_match_defer_bx, .-n309_match_defer_bx
                        .type            n310_match_end_bx, @function
n310_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_match_end_α:       mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_308_af
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
.Lgcsite_main_65:       push             rax
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
.Lgcsite_main_64:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:
.Lmatch_end_α_468_1:    cmp              rax, 1;                              jbe   .Lmatch_end_α_468_2
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
                        cmp              rcx, 2;                              je    .Lmatch_end_α_468_20
                        cmp              rcx, 1;                              je    .Lmatch_end_α_468_120
                        lea              rcx, [rip + .Lmatch_end_α_468_22]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_468_21]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_468_21]
                        lea              rdx, [rip + .Lmatch_end_α_468_22];   jmp   rax
.Lmatch_end_α_468_20:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_468_23]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_468_24]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_end_α_468_23:
.Lgcsite_main_63:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_468_8
.Lmatch_end_α_468_24:
.Lgcsite_main_62:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_468_9
.Lmatch_end_α_468_21:
.Lgcsite_main_61:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_468_8
.Lmatch_end_α_468_22:
.Lgcsite_main_60:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_468_9
.Lmatch_end_α_468_120:  lea              rcx, [rip + .Lmatch_end_α_468_122]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_468_121]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_468_121]
                        lea              rdx, [rip + .Lmatch_end_α_468_122];  jmp   rax
.Lmatch_end_α_468_121:
.Lgcsite_main_59:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_468_8
.Lmatch_end_α_468_122:
.Lgcsite_main_58:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_468_9
.Lmatch_end_α_468_8:    mov              rdx, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_land_γ@PLT
.Lgcsite_main_57:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_56:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_468_1
.Lmatch_end_α_468_9:    mov              rdi, rsp
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_land_ω@PLT
.Lgcsite_main_55:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_54:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_468_1
.Lmatch_end_α_468_2:    add              rsp, 112
                        mov              qword ptr [rsp + 0], rax
                        mov              rdi, qword ptr [rbp + -16]           # outer_Σ
                        mov              rsi, qword ptr [rbp + -32]           # outer_Δ
                        lea              rdx, [rbp + -88]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
.Lgcsite_main_53:       mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              rax, qword ptr [rsp + 0]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        test             rax, rax;                            je    .Lmatch_end_α_468_13
                                                                              jmp   .Lmatch_begin_ω_308_af
.Lmatch_end_α_468_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp
.Lgcsite_main_52:                                                             jmp   n311_statement_end_α
                        .size            n310_match_end_bx, .-n310_match_end_bx
                        .type            n311_statement_end_bx, @function
n311_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_statement_end_α:   add              rsp, 32;                             jmp   n313_statement_begin_α
                        .size            n311_statement_end_bx, .-n311_statement_end_bx
                        .type            n312_setexit_test_bx, @function
n312_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_471_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_471_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_471_61:
.Lsetexit_test_α_471_1:                                                       jmp   n321_statement_begin_α
                        .size            n312_setexit_test_bx, .-n312_setexit_test_bx
                        .type            n313_statement_begin_bx, @function
n313_statement_begin_bx:
.Lstatement_begin_α_472_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_472_stno
                        .long            16
                        .long            40
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 OUTPUT          =  'matched bytes=' SIZE(src)   :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 40 0
n313_statement_begin_α:                                                       jmp   n314_lit_string_α
n313_statement_begin_β:                                                       jmp   n320_setexit_test_α
                        .size            n313_statement_begin_bx, .-n313_statement_begin_bx
                        .type            n314_lit_string_bx, @function
n314_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_474_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n315_var_α
.Llit_string_α_474_0:   .quad            .Llit_string_α_474_0_s
.Llit_string_α_474_0_s: .string          "matched bytes="
                        .size            n314_lit_string_bx, .-n314_lit_string_bx
                        .type            n315_var_bx, @function
n315_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # src
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n316_call_α
n315_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n313_statement_begin_β
                        .size            n315_var_bx, .-n315_var_bx
                        .type            n316_call_bx, @function
n316_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd477:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd477]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
.Lgcsite_main_66:       push             rax
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
.Lgcsite_main_67:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_476_240
                        add              rsp, 16;                             jmp   n315_var_β
.Lcall_α_476_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n317_binop_α
n316_call_β:            add              rsp, 16;                             jmp   n315_var_β
                        .size            n316_call_bx, .-n316_call_bx
                        .type            n317_binop_bx, @function
n317_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             sno_concat_d@PLT
.Lgcsite_main_69:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:69
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
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_478_240
                        add              rsp, 32;                             jmp   n315_var_β
.Lbinop_α_478_240:                                                            jmp   n318_assign_α
n317_binop_β:           add              rsp, 32;                             jmp   n315_var_β
                        .size            n317_binop_bx, .-n317_binop_bx
                        .type            n318_assign_bx, @function
n318_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_479_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
.Lgcsite_main_71:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_70:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n319_statement_end_α
.Lassign_α_479_0:       .quad            .Lassign_α_479_0_s
.Lassign_α_479_0_s:     .string          "OUTPUT"
                        .size            n318_assign_bx, .-n318_assign_bx
                        .type            n319_statement_end_bx, @function
n319_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_statement_end_α:   add              rsp, 64;                             jmp   main_γ
                        .size            n319_statement_end_bx, .-n319_statement_end_bx
                        .type            n320_setexit_test_bx, @function
n320_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_482_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_482_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_482_61:
.Lsetexit_test_α_482_1:                                                       jmp   main_γ
                        .size            n320_setexit_test_bx, .-n320_setexit_test_bx
                        .type            n321_statement_begin_bx, @function
n321_statement_begin_bx:
.Lstatement_begin_α_483_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_483_stno
                        .long            17
                        .long            41
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# error           OUTPUT          =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 41 0
n321_statement_begin_α:                                                       jmp   n322_lit_string_α
n321_statement_begin_β:                                                       jmp   n325_setexit_test_α
                        .size            n321_statement_begin_bx, .-n321_statement_begin_bx
                        .type            n322_lit_string_bx, @function
n322_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_485_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n323_assign_α
.Llit_string_α_485_0:   .quad            .Llit_string_α_485_0_s
.Llit_string_α_485_0_s: .string          "Pattern match failed"
                        .size            n322_lit_string_bx, .-n322_lit_string_bx
                        .type            n323_assign_bx, @function
n323_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_486_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
.Lgcsite_main_73:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_72:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n324_statement_end_α
.Lassign_α_486_0:       .quad            .Lassign_α_486_0_s
.Lassign_α_486_0_s:     .string          "OUTPUT"
                        .size            n323_assign_bx, .-n323_assign_bx
                        .type            n324_statement_end_bx, @function
n324_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_statement_end_α:   add              rsp, 16;                             jmp   main_γ
                        .size            n324_statement_end_bx, .-n324_statement_end_bx
                        .type            n325_setexit_test_bx, @function
n325_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_489_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_489_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_489_61:
.Lsetexit_test_α_489_1:                                                       jmp   main_γ
                        .size            n325_setexit_test_bx, .-n325_setexit_test_bx
                        .type            n326_goto_bx, @function
n326_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_goto_α:                                                                  jmp   n321_statement_begin_α
n326_goto_β:                                                                  jmp   main_ω
                        .size            n326_goto_bx, .-n326_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        call             sno_setexit_fire_on_end@PLT
.Lgcsite_main_76:       push             rax                                  # gc_poll bb_glue_flat.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_75:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      xor              edi, edi
                        call             exit@PLT
.Lgcsite_main_74:
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
.Lgcsite_main_77:
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            8041525235034
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            1856
                        .quad            5
                        .quad            1724034232352768
                        .quad            8800387991072
                        .quad            17600775980584
                        .quad            79169132168760
                        .quad            211106232534656
.Lgcmap_main_s:         .string          "main"
.Lgcsites_main_11:      .quad            78
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
                        .quad            137438953473
                        .quad            .Lgcsite_main_5
                        .quad            137438953473
                        .quad            .Lgcsite_main_6
                        .quad            206158430209
                        .quad            .Lgcsite_main_7
                        .quad            343597383681
                        .quad            .Lgcsite_main_8
                        .quad            206158430209
                        .quad            .Lgcsite_main_9
                        .quad            343597383681
                        .quad            .Lgcsite_main_10
                        .quad            206158430209
                        .quad            .Lgcsite_main_11
                        .quad            343597383681
                        .quad            .Lgcsite_main_12
                        .quad            618475290625
                        .quad            .Lgcsite_main_13
                        .quad            755914244097
                        .quad            .Lgcsite_main_14
                        .quad            206158430209
                        .quad            .Lgcsite_main_15
                        .quad            343597383681
                        .quad            .Lgcsite_main_16
                        .quad            618475290625
                        .quad            .Lgcsite_main_17
                        .quad            755914244097
                        .quad            .Lgcsite_main_18
                        .quad            755914244097
                        .quad            .Lgcsite_main_19
                        .quad            893353197569
                        .quad            .Lgcsite_main_20
                        .quad            481036337153
                        .quad            .Lgcsite_main_21
                        .quad            618475290625
                        .quad            .Lgcsite_main_22
                        .quad            755914244097
                        .quad            .Lgcsite_main_23
                        .quad            893353197569
                        .quad            .Lgcsite_main_24
                        .quad            481036337153
                        .quad            .Lgcsite_main_25
                        .quad            618475290625
                        .quad            .Lgcsite_main_26
                        .quad            343597383681
                        .quad            .Lgcsite_main_27
                        .quad            481036337153
                        .quad            .Lgcsite_main_28
                        .quad            481036337153
                        .quad            .Lgcsite_main_29
                        .quad            618475290625
                        .quad            .Lgcsite_main_30
                        .quad            68719476737
                        .quad            .Lgcsite_main_31
                        .quad            68719476737
                        .quad            .Lgcsite_main_32
                        .quad            137439346945
                        .quad            .Lgcsite_main_33
                        .quad            137439346945
                        .quad            .Lgcsite_main_34
                        .quad            137439346945
                        .quad            .Lgcsite_main_35
                        .quad            137438953476
                        .quad            .Lgcsite_main_36
                        .quad            137439346945
                        .quad            .Lgcsite_main_37
                        .quad            137439346945
                        .quad            .Lgcsite_main_38
                        .quad            137439346945
                        .quad            .Lgcsite_main_39
                        .quad            137439346945
                        .quad            .Lgcsite_main_40
                        .quad            137439346945
                        .quad            .Lgcsite_main_41
                        .quad            137439346945
                        .quad            .Lgcsite_main_42
                        .quad            137439346946
                        .quad            .Lgcsite_main_43
                        .quad            137439346946
                        .quad            .Lgcsite_main_44
                        .quad            137439346946
                        .quad            .Lgcsite_main_45
                        .quad            137439346946
                        .quad            .Lgcsite_main_46
                        .quad            137439346946
                        .quad            .Lgcsite_main_47
                        .quad            137439346946
                        .quad            .Lgcsite_main_48
                        .quad            137439346945
                        .quad            .Lgcsite_main_49
                        .quad            137439346945
                        .quad            .Lgcsite_main_50
                        .quad            137439346945
                        .quad            .Lgcsite_main_51
                        .quad            137439346945
                        .quad            .Lgcsite_main_52
                        .quad            137438953477
                        .quad            .Lgcsite_main_53
                        .quad            137439346945
                        .quad            .Lgcsite_main_54
                        .quad            137439346945
                        .quad            .Lgcsite_main_55
                        .quad            137439346945
                        .quad            .Lgcsite_main_56
                        .quad            137439346945
                        .quad            .Lgcsite_main_57
                        .quad            137439346945
                        .quad            .Lgcsite_main_58
                        .quad            137439346946
                        .quad            .Lgcsite_main_59
                        .quad            137439346946
                        .quad            .Lgcsite_main_60
                        .quad            137439346946
                        .quad            .Lgcsite_main_61
                        .quad            137439346946
                        .quad            .Lgcsite_main_62
                        .quad            137439346946
                        .quad            .Lgcsite_main_63
                        .quad            137439346946
                        .quad            .Lgcsite_main_64
                        .quad            137439346945
                        .quad            .Lgcsite_main_65
                        .quad            137439346945
                        .quad            .Lgcsite_main_66
                        .quad            274877906945
                        .quad            .Lgcsite_main_67
                        .quad            412316860417
                        .quad            .Lgcsite_main_68
                        .quad            274877906945
                        .quad            .Lgcsite_main_69
                        .quad            274877906945
                        .quad            .Lgcsite_main_70
                        .quad            343597383681
                        .quad            .Lgcsite_main_71
                        .quad            274877906945
                        .quad            .Lgcsite_main_72
                        .quad            137438953473
                        .quad            .Lgcsite_main_73
                        .quad            68719476737
                        .quad            .Lgcsite_main_74
                        .quad            1
                        .quad            .Lgcsite_main_75
                        .quad            1
                        .quad            .Lgcsite_main_76
                        .quad            1
                        .quad            .Lgcsite_main_77
                        .quad            1
module_init:
                        sub              rsp, 8
                        add              rsp, 8
                        ret
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            11
                        .quad            .Lgcmap_.LTp0
                        .quad            .Lgcmap_.LTp1
                        .quad            .Lgcmap_.LTp3
                        .quad            .Lgcmap_.LTp4
                        .quad            .Lgcmap_.LTp5
                        .quad            .Lgcmap_.LTp6
                        .quad            .Lgcmap_.LTp7
                        .quad            .Lgcmap_.LTp8
                        .quad            .Lgcmap_.LTp9
                        .quad            .Lgcmap_.LTp10
                        .quad            .Lgcmap_main
                        .align           8
__gc_frame_sites:       .quad            11
                        .quad            .Lgcsites_.LTp0_0
                        .quad            .Lgcsites_.LTp1_1
                        .quad            .Lgcsites_.LTp3_3
                        .quad            .Lgcsites_.LTp4_4
                        .quad            .Lgcsites_.LTp5_5
                        .quad            .Lgcsites_.LTp6_6
                        .quad            .Lgcsites_.LTp7_7
                        .quad            .Lgcsites_.LTp8_8
                        .quad            .Lgcsites_.LTp9_9
                        .quad            .Lgcsites_.LTp10_10
                        .quad            .Lgcsites_main_11
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,1,1,0,0,1,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
.C1:                    .byte            0,0,0,0,0,0,0,0,0,1,1,0,0,1,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
.C2:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0
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
.C3:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0
                        .byte            0,0,1,0,0,0,1,0,0,0,0,0,0,0,1,0
                        .byte            0,0,1,0,1,1,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C4:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C5:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0
                        .byte            0,0,1,0,0,0,1,0,0,0,0,0,0,0,1,0
                        .byte            0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C6:                    .byte            0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0
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
.C7:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0
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
.C8:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0
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
.C9:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
.C10:                   .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
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
.C11:                   .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C12:                   .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0
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
                        .section         .data
                        .align           8
__alpha_cellp_tab:      .quad            0
                        .section         .rodata
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
